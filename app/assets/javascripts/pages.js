var opcsApp = angular.module('opcsApp', []);

opcsApp.controller('FetchCtrl', function FetchCtrl($scope, $http, $templateCache) {
    $scope.searchText = function() {
      // If enter has been pressed.
      if (event.keyCode == 13 && $scope.search){
        $http({method: 'GET', url: 'codes.json?search=' + $scope.search, cache: $templateCache}).
          success(function(data) {
            $scope.codes = data;
          }).
          error(function(data, status) {
            $scope.codes = [{
              name: status,
              description: "Request failed"
            }];
          });
      }
    }
});
