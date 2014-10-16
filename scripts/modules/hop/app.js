/**
    @author Mustapha Taiwo
*/
(function (window, angular, undefined){
  //body...
  'use strict';
  /**
  *  Module: Head of Program (hop) module
  *
  * Description: Module initialization, Configurations and Runtime processes
  */
  angular.module('hopApp', ['ngCookies','ngResource','ngSanitize','ngRoute','ngAnimate','appConfig','appRTService','appDirectives'])
  .config(function ($routeProvider, $locationProvider, $sceProvider, $provide) {

    $provide.decorator('$sniffer', function($delegate) {
      $delegate.history = false;
      return $delegate;
    });
    
    $routeProvider
      .when('/', {
        templateUrl: 'partials/hop/main.html',
        controller: 'HomeViewController',
        resolve: {
          profile: function($rootScope, AppDataFactory){
            return AppDataFactory.loadAcademicsData($rootScope.token);
          }
        }
      })
      .when('/review/:level/:id',{
        templateUrl: 'partials/hop/review.html',
        controller: 'ReviewsViewController',
        resolve: {}
      })
      .when('/users',{
        templateUrl: 'partials/hop/users.html',
        //controller: 'GradesViewController',
        resolve: {}
      })
      .when('/tools',{
        templateUrl: 'partials/hop/tools.html',
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