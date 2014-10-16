Academic Audit
==============

This is a prototype web app/system created to automate the sequence of events ensued in student's academic/degree audit at the University level.


#### Server Environment:

- Apache Tomcat 7.0.30
- MySQL 5.6.11

#### Machine Environment

- Java JDK 1.7.0_21
- Ant 1.9.1
- MySQL Workbench 6.0 ( or whatever mysql server gui manager suits, phpmyadmin or the likes)

#### Back-end:

Completely Java

libraries currently used (custom .jar files). 
Most, if not all, are currently contained in the WEB-INF/lib folder

File Upload:
- commons.fileupload-1.2.2.jar
- commons.io-2.4.jar

JSON converter/format:
- google gson
- java json

Connector:
- mysql-connector-java-5.1.24

The Very Important:
- Servlet-api (Servlet 3.0) 
- javax.annotation.jar

Expression Language Support (Java Standard Tag Lib):
- jstl-api-.1.2.1 and the standard.jar files
- I think they should come together with the tomcat server installation.

#### Front-end:

Still JSP, but...

[AngularJS](http://angularjs.org/) Driven.

Angular Modules:
- angular-animate
- angular-route
- angular-sanitize
- angular-scenario

JS Utilities:
- [jQuery](http://jquery.com/)
- [Bootstrap](http://getbootstrap.com/)
- [Lodash](http://lodash.com/)
- [Moment](http://momentjs.com/)
- [DropZone](http://www.dropzonejs.com/)

- google jsapi - graph chart draw
- Light-box JS libraries - fancybox, colorbox

- json3
- es5-shim

CSS Utils:
- Bootstrap - for the little things

#### Current Test Site
http://academicaudit.ominira.cloudbees.net/

link expires Dec 31, 2014

Usable Login Credentials:

- Student: userame -> user1, password -> user1
- Lecturer userame -> lecturer1, password -> lecturer1


