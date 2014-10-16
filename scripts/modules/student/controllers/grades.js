(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: studentApp module
	*
	* Description: This controller is responsible for the  grades/results view
	*/
	angular.module('studentApp')
		//---
		.controller(
			'GradesViewController',
			['$scope','AppDataFactory','$rootScope',
				function ($scope, AppDataFactory, $rootScope){

					$scope.title = "Grades Review";

					var token = $rootScope.token;

					$scope.activeView = 0;
					$scope.graph = {
						data: [],
						options: {
							title: 'Cummulative Grades Graph',
							vAxis: {title: 'GRADES', titleTextStyle: {color: '#fff', italic: true, bold: true}},
							hAxis: {title: 'SEMESTER', titleTextStyle: {color: '#fff', italic: true, bold: true}},
							//chartArea: {width: '75%', height: '65%'},
							enableInteractivity: true,
							tooltip: {trigger: 'focus'},
							//animation: {duration: 500, easing: 'inAndOut'},
							width: 800,
							height: 350,
							is3D: true,
							colors: ['#ff4500', '#ffa500'],
							backgroundColor: '#708899',
							titleTextStyle: { color: '#fff', fontName: 'Cambria', fontSize: 18 },
							interpolateNulls: true
						}
					}

					var initGraph = function(gradesData){

						var cgpa = _.pluck(gradesData,'cgpa');
						var gpa = _.pluck(gradesData,'gpa');
						var semester = _.pluck(gradesData,'semId');

						var x_val = ['SEMESTER'];
						var y_val = ['GPA'];
						var yy_val = ['CGPA'];
						var data_val = [];

						_(semester).forEach(function (num){
							x_val.push(num);
						})

						_(gpa).forEach(function (num){
							y_val.push(parseFloat(num));
						})

						_(cgpa).forEach(function (num){
							yy_val.push(parseFloat(num));
						})

						for (var i = 0; i < x_val.length; ++i){
							data_val.push([x_val[i], y_val[i], yy_val[i]]);
						}

						if(!$scope.$$phase){	
							$scope.$apply(function(){
								$scope.graph.data = data_val;
							})
						}else{
							$scope.graph.data = data_val;
						}
					}

					AppDataFactory.loadResultsBySemester(token).then(function(res){
						$scope.semResults = res;
						initGraph(res);
					})

					AppDataFactory.loadResultsByCourse(token).then(function(res){
						$scope.courseResults = res;
					})

					var activateView = function(){
						if($scope.activeView == 0){
							$scope.isBySemActive = true;
						}else{
							$scope.isBySemActive = false;
						}

						if($scope.activeView == 1){
							$scope.isByCourseActive = true;
						}else{
							$scope.isByCourseActive = false;
						}
					}

					$scope.showBySem = function() {
						$scope.activeView = 0;
						activateView();
					};

					$scope.showAll = function() {
						$scope.activeView = 1;
						activateView();
					};

					activateView();
				}
			]
		)

})(window, window.angular)