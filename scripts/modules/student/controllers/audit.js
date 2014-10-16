(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: studentApp module
	*
	* Description: This controller is responsible for the audit application form view
	*/
	angular.module('studentApp')
		//---
		.controller(
			'AuditViewController',
			['$scope','$q','AppDataFactory','AppServiceProvider','AppConfigStatus','AppConfigEvents','$rootScope',
				function ($scope, $q, AppDataFactory, AppServiceProvider, AppConfigStatus, AppConfigEvents, $rootScope){
					$scope.title = 'Audit Review Application';
					$scope.alert ={
						isFailed: false,
						isSent: false,
						isApproved: false,
						isPending: false,
						isEpicFail: false,
						isOK: false,
						isFail: false
					}
					$scope.buttons = {
						next: 'NEXT',
						back: 'BACK'
					};
					var token = $rootScope.token;

					$scope.auditData = {
						mentorId: '',
						contact: '',
						cgpa: '',
						gradSession: '',
						extendedSem: '',
						totalSem: '',
						spmResult: 'NA',
						muetResult: 'NA',
						orientationOpt: '',
						cectOpt: '',
						programType: ''
					};

					$scope.activeform = 1;
					$scope.barCurrentValue = '0% Complete';

					var initializeBar = function(){
						if($scope.activeform == 1){
							$scope.progressIncrement = {
								'width':'0%'
							}
							$scope.buttons.next = 'NEXT';
							$scope.barCurrentValue = '0% Complete';
						}
						if($scope.activeform == 2){
							$scope.progressIncrement = {
								'width':'33%'
							}
							$scope.buttons.next = 'NEXT';
							$scope.barCurrentValue = '33% Complete';
						}
						if($scope.activeform == 3){
							$scope.progressIncrement = {
								'width':'66%'
							}
							$scope.buttons.next = 'NEXT';
							$scope.barCurrentValue = '66% Complete';
						}
						if($scope.activeform == 4){
							$scope.progressIncrement = {
								'width':'100%'
							}
							$scope.buttons.next = 'SEND';
							$scope.barCurrentValue = '100% Complete';
						}
					}

					$scope.prevForm = function(){
						var value = $scope.activeform;
						if(value != 1){
							$scope.activeform = value - 1;
							initializeBar();
						}
					}

					$scope.nextForm = function(){
						var value = $scope.activeform;
						if(value != 4){
							if(value == 1){
								if($scope.auditData.orientationOpt == 'International'){
									if($scope.auditData.cectOpt == 'Yes'){
										$scope.activeform = value + 2;
									}else{
										$scope.activeform = value + 3;
									}
								}else{
									$scope.activeform = value + 1;
								}
							}
							if(value == 2){
								if($scope.auditData.cectOpt == 'No'){
									$scope.activeform = value + 2;
								}else{
									$scope.activeform = value + 1;
								}
							}
							if(value == 3){
								$scope.activeform = value + 1;
							}

							initializeBar();
						}
						else{
							if($scope.buttons.next === 'SEND'){
								doAudit();
							}
						}
					}


					AppDataFactory.loadStudentData(token).then(function(res){
						_.forEach(res, function(data){
							$scope.auditData.totalSem = data.totalsem;
							$scope.auditData.cgpa = data.currentCgpa;
							$scope.auditData.contact = data.hp;
							$scope.auditData.programType = data.program
							 //For the options of choosing mentors
						})
					})
				
					AppDataFactory.loadCourseTransferred(token).then(function(res){
				
						if(_.isEmpty(res)){
							$scope.noCT = true;
							$scope.showCT = false;
						}
						else{
							$scope.CtData = res;
							$scope.showCT = true;
							$scope.noCT = false;
						}
					})

					AppDataFactory.loadAcademicsList().then(function(res){
						$scope.Academics = res;

					})

					var doAudit = function() {

						var data = $scope.auditData;
						console.log(data.mentorId);

						var auditPackage = {
							studId: token,
							mentorId: data.mentorId,
							gradSession: data.gradSession,
							extendedSem: data.extendedSem,
							totalSem: data.totalSem,
							spmResult: data.spmResult,
							muetResult: data.muetResult,
							programType: data.programType
						};
						if(!_.isEmpty(auditPackage)){
							AppServiceProvider.SaveAuditData(auditPackage);
						}
						
						$scope.$on(AppConfigEvents.REQUEST_SUBMITTED, function(e, res) {
							checkResponse(res);
						})

						var checkResponse = function(status){
							var Status = _.parseInt(status);

							switch(Status){
								case AppConfigStatus.AUDIT_REQUEST.FAIL:
									$scope.alert.isFailed = true;
									break;
								case AppConfigStatus.AUDIT_REQUEST.SENT:
									$scope.alert.isSent = true;
									if(!_.isEmpty($scope.remarkedCourses)){
										doCECTRemark();
									}
									break;
								case AppConfigStatus.AUDIT_REQUEST.IS_APPROVED:
									$scope.alert.isApproved = true;
									break;
								case AppConfigStatus.AUDIT_REQUEST.IS_PENDING:
									$scope.alert.isPending = true;
									break;
								case AppConfigStatus.AUDIT_REQUEST.EPIC_FAIL:
									$scope.alert.isEpicFail = true;
									break;
								default:
									$scope.alert.isEpicFail = true;
							}
						}
						$scope.$on(AppConfigEvents.REQUEST_FAILED, function(e){
							$scope.alert.isEpicFail = true;
						})
					}

					AppDataFactory.loadCourses().then(function(res){
						$scope.Courses = res;
					});

					$scope.remarkedCourses = [];

					$scope.doRemark = function(){

						$scope.remarkedCourses.push({
							courseId: $scope.selectedCourse.courseId,
							courseName: $scope.selectedCourse.courseName,
							courseUnits: $scope.selectedCourse.courseUnit,
							cectResult: $scope.selectedResult,
							comments: $scope.selectedComments
						})

						$scope.selectedCourse = '';
						$scope.selectedResult = '';
						$scope.selectedComments = '';
					}

					$scope.doDelete = function(index){
						$scope.remarkedCourses.splice(index,1);
					}

					var doCECTRemark = function(){
						var data = $scope.remarkedCourses;
						if(!_.isEmpty(data)){

							var array_cectResult = new Array();
							var pluckResult =  _.pluck(data,'cectResult');
							var array_courseId = new Array(); 
							var pluckCourseId = _.pluck(data,'courseId');
							var array_comments = new Array() 
							var pluckComments = _.pluck(data,'comments');

							for (var i = 0; i < pluckCourseId.length ; i++) {
								array_cectResult.push(pluckResult[i]);
								array_courseId.push(pluckCourseId[i]);
								array_comments.push(pluckComments[i]);
							};

							var dataPackage = {
								courseId: array_courseId,
								cectResult: array_cectResult,
								comments: array_comments
							};

							if(!_.isEmpty(dataPackage)){
								AppServiceProvider.SaveCTRemark(token,dataPackage);
							}

							$scope.$on(AppConfigEvents.REMARK_SUBMITTED, function(e,res){
								var status = _.parseInt(res);

								switch(status){
									case AppConfigStatus.GLOBAL.FAIL:
										$scope.alert.isFail = true;
										break;
									case AppConfigStatus.GLOBAL.OK:
										$scope.alert.isOK = true;
										break;
									default:
										$scope.alert.isFail = true;
								}
							});

							$scope.$on(AppConfigEvents.REMARK_FAILED, function(e){
								$scope.alert.isFail = true;
							})
						}
					}
				}
			]
		)

})(window, window.angular)