<%--
Copyright 2014 iexel

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:master-page selectedMainMenuItemCode="${selectedMainMenuItemCode}" selectedLeftMenuItemCode="${selectedLeftMenuItemCode}" locale="${springMvcLocale}">

<div class=b-text-content>

<h3>
<a class="anchor" href="#introduction"><span class="octicon octicon-link"></span></a>Introduction</h3>

<p>This project is a template/demo of a CRUD web application. It uses Spring Web MVC (a Java web framework) and jqGrid (an open source JavaScript grid). The application features internationalisation, user authentication/authorisation, RESTful web services and a few more things that can be found in almost any web application. It's my study project. I have published it <a href="https://github.com/iexel/fontus">on GitHub</a> in a hope that it may be useful to someone as a boilerplate for a new application or as a demo application that showcases the use of Spring MVC and jqGrid.</p>

<p>Why is it called Fontus? In the ancient Roman religion, Fontus was a god of wells and springs.</p>

<h3>
<a class="anchor" href="#online-deployment"><span class="octicon octicon-link"></span></a>Online deployment</h3>

<p>You can check this web application online at <a href="http://demo.alexey.cloudbees.net">http://demo.alexey.cloudbees.net</a> (login: <code>admin</code>, password: <code>admin</code> for access to the protected pages). The free Java EE hosting at CloudBees provides limited resources, and the application can be slow at times.</p>

<h3>
<a class="anchor" href="#licensing"><span class="octicon octicon-link"></span></a>Licensing</h3>

<p>This project is released under the <a href="https://github.com/iexel/fontus/blob/master/LICENSE">Apache Software License, Version 2.0</a>. All third party libraries used in the project are both Free and Open Source software. Most of third-party images are in the Public Domain. A document that lists all third party components of the application and addresses their license requirements is included in both the source code distribution (<a href="https://github.com/iexel/fontus/blob/master/third-party-licenses.md">here</a>), and into the deployed application (<a href="http://demo.alexey.cloudbees.net/credit">here</a>). The list third-party artifacts and their licenses is build semi-automatically with a help of the License Maven Plugin and a <a href="https://github.com/iexel/fontus/blob/master/license-maven-plugin-template.ftl">custom FreeMaker template</a>.</p>

<h3>
<a class="anchor" href="#building-the-project"><span class="octicon octicon-link"></span></a>Building the project</h3>

<p>The application is a multi-module Maven project consisting of a parent and two child projects. Use <code>mvn clean package</code> to build it.</p>

<h3>
<a class="anchor" href="#technologies-used-in-this-application"><span class="octicon octicon-link"></span></a>Technologies used in this application</h3>

<h4>
<a class="anchor" href="#short-list-of-technologies"><span class="octicon octicon-link"></span></a>Short list of technologies</h4>

<p>Spring MVC, Java EE, RESTful Web Services, JSON, JSP, JSTL, HTML5, CSS3, jQuery, jQuery UI, JavaScript, AJAX, Tomcat, Maven</p>

<h4>
<a class="anchor" href="#server-side-web-development-java-ee--spring-mvc-40"><span class="octicon octicon-link"></span></a>Server-side web development (Java EE &amp; Spring MVC 4.0)</h4>

<p>The Spring MVC 4.0 framework is used in the application. Spring MVC is one of the most popular Java web frameworks (probably, the most popular). JSP pages (with JSTL and EL) are used as the view technology.</p>

<h4>
<a class="anchor" href="#restful-web-services"><span class="octicon octicon-link"></span></a>RESTful web services</h4>

<p>RESTful web services are implemented with Spring MVC 4.0. The web services are used for two purposes:</p>

<ul>
<li>to handle AJAX requests</li>
<li>as an external API</li>
</ul><h4>
<a class="anchor" href="#jqgrid-454"><span class="octicon octicon-link"></span></a>JqGrid 4.5.4</h4>

<p>jqGrid is an open source AJAX data grid which is based on jQuery and jQuery UI. It renders a grid using JavaScript (the source HTML page just need to define two <code>&lt;div&gt;</code> tags as a point of attachment for the grid). The grid uses a RESTful web service  for CRUD operations (i.e. to obtain and update its data). As jqGrid is based on jQuery UI, its look can be customised with jQuery UI themes.</p>

<p>The configuration and customisation of jqGrid is one of the most interesting parts of this demo application as it's an example of Spring MVC/jqGrid integration. The customised grid has the following features:</p>

