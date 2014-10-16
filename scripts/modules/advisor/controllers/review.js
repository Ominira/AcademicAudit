(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: Academic Advisor module
	*
	* Description: This controller is responsible for the audit request review view
	*/
	angular.module('advisorApp')
		//---
		.controller(
			'ReviewsViewController',
			['$scope','AppDataFactory','$routeParams','$rootScope','AppServiceProvider','AppConfigStatus','AppConfigEvents',
				function ($scope, AppDataFactory, $routeParams, $rootScope, AppServiceProvider, AppConfigStatus, AppConfigEvents){
					$scope.title = 'Pending Audit Requests Review';

					//var token = $rootScope.token;
					$scope.requests = {};
					//$scope.profileData = [];

					var init = function(){
						var level = ($routeParams.level)? $routeParams.level : null;
						var id = ($routeParams.id)? $routeParams.id : 0;
						console.log(level);
						console.log(id);
						if(level != null && id != 0){
							AppDataFactory.loadAuditRequests(level, id).then(function(res){
								//console.log(res);
								$scope.requests = res;
								//dataset = $scope.requests;
							})
						}
					}

					init();

					$scope.doReview = function(index){

						var token = $scope.requests[index].studId;

						AppDataFactory.loadStudentData(token).then(function(res){
							$scope.profileData = res[0];

							AppDataFactory.loadResultsBySemester(token).then(function(res){
								$scope.semResults = res;
					

								AppDataFactory.loadResultsByCourse(token).then(function(res){
									$scope.courseResults = res;
			

									AppDataFactory.loadCourseTransferred(token).then(function(res){
				
										if(_.isEmpty(res)){
											$scope.noCt = true;
											$scope.showCt = false;
										}
										else{
											$scope.CtData = res;
											$scope.showCt = true;
											$scope.noCt = false;
										}

										AppDataFactory.loadRemarkedCourses(token).then(function(res){
											if(!_.isEmpty(res)){
												$scope.showCtRemark = true;
												$scope.CtRemarkData = res;
											}
											

											AppDataFactory.loadAuditData(token).then(function(res){
												$scope.audit = res[0];
											})
										})
									})
								})
							})
						})
					}

					$scope.alert = {
						isApprovedFail: false,
						isApprovedOK: false,
						isRejectFail: false,
						isRejectOK: false
					}

					$scope.doApproval = function(){
						var rawComments = $scope.ApprovalComments;
						var rawStudId = $scope.profileData.id;
						var rawAcademicLevel = $routeParams.level;
						var rawStatus = 'Approved';

						//console.log(rawStudId);

						var statusPackage = {
							studId: rawStudId,
							status: rawStatus,
							level: rawAcademicLevel,
							comments: rawComments
						}

						if(!_.isEmpty(statusPackage)){
							AppServiceProvider.UpdateAuditStatus(statusPackage);
						}

						$rootScope.$on(AppConfigEvents.STATUS_UPDATED,function(e,res){
							var status = _.parseInt(res);

							switch(status){
								case AppConfigStatus.GLOBAL.FAIL:
									$scope.alert.isApprovedFail = true;
									break;
								case AppConfigStatus.GLOBAL.OK:
									$scope.alert.isApprovedOK = true;
									break;
								default:
									$scope.alert.isApprovedFail = true;
							}
						});

						$rootScope.$on(AppConfigEvents.STATUS_UPDATE_FAIL,function(e){
							$scope.alert.isApprovedFail= true;
						})
					}


					$scope.doRejection = function(){
						var rawComments = $scope.RejectionComments;
						var rawStudId = $scope.profileData.id;
						var rawAcademicLevel = $routeParams.level;
						var rawStatus = 'Rejected';

						var statusPackage = {
							studId: rawStudId,
							status: rawStatus,
							level: rawAcademicLevel,
							comments: rawComments
						}

						if(!_.isEmpty(statusPackage)){
							AppServiceProvider.UpdateAuditStatus(statusPackage);
						}

						$rootScope.$on(AppConfigEvents.STATUS_UPDATED,function(e,res){
							var status = _.parseInt(res);

							switch(status){
								case AppConfigStatus.GLOBAL.FAIL:
									$scope.alert.isRejectFail = true;
									break;
								case AppConfigStatus.GLOBAL.OK:
									$scope.alert.isRejectOK = true;
									break;
								default:
									$scope.alert.isRejectFail = true;
							}
						});

						$rootScope.$on(AppConfigEvents.STATUS_UPDATE_FAIL,function(e){
							$scope.alert.isRejectFail = true;
						})
					}

					$scope.doPrint = function(){

						var id = $scope.profileData.id;

						var printDoc = new jsPDF('p','in','letter');

						var source1 = $('#report1').get(0);
						var	source2 = $('#report2').get(0);
						var	source3 = $('#report3').get(0);
						var	source4 = $('#report4').get(0);


						printDoc.fromHTML(source1,25,25,{
							'width': 500,
							'elementHandlers': {}
						});
						printDoc.addPage();
						printDoc.fromHTML(source2,25,25,{
							'width': 500,
							'elementHandlers': {}
						});
						printDoc.addPage();
						printDoc.fromHTML(source3,25,25,{
							'width': 500,
							'elementHandlers': {}
						});
						printDoc.addPage();
						printDoc.fromHTML(source4,25,25,{
							'width': 500,
							'elementHandlers': {}
						});
						//printDoc.autoPrint();
						printDoc.output('save','AuditReport-'+id+'.pdf');
						printDoc.output("dataurlnewwindow");
					}
				}
			]
		)

})(window, window.angular)