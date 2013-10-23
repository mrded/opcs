
function FetchCtrl($scope, $http, $templateCache) {
    $http({method: 'GET', url: 'codes.json', cache: $templateCache}).
        success(function(data, status) {
            $scope.status = status;
            $scope.data = data;
            $scope.codes = data;
        }).
        error(function(data, status) {
            $scope.data = data || "Request failed";
            $scope.status = status;
        });
};