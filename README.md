AcademicAudit
=============

This is a complete web app/system initially created to automate the sequence of events ensued in student's academic/degree audit at the University level.


#### Server Environment:

- Apache Tomcat 7.0.30
- MySQL 5.6.11

#### Machine Environment

- Java JDK 1.7.0_21
- Ant 1.9.1 (sometimes comes with the tomcat installation itself)
- MySQL Workbench 6.0 ( or whatever mysql server manager suits the team, phpmyadmin or the likes)

#### Back-end:

Completely Java

libraries currently used (custom .jar files):
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

AngularJS Driven (http://angularjs.org/)
Used for developing HTML5 Single Web Page Application and more. More details on the angularjs website.

JavaScript Libraries Used:

Angular Modules:
- angular-animate - for animations
- angular-route - for page routing
- angular-sanitize - to ensure security and prevent XSS attacks
- angular-scenario - for testing (didn't get around to really use it).

JS Utilities:
- jQuery
- Bootstrap
- lodash.js - http://lodash.com/
- moment.js - http://momentjs.com/
- dropzone.js - http://www.dropzonejs.com/

- google jsapi - graph chart draw
- Light-box JS libraries - fancybox, colorbox

- json3
- es5-shim

CSS Utils:
Bootstrap  - for the little things

#### Current Test Site
http://academicaudit.ominira.cloudbees.net/
expires Dec 31, 2014

Usable Login Credentials:

user: user1 || lecturer1
password: user1 || lecturer1


