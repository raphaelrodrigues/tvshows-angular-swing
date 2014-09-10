angular.module('controllers', []).controller('TvShowsCtrl',
		[ '$scope', 'TvShowFactory', function($scope, TvShowFactory) {
			TvShowFactory.get(function(data) {
				$scope.tvshows = data;
			});

			$scope.orderProp = 'classification';
		} ]).

controller('TvShowsDetailsCtrl', [ '$scope', function($scope) {

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

	$scope.tvshow1 = 'HELLO';
	$scope.count = 4;

	$scope.addEps = function() {

		$scope.more_episodes = [ {
			"name" : "cenas " + ($scope.count),
			"ep" : $scope.count,
			"classification" : 9.4
		}, {
			"name" : "cenas " + ($scope.count + 1),
			"ep" : $scope.count + 1,
			"classification" : 8.4
		}, {
			"name" : "cenas " + ($scope.count + 2),
			"ep" : $scope.count + 2,
			"classification" : 9.7
		} ];

		$scope.count = $scope.count + 3;

		$scope.episodes = $scope.episodes.concat($scope.more_episodes);
		// alert("test :" + $scope.items + " " + $scope.count );

	};
} ]);