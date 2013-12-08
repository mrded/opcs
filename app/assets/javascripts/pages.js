var opcsApp = angular.module('opcsApp', []);

opcsApp.controller("FetchCtrl", [
  '$scope', '$http', '$location', function($scope, $http) {
    var btn = Ladda.create(document.querySelector('button.ladda-button'));

    $scope.searchText = function() {
      btn.start();

      $http.get('codes.json?search=' + $scope.search).then(function(result) {
        btn.stop();
        $scope.codes = result.data;
      });
    }

    // Init.
  }]
);