<ul>
<li>It uses a RESTful web service with the following characteristics: RESTful URLs, four web methods (<code>GET</code>, <code>POST</code>, <code>PUT</code>, <code>DELETE</code>), JSON responses (the default configuration is different). The service consumes  <code>application/x-www-form-urlencoded</code> data. jqGrid can be customised to use a service that consumes JSON; however, JSON is harder to validate with Spring MVC as discussed in my StackOverflow question <a href="http://stackoverflow.com/q/21793584/2842067">here</a>.</li>
<li>It can display server side data validation errors generated by Spring MVC.</li>
<li>It correctly handles AJAX error responses.</li>
<li>It is tuned (with CSS and JavaScript) to have an acceptable look in all major browsers.</li>
<li>Some other things...</li>
</ul><h4>
<a class="anchor" href="#hierarchical-templating"><span class="octicon octicon-link"></span></a>Hierarchical templating</h4>

<p>The web pages consist of hierarchical blocks (header, footer, menu, master-page, etc.). JSP <code>.tag</code> files are used for templating (as an alternative to third party frameworks such as Apache Tiles). See <a href="http://stackoverflow.com/a/3257426/2842067">this</a> StackOverflow answer for details on using <code>.tag</code> files for templating.</p>

<h4>
<a class="anchor" href="#authentication-and-authorisation"><span class="octicon octicon-link"></span></a>Authentication and authorisation</h4>

<p>Spring Security 3.2 framework is used to define user access to a web-page on per-role basis. Some pages change their appearance depending on the user's permissions.</p>

<h4>
<a class="anchor" href="#internationalisation-and-localisation"><span class="octicon octicon-link"></span></a>Internationalisation and localisation</h4>

<p>The application has been internationalised (the capabilities of Spring MVC are used for internationalisation) and localised for two languages.</p>

<h4>
<a class="anchor" href="#user-input-validation"><span class="octicon octicon-link"></span></a>User input validation</h4>

<p>User input is validated server-side (with Spring MVC and JSR-303). I explained how validation errors are displayed in jqGrid in <a href="http://stackoverflow.com/q/21808706/2842067">this</a> StackOverflow question.</p>

<h4>
<a class="anchor" href="#error-processing"><span class="octicon octicon-link"></span></a>Error processing</h4>

<p>On the server side, most of the Java exceptions (including business exceptions and user input validation exceptions) are handled with Spring MVC (the <code>@ExceptionHandler</code> annotation). The errors and exceptions that cannot be handled with Spring MVC are handled the JSP/Java EE way: with the mapping in the <code>web.xml</code> file.</p>

<p>If an error happens while the web server processes a request that should return a complete HTML page, the user is redirected to an error page. If an error happens while an AJAX requests is processed, the server returns JSON that describes the error. On the client side, depending on the severity of the error, the error is either processed centrally (and the user is shown a dedicated error page) or locally (the user is shown an error message but stays on the current page).</p>

<p>“Session has expired” errors result in redirecting to the login page.</p>

<h4>
<a class="anchor" href="#javascript-libraries"><span class="octicon octicon-link"></span></a>JavaScript libraries</h4>

<p>Three JavaScript libraries are used in the application: jQuery, jQuery UI, and jqGrid. The use of jQuery UI is limited; most of the HTML is manually written and styled with CSS.</p>

<h4>
<a class="anchor" href="#logging-framework"><span class="octicon octicon-link"></span></a>Logging framework</h4>

<p>The application uses slf4j API with log4j implementation for logging.</p>

<h4>
<a class="anchor" href="#web-server"><span class="octicon octicon-link"></span></a>Web server</h4>

<p>The application was tested in Tomcat 7. It should work in any other servlet container/Java EE server.</p>

<h4>
<a class="anchor" href="#db"><span class="octicon octicon-link"></span></a>DB</h4>

<p>In-memory dummy service is used instead of a DB.</p>

<h4>
<a class="anchor" href="#browser-compatibility"><span class="octicon octicon-link"></span></a>Browser compatibility</h4>

<p>The application was tested in four major browsers: FireFox, Opera, Chrome and IE (on Linux and Windows).</p>

<h4>
<a class="anchor" href="#import-to-eclipse"><span class="octicon octicon-link"></span></a>Import to Eclipse</h4>

<p>After importing the three Maven projects to Eclipse, change the encoding to <code>UTF-8</code> in the properties of localisation files (<code>messages_ru.properties</code> and <code>messages.properties</code>). Spring MVC is configured to read these files in <code>UTF-8</code>.</p>

</div>

</t:master-page>