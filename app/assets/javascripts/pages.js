var opcsApp = angular.module('opcsApp', []);

opcsApp.controller('FetchCtrl', function FetchCtrl($scope, $http, $templateCache) {

    $scope.searchText = function() {
      $http({method: 'GET', url: 'codes.json?search=' + $scope.search, cache: $templateCache}).
        success(function(data, status) {
            $scope.status = status;
            $scope.data = data;
            $scope.codes = data;
        }).
        error(function(data, status) {
            $scope.data = data || "Request failed";
            $scope.status = status;
        });
    }
});
