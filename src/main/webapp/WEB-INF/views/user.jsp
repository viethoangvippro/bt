<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
   <head>
      <title>Login</title>
   </head>
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

   <body>

   <h2>User Information</h2>
    <c:if test="${message != null}">
          <span class="message">${message}</span>
      </c:if>
      
      <form:form method = "POST" action = "addUser" modelAttribute="signUpForm">
         <table>
            <tr>
               <td><form:label path = "username">User Name</form:label></td>
               <td><form:input path = "username" cssClass="form-control" /></td>
            </tr>
            <tr>
               <td><form:label path = "password">Password</form:label></td>
               <td><form:password path = "password" cssClass="form-control"/></td>
            </tr>  
           	  
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit" class="btn btn-primary"/>
               </td>
            </tr>
         </table>  
      </form:form>
   </body>
</html>