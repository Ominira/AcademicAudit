(function (window, angular, undefined) {
	// body...
	'use strict';

	/**
	*  Module: Application chart module
	*
	* Description: the is module houses the D3 and google chart services
	*/
	angular.module('appCharts', ['ng'])
		.factory('d3Charts', 
			['$document', '$q', '$rootScope',
				function($document, $q, $rootScope) {
					var d = $q.defer();
					function onScriptLoad() {
	        			// Load client in the browser
	       				 $rootScope.$apply(function() { d.resolve(window.d3); });
	    			}
		      		// Create a script tag with d3 as the source
		      		// and call our onScriptLoad callback when it
		      		// has been loaded
		      		var scriptTag = $document[0].createElement('script');
		      		scriptTag.type = 'text/javascript'; 
		      		scriptTag.async = true;
		      		scriptTag.src = 'http://d3js.org/d3.v3.min.js';

		      		scriptTag.onreadystatechange = function () {
		      			if (this.readyState == 'complete') onScriptLoad();
		      		}

		      		scriptTag.onload = onScriptLoad;

		      		var s = $document[0].getElementsByTagName('body')[0];
		      		s.appendChild(scriptTag);

		      		return {
		      			d3: function() { return d.promise; }
		      		};
	  			}
  			]
  		)

  		.factory('googleCharts',
  			['$document', '$q', '$rootScope', 
  				function ($document, $q, $rootScope) {
  					var d = $q.defer();
  					function onScriptLoad() {
  						// body...
  						$rootScope.$apply(function(){
  							d.resolve(window.gChart);
  						})
  					}

  					var scriptTag = $document[0].createElement('script');
  					scriptTag.type = 'text/javascript';
  					scriptTag.async = true;
  					scriptTag.src = 'https://www.google.com/jsapi';

  					scriptTag.onreadystatechange = function() {
  						if(this.readyState == 'complete') onScriptLoad();
  					}

  					scriptTag.onLoad = onScriptLoad;
  					var s = $document[0].getElementsByTagName('body')[0];
  					s.appendChild(scriptTag);

  					return{
  						gChart: function(){
  							return d.promise;
  						}
  					}
  				}
  			]
  		)

})(window, window.angular)