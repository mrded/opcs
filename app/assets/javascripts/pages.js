var opcsApp = angular.module('opcsApp', []);

opcsApp.controller("FetchCtrl", [
  '$scope', '$http', '$location', function($scope, $http, $location) {

    var progressMode = function(status) {
      $scope.hideProgress = !status;
      $scope.hideButton = status;
    }

    $scope.searchText = function() {
      progressMode(true);

      $http.get('codes.json?search=' + $scope.search).then(function(result) {
        progressMode(false);

        $scope.codes = result.data;
        $location.search({search: $scope.search || ''}).replace();
      });
    }

    // Init.
    $scope.search = $location.search().search
    $scope.searchText();
  }]
);
