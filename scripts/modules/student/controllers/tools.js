(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: studentApp module
	*
	* Description: This controller is responsible for the tools view
	*/
	angular.module('studentApp')
		//---
		.controller(
			'ToolsViewController',
			['$scope','AppDataFactory',
				function ($scope, AppDataFactory){
					$scope.title = "Academia Tools";

					/*
					*	<======================= For Everything in Tab 1 ==================>
					*/
					AppDataFactory.loadGrades().then(function(res) {
						$scope.Grades = res;
						//console.log(res);
					});

					$scope.numOfTextbox = 0;

					$scope.generateBox = function(){
						init();
					};

					var init = function(){
						$scope.generateTextbox = function(num){
							return new Array(num);
						};
					}

					init();

					$scope.gradesData = {
						currentCgpa: 0,
						currentUnits: 0,
						grade: [],
						gradeGp: [0],
						units: [0],
						points: [0]
					}

					$scope.gradesChange = function(index){
						$scope.gradesData.gradeGp[index] = $scope.gradesData.grade[index];
						$scope.unitsChange(index);
					}

					$scope.unitsChange = function(index){
						var courseGrade = ($scope.gradesData.gradeGp[index] * $scope.gradesData.units[index]);
						$scope.gradesData.points[index] = courseGrade;
					}

					$scope.results = {
						totalUnits: 0,
						totalPoints: 0,
						gpa: 0,
						cgpa: 0
					}

					$scope.resetAble = true;

					$scope.calculate = function(){

						var totalPoints = 0;
						var totalUnits = 0;
						var gpa = 0;
						var cgpa = 0;
						var currentCgpa = 0.0;
						var currentUnits = 0.0;

						var units = new Array();
						var points = new Array();

						units = $scope.gradesData.units;
						points = $scope.gradesData.points;
						currentCgpa = 1.0 * $scope.gradesData.currentCgpa;
						currentUnits = 1.0 * $scope.gradesData.currentUnits;

						//console.log(currentUnits);
						//console.log(currentCgpa);

						if(!_.isEmpty(units) && !_.isEmpty(points)){

							_(units).forEach(function (num) {
								totalUnits += num;
							})

							_(points).forEach(function (num) {
								totalPoints += num;
							})

							$scope.results.totalPoints = Math.round(totalPoints * 100)/100;
							$scope.results.totalUnits = totalUnits;

							if(totalUnits > 0){
								gpa = (totalPoints / totalUnits);
								$scope.results.gpa = Math.round(gpa * 100)/100;

								cgpa = ((totalPoints + (currentCgpa * currentUnits)) / (currentUnits + totalUnits))

								$scope.results.cgpa = Math.round(100 * cgpa)/100;
								
							}

							$scope.resetAble = false;
						}
					}

					$scope.reset = function(){

						$scope.results = {
							totalUnits: 0,
							totalPoints: 0,
							gpa: 0,
							cgpa: 0
						}

						$scope.gradesData = {
							currentCgpa: 0,
							currentUnits: 0,
							grade: [],
							gradeGp: [0],
							units: [0],
							points: [0]
						}

						$scope.resetAble = true;
					}

					/*
					*	<======================= For Everything in Tab 2 ==================>
					*/

					$scope.deActivateReset = true;

					$scope.gradeForecaster = {
						currentCgpa: 4.00,
						currentUnits: 1,
						targetCgpa: 4.00,
						remainingUnits: 1,
						computedTarget: 0
					}

					$scope.computeTarget = function(){

						var units = $scope.gradeForecaster.currentUnits;
						var cgpa = $scope.gradeForecaster.currentCgpa;
						var target = $scope.gradeForecaster.targetCgpa;
						var rUnits = $scope.gradeForecaster.remainingUnits;

						var neededGpa = 0.0;
						var toReturn = '';

						neededGpa = ((((units + rUnits) * target) - (units * cgpa)) / (rUnits));

						if(neededGpa < 0){
							toReturn = '0.00';
						}
						else if(neededGpa > 4.00){
							toReturn ='Unattainable';
						}
						else{
							neededGpa = Math.round(neededGpa * 100) / 100;
							toReturn = neededGpa.toString();
						}

						$scope.gradeForecaster.computedTarget = toReturn;

						$scope.deActivateReset = false;
					}

					$scope.resetTarget = function(){

						$scope.gradeForecaster = {
							currentCgpa: 0.05,
							currentUnits: 1,
							targetCgpa: 0.05,
							remainingUnits: 1,
							computedTarget: 0
						}

						$scope.deActivateReset = true;
					}

					/*
					* <======================= For Everything in Tab 3 ==================>
					*/
					$scope.disableReset = true;

					$scope.unitForecaster = {
						currentCgpa: 4.00,
						currentUnits: 1,
						targetCgpa: 4.00,
						targetGpa: 4.00,
						computedTarget: 0
					}

					$scope.computeUnits = function(){
						var units = $scope.unitForecaster.currentUnits;
						var cgpa = $scope.unitForecaster.currentCgpa;
						var target = $scope.unitForecaster.targetCgpa;
						var feasible_target = $scope.unitForecaster.targetGpa;

						var neededUnits = 0;
						var toReturn = '';

						if(target <= cgpa){
							toReturn = 'Already There!';
						}
						else if(feasible_target <= target){
							toReturn = 'Unattainable';
						}
						else{
							neededUnits = units * ( (target - cgpa ) / (feasible_target - target) )
							if(neededUnits < 0){
								toReturn = 'Neg-Unattainable';
							}else{
								neededUnits = Math.ceil(10 * neededUnits) / 10;
								toReturn = neededUnits.toString();
							}
						}

						$scope.unitForecaster.computedTarget = toReturn;
					}
				}
			]
		)

})(window, window.angular)