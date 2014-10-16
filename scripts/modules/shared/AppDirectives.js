/**
    @author Mustapha Taiwo
    */
    (function (window, angular, undefined) {
	// body...
	'use strict';

	angular.module('appDirectives',['ng','appConfig','appRTService'])
		/*
		* This is a angular directive to check for
		* image load fail, either the image is not found,
		* or the binded data/string is empty
		*/
		.directive(
			'errSrc', function(){
				return{
					link: function (scope,element,attrs){

						scope.$watch(function(){
							return attrs['ngSrc'];
						}, function(value) {
							if(!value){
								element.attr('src', attrs.errSrc);
							}
						})

						element.bind('error', function(){
							element.attr('src',attrs.errSrc);
						});
					}
				}
			})
		/*
		* This is a angular directive to enable
		* user upload file by drag & drop with the
		* aid of dropzone.js
		*/
		.directive(
			'dropBox', ['AppConfigUrls', function (AppConfigUrls){
			// Runs during compile
			return {
				priority: 0,
				restrict: 'EA', // E = Element, A = Attribute, C = Class, M = Comment
				link: function($scope, iElm, iAttrs, controller) {

					iElm.dropzone({
						url: AppConfigUrls.UPLOAD,
						method: 'post',
						uploadMultiple: false,
						clickable: true,
						autoProcessQueue: true,
						addRemoveLinks: true
						/*init: function(){
							this.on('addedfile', function(file){
								$scope.$apply(function(){
									alert('files added');
								});
							});
						}*/
					});
				}
			};
		}])

		.directive('graphChart', ['AppDataFactory', function(){
			// Runs during compile
			return {
				priority: 1,
				scope: true,
				require: '?ngModel',
				restrict: 'EA',
				link: function(scope, iElm, iAttrs, controller) {
					//console.log(scope);

					scope.$watch('graph.data', function(nv){
						if(nv && nv.length > 0){

							var chartData = nv;
							var chartOptions = scope.graph.options

							if(controller){

								var data = google.visualization.arrayToDataTable(chartData);

								var drawChart = function(){
									var wrapper = new google.visualization.ChartWrapper({
										chartType: 'LineChart',
										dataTable: data,
										options: chartOptions,
										containerId: iElm[0]
									});

									wrapper.draw();
								}
								
								controller.$render = function(){
									drawChart();
								}
							}

							if(controller){
								controller.$render();
							}
						}
					});
				}
			};
		}])

		.directive('fancyboxLaunch', function(){
			// Runs during compile
			return {
				priority: 1,
				restrict: 'EA',
				link: function($scope, iElm, iAttrs, controller) {
					
					iElm.fancybox({
						maxWidth: 1200,
						maxHeight: 1100,
						fitToView: false,
						width: '90%',
						height: '95%',
						autoSize: false,
						closeClick: false,
						openEffect: 'none',
						closeEffect: 'none',
						afterClose : function() {
					        location.reload();
					        return;
					    }
					});
				}
			};
		})

		.directive('colorboxPreview', function(){
			// Runs during compile
			return {
				priority: 1,
				restrict: 'EA',
				link: function($scope, iElm, iAttrs, controller) {
					iElm.colorbox({
						maxHeight:'80%',
						maxWidth:'80%',
						rel:'Qualifications',
						onComplete : function() { 
							angular.element(iElm).colorbox.resize({innerWidth:"70%", innerHeight:"70%"}); 
						} 
					})
				}
			};
		});
})(window, window.angular)