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
  }])

   .factory('EpisodesFactory', ['$http', function($http){
    return{
      get: function(callback){
          $http.get('http://localhost:8080/tvshows/Game-of-Thrones/episodes1.json').success(function(data) {
          // prepare data here
          callback(data);
        });
      }
    };
  }])
  .factory('RoomFactory',['$http', function($http){
	    return {
	        get: function(p1,callback){
	        	$http.get('http://localhost:8080/tvshows/'+p1+'/episodes1.json').success(function(data) {
	                 // prepare data here
	                 callback(data);
	                 return data;
	               });	
	        	
	        }
	      };
	    }]).
  factory('Reddit', function($http) {
	  var Reddit = function() {
		    this.items = [];
		    this.busy = false;
		    this.after = '';
		  };

		  Reddit.prototype.nextPage = function() {
		    if (this.busy) return;
		    this.busy = true;

		    var url = "http://api.reddit.com/hot?after=" + this.after + "&jsonp=JSON_CALLBACK";
		    $http.jsonp(url).success(function(data) {
		      var items = data.data.children;
		      for (var i = 0; i < items.length; i++) {
		        this.items.push(items[i].data);
		      }
		      this.after = "t3_" + this.items[this.items.length - 1].id;
		      this.busy = false;
		    }.bind(this));
		  };

		  return Reddit;
		});;
