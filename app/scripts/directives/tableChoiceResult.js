'use strict';

angular
  .module('ecampusApp')
  .directive('tableChoiceResult', tableChoiceResult);

function tableChoiceResult() {
  return {
    restrict: 'A',
    templateUrl: 'views/directives/tableChoiceResult.html'
  };
}
