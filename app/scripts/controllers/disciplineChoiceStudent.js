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

  $scope.setTab = function(newTab) {
    $scope.tab = newTab;
  };

  $scope.isSet = function(tabNum) {
    return $scope.tab === tabNum;
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
    var url = 'Account/student/group';
    var method = 'GET';

    api.execute(method, url)
      .then(function(response) {
        $scope.info = response[0];
        $scope.info.currentStudyYear = getCurrStudyYear(
          +response[0].yearIntake,
          +response[0].studyCourse
        );
        $scope.tab = +response[0].studyCourse;
      })
      .catch(function(response) {
        $scope.errorInfo = api.errorHandler(response);
        $scope.errorInfo += 'Не вдалося завантажити інформацію про студента.';
      })
  }

  function loadDisciplines() {
    var url = 'SelectiveDiscipline/semesters/disciplines';
    var method = 'GET';

    api.execute(method, url)
      .then(function(response) {
      $scope.firstCourse = [];
      $scope.secondCourse = [];
      $scope.thirdCourse = [];
      $scope.fourthCourse = [];
      var i, j, res, resBlocks;
      for (i = 0; i < response.length; i++) {
        res = response[i];
        res['payload'] = {};
        res['block'] = [];
        for (j = 0; j < res.blocks.length; j++) {
          resBlocks = res.blocks[j];
          resBlocks['selectedDiscipline'] = {
            id: null,
            name: null
          };
          resBlocks['isSelected'] = false;
        }
        switch (res.course) {
          case 1: $scope.firstCourse.push(res); break;
          case 2: $scope.secondCourse.push(res); break;
          case 3: $scope.thirdCourse.push(res); break;
          case 4: $scope.fourthCourse.push(res); break;
        }
      }
    })
      .catch(function(response) {
        $scope.errorDisciplines = api.errorHandler(response);
        $scope.errorDisciplines += 'Не вдалося завантажити дисципліни.';
      })
  }

  loadInfo();
  loadDisciplines();
}
