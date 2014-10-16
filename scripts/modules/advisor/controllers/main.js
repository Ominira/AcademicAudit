(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: Academic Advisor module
	*
	* Description: This controller is responsible for the home page view
	*/
	angular.module('advisorApp')
		//---
		.controller(
			'HomeViewController',
			['$scope','AppDataFactory','$route','$rootScope','profile',
				function ($scope, AppDataFactory, $route, $rootScope, profile){
					$scope.title = 'Home View';

					//console.log(profile);
					$scope.profile = profile[0];

					var id = $scope.profile.academicId;
					var level = $scope.profile.academicLevel;

					AppDataFactory.loadNumberOfRequests(level, id).then(function(res){
						//console.log(res);
						$scope.numOfRequests = _.parseInt(res);
					});

					$scope.goToReview = function(){
						var path= 'review/'+level+'/'+id;

						$rootScope.goTo(path);
					}

				}
			]
		)

})(window, window.angular)