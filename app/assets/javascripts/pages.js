var opcsApp = angular.module('opcsApp', []);

opcsApp.controller('FetchCtrl', function FetchCtrl($scope, $http) {
  $scope.searchText = function() {
    // If enter has been pressed.
    if (event.keyCode == 13 && $scope.search){
      $http.get('codes.json?search=' + $scope.search).then(function(result){
        $scope.codes = result.data;
      });
    }
  }
});
