angular.module('starter.controllers', [])

.controller('CodesCtrl', function($scope, Codes) {
  $scope.codes = Codes.all();
})

.controller('CodeDetailCtrl', function($scope, $stateParams, Codes) {
  $scope.code = Codes.get($stateParams.codeId);
})

.controller('AboutCtrl', function($scope) {});
