(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: Head of Program Module
	*
	* Description: This controller is responsible for managing the users
	*/
	angular.module('hopApp')
		//---
		.controller(
			'UsersViewController',
			['$scope','AppDataFactory','$rootScope','AppServiceProvider','AppConfigStatus','AppConfigEvents',
				function ($scope, AppDataFactory, $rootScope, AppServiceProvider, AppConfigStatus, AppConfigEvents){
					
				}
			]
		)
})(window, window.angular)