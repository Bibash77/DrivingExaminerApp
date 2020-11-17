<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="userList" value="${userList}" />
<jsp:include page="header.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: Bibash Bogati
  Date: 11/15/2020
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
          background-color: beige;
        }
    </style>
</head>
<body>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Users</h1>
    <p class="lead">Click on Card to see the answers given by user</p>
</div>

<div class="container">
    <div class="row">
       <c:forEach items="${userList}" var="user">
           <div class="col-md-4">
           <div class="card mb-4 shadow-sm border-primary" style="height: 350px">
               <div class="card-header">
                   <img height="100px" alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="profile-image1" class="img-circle img-responsive">

               </div>
               <div class="card-body">
                   <h1 class="card-title pricing-card-title">${user.userName}</h1>
                   <ul class="list-unstyled mt-3 mb-4">
                       <li>User Type: ${user.userType}</li>
                       <c:if test="${user.answers == null}"><li><b>User Has Not Taken Exam</b></li></c:if>
                       <c:if test="${user.answers != null}">
                           <li><b>Exam attended.</b></li>
                       </c:if>
                   </ul>
                   <c:if test="${user.answers != null && user.userType eq 'USER'}"> <a href="${pageContext.request.contextPath}/exam/${user.id}"><button type="button" class="btn btn-lg btn-block btn-primary">View Answers</button>
                   </a>    </c:if></div>
           </div>
           </div>
       </c:forEach>
    </div>
</div>
</body>
</html>
<script>

</script>