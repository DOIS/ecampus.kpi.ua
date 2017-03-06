'use strict';

/**
 * @ngdoc function
 * @name ecampusApp.controller:DisciplinesChoiceCtrl
 * @description
 * # DisciplinesChoiceCtrl
 * Controller of the ecampusApp
 */
angular
  .module('ecampusApp')
  .controller('DisciplineChoiceStudentCtrl', DisciplineChoiceStudentCtrl);

DisciplineChoiceStudentCtrl.$inject = ['$scope', 'api'];

function DisciplineChoiceStudentCtrl($scope, api) {
  $scope.selectedForInfo = {'cDisciplineBlockYear8Id': null};
  $scope.errorMessage = '';
  $scope.hideInfo = false;
  $scope.errorMessageDisc = '';
  $scope.hideInfoDisc = false;

  $scope.setTab = function(newTab) {
    $scope.tab = newTab;
  };

  $scope.isSet = function(tabNum) {
    return $scope.tab === tabNum;
  };

  $scope.translateStatus = function(englishStatus) {
    switch (englishStatus) {
      case 'not available': return 'вибір не доступний';
      case 'available': return 'вибір доступний';
      case 'done': return 'вибір здійснено';
    }
  };

  $scope.getStudyCoursesWithYears = function(yearIntake) {
    return {
      firstCourse: yearIntake + '-' + (1 + yearIntake),
      secondCourse: (1 + yearIntake) + '-' + (2 + yearIntake),
      thirdCourse: (2 + yearIntake) + '-' + (3 + yearIntake),
      fourthCourse: (3 + yearIntake) + '-' + (4 + yearIntake),
      fifthCourse: (4 + yearIntake) + '-' + (5 + yearIntake),
      sixthCourse: (5 + yearIntake) + '-' + (6 + yearIntake)
    };
  };

  function getCurrStudyYear(yearIntake, studyCourse) {
    var startYear = yearIntake + studyCourse - 1;
    var endYear = yearIntake + studyCourse;
    return startYear + '-' + endYear;
  }

  function loadInfo() {
    var url = '/Account/student/group';

    api.execute('GET', url)
      .then(function(response) {
        $scope.info = response[0];
        $scope.info.currentStudyYear = getCurrStudyYear(
          +response[0].yearIntake,
          +response[0].studyCourse
        );
        $scope.tab = +response[0].studyCourse;
      });
  }

  function loadDisciplines() {
    var url = '/SelectiveDiscipline/semesters/disciplines';

    api.execute('GET', url).then(function(response) {
      $scope.firstCourse = [];
      $scope.secondCourse = [];
      $scope.thirdCourse = [];
      $scope.fourthCourse = [];
      var i, j, res, resBlocks;
      for (i = 0; i < response.length; i++) {
        res = response[i];
        for (j = 0; j < res.blocks.length; j++) {
          resBlocks = res.blocks[j];
          resBlocks['selectedDiscipline'] = {
            id: null,
            name: null
          };
        }
        switch (res.course) {
          case 1: $scope.firstCourse.push(res); break;
          case 2: $scope.secondCourse.push(res); break;
          case 3: $scope.thirdCourse.push(res); break;
          case 4: $scope.fourthCourse.push(res); break;
        }
      }
    });
  }

  $scope.isDisciplinesSelected = function(object) {
    return Object.keys(object).some(function(key) {
      return object[key];
    });
  };

  $scope.toggleDisciplineDescription = function(id) {
    $scope.selectedForInfo.cDisciplineBlockYear8Id = (
      $scope.selectedForInfo.cDisciplineBlockYear8Id === null ||
      $scope.selectedForInfo.cDisciplineBlockYear8Id !== id ? id : null
    );
  };

  $scope.countSelectedDiscipline = function(response) {
    var i, res, result = 0;
    for (i = 0; i < response.blocks.length; i++) {
        res = response.blocks[i].selectedDiscipline;
        if (res.id !== null) {
          result++;
        }
      }
    return result;
  };

  $scope.filterChoiceFromAllDisciplines = function(response, semester, arrayValues) {
    return response.map(function(responseElement) {
      if (responseElement.semester === semester) {
        return Object.assign({}, responseElement, {
          blocks: responseElement.blocks.map(function(blocksElement) {
            return Object.assign({}, blocksElement, {
              blockDisc: blocksElement.blockDisc.filter(function(blockDiscElement) {
                for (var i = 0; i < arrayValues.length; i++) {
                  var value = arrayValues[i];
                  if (blockDiscElement.cDisciplineBlockYear8Id === value.id) {
                    return blockDiscElement;
                  }
                }
              })
            });
          })
        });
      }
    });
  };

  loadInfo();
  loadDisciplines();
}
