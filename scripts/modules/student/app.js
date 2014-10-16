/**
    @author Mustapha Taiwo
*/
(function (window, angular, undefined){
  //body...
  'use strict';
  /**
  *  Module: studentApp module
  *
  * Description: Module initialization, Configurations and Runtime processes
  */
  angular.module('studentApp', ['ngCookies','ngResource','ngSanitize','ngRoute','ngAnimate','appConfig','appRTService','appDirectives'])
  .config(function ($routeProvider, $locationProvider, $sceProvider, $provide) {

    $provide.decorator('$sniffer', function($delegate) {
      $delegate.history = false;
      return $delegate;
    });
    
    $routeProvider
      .when('/', {
        templateUrl: 'partials/student/main.html',
        controller: 'HomeViewController',
        resolve: {}
      })
      .when('/audit', {
        templateUrl: 'partials/student/audit.html',
        controller: 'AuditViewController',
        resolve: {}
      })
      .when('/grades',{
        templateUrl: 'partials/student/grades.html',
        controller: 'GradesViewController',
        resolve: {}
      })
      .when('/tools',{
        templateUrl: 'partials/student/tools.html',
        controller: 'ToolsViewController',
        resolve: {}
      })
      .otherwise({
        redirectTo: '/'
      });

    $locationProvider
      .html5Mode(false)
      .hashPrefix('!');

    $sceProvider.enabled(true);
  })
  .config(['$compileProvider', 
      function ($compileProvider) {
        $compileProvider.aHrefSanitizationWhitelist(/^\s*(https?|file|ms-appx|mailto|ftp):/);
        $compileProvider.imgSrcSanitizationWhitelist(/^\s*(https?|ftp|file):|data:image\//);
      }
  ])
  .run(['$rootScope', '$location', '$window','$route','AppDataFactory', 
      function ($rootScope, $location, $window, $route, AppDataFactory) {
        $rootScope.goTo = _.debounce(
          function (where) {
            $location.path('/' + where);
          }, 500, true
        );

        if(('localStorage' in window) && window['localStorage'] !== null){
          $rootScope.token = window.localStorage.getItem('token');
        }

        $rootScope.executeOrder = function(){
          if(('localStorage' in window) && window['localStorage'] !== null){
            if(window.localStorage.getItem('token') != null){
              window.localStorage.removeItem('token');
            }
          }
        }
      }
  ]);

})(window, window.angular)