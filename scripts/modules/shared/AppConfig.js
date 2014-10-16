/**
    @author Mustapha Taiwo
*/
(function (window, angular, undefined) {
	// body...
	'use strict';

	/*
		This Module contains all configurables
	*/
	angular.module('appConfig', ['ng'])
		//all need-to-know data about the app
		.constant(
			'AppConfigData', {
				'APP_ID': 'A2S_VER3.0',
				'APP_NAME': 'Academic Audit System',
				'APP_VERSION': '1.0.3',
				'APP_URL': {
					'FIRST': 'fcsit-studentaudit.appspot.com',
					'SECOND': 'academicaudit.ominira.cloudbees.net'
				}
			}
		)
		//required url to make REST calls, and ajax calls
		//&format=json = in the case I might be providing alternative data type later on
		//&callback=JSON_CALLBACK, to allow for jsonp http method type request, you never know
		.constant(
			'AppConfigUrls', {
				'STUDENT_DATA': _.template('StudentData.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'GLOBAL_STUDENT_DATA': _.template('GlobalStudentData.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'SAVE_AUDIT': _.template('SaveAuditData?studId=<%= studId %>&mentorId=<%= mentorId %>&gradSession=<%= gradSession %>&extendedSem=<%= extendedSem %>&totalSem=<%= totalSem %>&spmResult=<%= spmResult %>&muetResult=<%= muetResult %>&programType=<%= programType %>'),
				'SAVE_REMARKS': _.template('RemarkCECT?studId=<%= studId %>&courseId=<%= courseId %>&cectResult=<%= cectResult %>&comments=<%= comments %>'),
				'COURSE_GRADES': _.template('CourseGrades.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'SEMESTER_GRADES': _.template('SemesterGrades.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'ACADEMICS_DATA': _.template('AcademicsData.json?academicId=<%= academicsId %>&format=json&callback=JSON_CALLBACK'),
				'AUDIT_DATA': _.template('AuditData.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'AUDIT_REQUESTS': _.template('AuditRequests?academicLevel=<%= level %>&academicId=<%= academicsId %>'),
				'REMARKED_COURSES': _.template('RemarkedCourses.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'COURSE_TRANSFERED': _.template('CourseTrans.json?userId=<%= studId %>&format=json&callback=JSON_CALLBACK'),
				'COURSES': 'Courses.json?format=json&callback=JSON_CALLBACK',
				'GRADES': 'Grades.json?format=json&callback=JSON_CALLBACK',
				'UPDATE_AUDIT_STATUS': _.template('AuditStatus?studId=<%= studId %>&auditStatus=<%= status %>&academicLevel=<%= level %>&comments=<%= comments %>'),
				'UPLOAD': 'UploadService',
				'ACADEMICS_LIST':'AcademicsList.json',
				'UPDATE_ACADEMICS_DATA': _.template('UpdateAcademicsInfo?lectId=<%= lectId %>&lectName=<%= lectName %>&lectSex=<%= lectSex %>&lectLevel=<%= lectLevel %>&lectDept=<%= lectDept %>&lectEmail=<%= lectEmail %>&lectHpNo=<%= lectHpNo %>'),
				'UPDATE_ACADEMICS_LOGIN': _.template('UpdateAcademicsLogin?lectId=<%= lectId %>&userId=<%= userId %>&userPass=<%= userPass %>'),
				'ADD_NEW_ACADEMICS': _.template('AddNewAcademics?'),
				'REQUEST_LISTS': _.template('ListAuditRequests?academicLevel=<%= level %>&academicId=<%= id %>&format=json&callback=JSON_CALLBACK')
			}
		)
		//data posted response status
		.constant(
			'AppConfigStatus', {
				'GLOBAL':{
					'OK': 1,
					'FAIL': 0
				},
				'AUDIT_REQUEST': {
					'SENT': 1,
					'FAIL': 0,
					'IS_APPROVED': 2,
					'IS_PENDING': 3,
					'EPIC_FAIL': 4
				},
			}
		)
		// http call events
		.constant(
			'AppConfigEvents',{
				'REQUEST_SUBMITTED': 'AppConfigEvents:REQUEST_SUBMITTED',
				'REQUEST_FAILED': 'AppConfigEvents:REQUEST_FAILED',
				'REMARK_SUBMITTED': 'AppConfigEvents:REMARK_SUBMITTED',
				'REMARK_FAILED': 'AppConfigEvents:REMARK_FAILED',
				'STATUS_UPDATED': 'AppConfigEvents:STATUS_UPDATED',
				'STATUS_UPDATE_FAIL': 'AppConfigEvents:STATUS_UPDATE_FAIL'
			}
		)

})(window, window.angular)