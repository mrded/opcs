var opcsApp = angular.module('opcsApp', []);

opcsApp.controller("FetchCtrl", [
  '$scope', '$http', '$location', function($scope, $http, $location) {

    $scope.searchText = function() {
      $http.get('codes.json?search=' + $scope.search).then(function(result){
        $scope.codes = result.data;
        $location.search({search: $scope.search || ''}).replace();
      });
    }

    // Init.
    $scope.search = $location.search().search
    $scope.searchText();
  }]
);
