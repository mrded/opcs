angular.module('starter.services', [])

/**
 * A simple example service that returns some data.
 */
.factory('Codes', function($http, $q) {
  return {
    get: function(codeId) {
      var deferred = $q.defer();

      $http.get('codes/' + codeId).then(function(result) {
        return deferred.resolve(result.data);
      });

      return deferred.promise;
    },
    search: function(searchText) {
      var deferred = $q.defer();

      $http.get('codes?search=' + searchText).then(function(result) {
        return deferred.resolve(result.data);
      });

      return deferred.promise;
    }
  }
});
