(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: studentApp module
	*
	* Description: This controller is responsible for the home page view
	*/
	angular.module('studentApp')
		//---
		.controller(
			'HomeViewController',
			['$scope','AppDataFactory','$route','$rootScope',
				function ($scope, AppDataFactory, $route, $rootScope){
					$scope.title = 'Student Profile';

					var token = $rootScope.token;

					AppDataFactory.loadStudentData(token).then(function(res){
						//console.log(res);
			          _.forEach(res, function(data){
							$scope.studId = data.id;
							$scope.studName = data.name;
							$scope.studIc = data.ic;
							$scope.studProgramId = data.degreeId;
							$scope.studProgram = data.degree;
							$scope.programDuration = _.parseInt(data.degreeDuration);
							$scope.programType = data.program;
							$scope.requiredUnits = data.totalDegreeUnits;
							$scope.unitsTaken = data.creditHoursTaken;
							$scope.studIntake = data.intake;
							$scope.studStatus = data.status
							$scope.studAdvisor = data.advisor;
							$scope.currentCgpa = data.currentCgpa;
						})
			        })

			        AppDataFactory.loadAuditData(token).then(function(res){
			        	if(_.isEmpty(res) || res == null || !angular.isDefined(res)){
			        		$scope.auditStatus = '<strong>Not Yet Applied</strong>';
			        		$scope.statusClass ='text-primary';
			        	}else{
			        		var status = _.pluck(res,'auditStatus');
			        		if(status == 'Pending'){
			        			$scope.auditStatus = '<strong>Audit Review Pending</strong>';
			        			$scope.statusClass = 'text-info';
			        		}
			        		if(status == 'Approved'){
			        			$scope.auditStatus = '<strong>Audit Approved</strong>';
			        			$scope.statusClass = 'text-success';
			        		}
			        		if(status == 'Rejected'){
			        			$scope.auditStatus = '<strong>Audit Rejected</strong>';
			        			$scope.statusClass = 'text-danger';
			        		}
			        	}
			        })
				}
			]
		)

})(window, window.angular)