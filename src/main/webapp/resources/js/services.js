angular.module('services', [])
  .factory('TvShowFactory', ['$http', function($http){
    return{
      get: function(callback){
          $http.get('http://localhost:8080/tvshows/showList.json').success(function(data) {
          // prepare data here
          callback(data);
        });
      }
    };
  }]);