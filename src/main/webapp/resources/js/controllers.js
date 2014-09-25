angular.module('controllers', [])
.controller('TvShowsCtrl',
		[ '$scope', 'TvShowFactory', function($scope, TvShowFactory) {
			$scope.tvshows = [];
			
			TvShowFactory.get(function(data) {
				$scope.tvshows = data;
			});

			$scope.orderProp = 'classification';

			$scope.loadMore = function() {
				TvShowFactory.get(function(data) {
					$scope.tvshows = $scope.tvshows.concat(data);
				});
			};
} ]).controller('ClientCtrl', ['$scope', function ($scope) {
   
	$scope.selectedCompany = [];
	
    $scope.companyList = [{
        id: 1,
        name: 'HBO'
    }, {
        id: 2,
        name: 'Starz'
    }, {
        id: 3,
        name: 'BBC'
    }];

    $scope.clients = [{
        name: 'Game of Thrones',
        designation: 'Action',
        company: {
            id: 1,
            name: 'HBO'
        }
    }, {
        name: 'The Wire',
        designation: 'Crime/drug',
        company: {
            id: 3,
            name: 'HBO'
        }
    }, {
        name: 'Vikinks',
        designation: 'Action',
        company: {
            id: 2,
            name: 'BBC'
        }
    }, {
        name: 'Sopranos',
        designation: 'Crime',
        company: {
            id: 1,
            name: 'HBO'
        }
    }, {
        name: 'Spartacus',
        designation: 'Romans',
        company: {
            id: 3,
            name: 'Starz'
        }
    }, {
        name: 'Power',
        designation: 'Crime',
        company: {
            id: 1,
            name: 'Starz'
        }
    }];

    $scope.setSelectedClient = function () {
        var id = this.company.id;
        if (_.contains($scope.selectedCompany, id)) {
            $scope.selectedCompany = _.without($scope.selectedCompany, id);
        } else {
            $scope.selectedCompany.push(id);
        }
        return false;
    };

    $scope.isChecked = function (id) {
        if (_.contains($scope.selectedCompany, id)) {
            return 'icon-ok pull-right';
        }
        return false;
    };

    $scope.checkAll = function () {
        $scope.selectedCompany = _.pluck($scope.companyList, 'id');
    };
    
    
}]).controller("DefaultCtrl",function ($scope) {
	
	$scope.names = ["john", "bill", "charlie", "robert", "alban", "oscar", "marie", "celine", "brad", "drew", "rebecca", "michel", "francis", "jean", "paul", "pierre", "nicolas", "alfred", "gerard", "louis", "albert", "edouard", "benoit", "guillaume", "nicolas", "joseph"];

}).controller("TestCtrl",function ($scope) {

    $scope.result1 = '';
    $scope.options1 = null;
    $scope.details1 = '';



    $scope.result2 = '';
    $scope.options2 = {
      country: 'ca',
      types: '(cities)'
    };    $scope.details2 = '';
    
    
    
    $scope.result3 = '';
    $scope.options3 = {
      country: 'gb',
      types: 'establishment'
    };
    $scope.details3 = '';
  }).
controller('TvShowsDetailsCtrl', [ '$scope','EpisodesFactory', 'RoomFactory' ,function($scope,EpisodesFactory,RoomFactory) {
	
	$scope.count = 3;
	$scope.episodes = [ {
		"name" : "pasilla",
		"ep" : "1",
		"classification" : "9.4"
	}, {
		"name" : "jalapeno",
		"ep" : "2",
		"classification" : "8.4"
	}, {
		"name" : "habanero",
		"ep" : "3",
		"classification" : "9.7"
	} ];

	$scope.count = 4;
	
	$scope.episodesAPI = [];
	
	$scope.episodesAPI = EpisodesFactory.get(function(data) {
		$scope.episodesAPI = data;
		$('#mydiv').hide(); 
	});
	
	$scope.addEps = function() {
		
		$('#mydiv').show(); 
		
		$scope.more_episodes = [ {
			"name" : "episode " + ($scope.count),
			"ep" : $scope.count,
			"classification" : 9.4
		}, {
			"name" : "episode " + ($scope.count + 1),
			"ep" : $scope.count + 1,
			"classification" : 8.4
		}, {
			"name" : "episode " + ($scope.count + 2),
			"ep" : $scope.count + 2,
			"classification" : 9.7
		} ];
		
		
		RoomFactory.get("the-wire",function(data) {
			$scope.episodesAPI = $scope.episodesAPI.concat(data);
			$('#mydiv').hide(); 
		});
		
	
		
		$scope.count = $scope.count + 3;

		$scope.episodes = $scope.episodes.concat($scope.more_episodes);
		
		

	};
}])

.controller('RedditController', function($scope, Reddit) {
  $scope.reddit = new Reddit();
});