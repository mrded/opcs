angular.module('starter.controllers', [])

.controller('CodesCtrl', function($scope, Codes) {
  $scope.search = function(searchText) {
    Codes.search(searchText).then(function(results){
      $scope.codes = results;
    });
  };
})

.controller('CodeDetailCtrl', function($scope, $stateParams, Codes) {
   Codes.get($stateParams.codeId).then(function(code){
    $scope.code = code;
   });
})

.controller('AboutCtrl', function($scope) {});
