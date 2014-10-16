/**
    @author Mustapha Taiwo
*/
(function (window, angular, undefined) {
	// body...
	'use strict';

	angular.module('appRTService',['ng','appConfig'])
		/*
			Service to provide data needed.
			Makes call to backend/REST api to get data.
		*/
		.provider(
			'AppDataFactory', function(){
				this.$get = ['$http','$rootScope','$q','AppConfigUrls',
					function ($http, $rootScope, $q, AppConfigUrls){
						//Service Logic
						// ...
				
						//Public API Here
						return {
							loadStudentData: function(args){
								//---
								var target = AppConfigUrls.STUDENT_DATA({
									studId: args
								});

								var promise = $http.get(target).then(function(response){
									return response.data;
								});

								return promise;
							},

							loadAcademicsData: function(args){
								//--
								var	target = AppConfigUrls.ACADEMICS_DATA({
									academicsId: args
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadCourseTransferred: function(args) {
								//--
								var target = AppConfigUrls.COURSE_TRANSFERED({
									studId: args
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadResultsBySemester: function(args){
								//--
								var target = AppConfigUrls.SEMESTER_GRADES({
									studId: args
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadResultsByCourse: function(args){
								//--
								var target = AppConfigUrls.COURSE_GRADES({
									studId: args
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadCourses: function(){
								//--
								var target = AppConfigUrls.COURSES;

								var promise = $http.get(target).then(function(response){
									return response.data;
								});

								return promise;
							},

							loadGrades: function(){
								//--
								var target = AppConfigUrls.GRADES;

								var promise = $http.get(target).then(function(response){
									return response.data;
								});

								return promise;
							},

							loadNumberOfRequests: function(argsLevel, argsId){
								//--
								var target = AppConfigUrls.AUDIT_REQUESTS({
									level: argsLevel, academicsId: argsId
								});

								return $http.get(target).then(function(response){
									return _.parseInt(response.data);
								});
							},

							loadAuditData: function(args){
								//--
								var target = AppConfigUrls.AUDIT_DATA({
									studId: args
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadRemarkedCourses: function(args){
								//--
								var target = AppConfigUrls.REMARKED_COURSES({
									studId: args
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadAcademicsList: function(){
								var target = AppConfigUrls.ACADEMICS_LIST

								return $http.get(target).then(function(response){
									return response.data;
								});
							},

							loadAuditRequests: function(argsLevel, argsId){
								var target = AppConfigUrls.REQUEST_LISTS({
									level: argsLevel, id: argsId
								});

								return $http.get(target).then(function(response){
									return response.data;
								});
							}
						}
					}
				]
			}
		)
		/*
			Service to send data to the backend api for later retrieval.
			Makes http calls to post data.
		*/
		.factory(
			'AppServiceProvider',
			['$http', '$rootScope', '$q', 'AppConfigUrls', 'AppConfigStatus', 'AppConfigEvents',
				function ($http, $rootScope, $q, AppConfigUrls, AppConfigStatus, AppConfigEvents){
					//Service Logic
					// ...

					//Public API Here
					return{
						SaveAuditData: function(args){
							var call_status = AppConfigStatus.AUDIT_REQUEST.EPIC_FAIL;

							var targetUrl = AppConfigUrls.SAVE_AUDIT({
								studId: args.studId,
								mentorId: args.mentorId,
								gradSession: args.gradSession,
								extendedSem: args.extendedSem,
								totalSem: args.totalSem,
								spmResult: args.spmResult,
								muetResult: args.muetResult,
								programType: args.programType
							});

							$http.post(targetUrl)
								.success(
									function(response){
										call_status = _.parseInt(response);
										$rootScope.$broadcast(AppConfigEvents.REQUEST_SUBMITTED, call_status);
										console.log(response);
									}
								)
								.error(
									function() {
										$rootScope.$broadcast(AppConfigEvents.REQUEST_FAILED);
										console.log('Request Submission Failed');
									}
								);
						},

						SaveCTRemark: function(argsId, argsData){
							var call_status = AppConfigStatus.GLOBAL.FAIL;

							var targetUrl = AppConfigUrls.SAVE_REMARKS({
								studId: argsId,
								courseId:  JSON.stringify(argsData.courseId), //array
								cectResult: JSON.stringify(argsData.cectResult) , //array
								comments:  JSON.stringify(argsData.comments) //array
							});

							$http({method:'POST', url: targetUrl, headers:{'Content-Type':'application/x-www-form-urlencoded'}})
								.success(
									function(response){
										call_status = _.parseInt(response);
										$rootScope.$broadcast(AppConfigEvents.REMARK_SUBMITTED, call_status);
										console.log(call_status);
									})
								.error(
									function(response){
										$rootScope.$broadcast(AppConfigEvents.REMARK_FAILED);
										console.log('Course Remark Failed');
									}
								);
						},

						UpdateAuditStatus: function(args) {
							var call_status = AppConfigStatus.GLOBAL.FAIL;

							var targetUrl = AppConfigUrls.UPDATE_AUDIT_STATUS({
								studId: args.studId,
								status: args.status,
								level: args.level,
								comments: args.comments
							});

							$http.post(targetUrl)
								.success(
									function(response) {
										call_status = _.parseInt(response);
										$rootScope.$broadcast(AppConfigEvents.STATUS_UPDATED,call_status);
										console.log(call_status);
									}
								)
								.error(
									function(){
										$rootScope.$broadcast(AppConfigEvents.STATUS_UPDATE_FAIL);
										console.log('Audit Status update failed');
									}
								)
						}
					}
				}
			]
		)
})(window, window.angular)