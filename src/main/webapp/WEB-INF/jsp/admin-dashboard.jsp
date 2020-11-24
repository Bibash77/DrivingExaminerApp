<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<input value="${user}" hidden id="sessionUser">
<%--
  Created by IntelliJ IDEA.
  User: Bibash Bogati
  Date: 11/8/2020
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DashBoard</title>
<%--css--%>
    <style>
        .bg-img {
            background-color: beige;
        }
    </style>
</head>
<body>
<div class="jumbotron text-center bg-img">
    <h1>Nepal Driving Center</h1>
    <p>Build your skill here!</p>
    <%--actions button will be shown if user type is administrator--%>
<c:if test="${user.userType eq 'ADMIN'}">
       <div class="row d-flex justify-content-center" id="admin-block" style="display:none;">
           <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
               Add User
           </button>
           <a href="${pageContext.request.contextPath}/view-answers?user.id">
               <button type="button" class="btn btn-danger ml-4">
                   View Answers
               </button>
           </a>
           <a href="${pageContext.request.contextPath}/index">
               <button type="button" class="btn btn-danger ml-4">
                   Logout
               </button>
           </a>
       </div>
</c:if>
    <%--action to be shown if user type is normal user--%>
<c:if test="${user.userType eq 'USER'}">
    <div class="row d-flex justify-content-center" id="user-block" style="display: none">
        <a href="${pageContext.request.contextPath}/exam/${user.id}">
            <button type="button" class="btn btn-primary ml-4" href="exam-form.jsp">
                Take Exam
            </button>
        </a>
        <a href="${pageContext.request.contextPath}/index">
            <button type="button" class="btn btn-danger ml-4">
                Logout
            </button>
        </a>
    </div>
</c:if>
</div>
<%--content--%>
<div class="container">
    <div class="row">
        <div class="card">
            <div class="card-body">
                <p class="justify-content-center">
                    Driving School Nepal is an online driving schools directory, intendent to provide you nearest and right driving school information, if you are looking to learn driving. Just choose your desired vehicle type and location,then get list of driving centres, compare their plan and pricing, sign upwith the best one.

                    Businesses are not just limited on word of mouth on todays date. Competition has been sky rocketing and internet has been playing exuberant role for any business to grow. We would like to invite all the driving schools in nepal to try our website and feel how our website makes differences in your business.

                    Initially we are only including all the driving schools, training centers, institutes located in kathmandu, Lalitpur, Bhaktapur only and have plan to target all around Nepal very soon.
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>

<!-- Modal to add user -->
<%--source: getbootstrap.com--%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="userName" class="col-form-label">Username:</label>
                        <input type="text" class="form-control" id="userName">
                    </div>
                    <div class="form-group">
                        <label for="userType" class="col-form-label">User Type:</label>
                        <select class="custom-select" id="userType">
                            <option selected>Select UserType</option>
                            <option value="ADMIN">Admin</option>
                            <option value="USER">User</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-form-label">Password:</label>
                        <input type="text" class="form-control" id="password">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="saveUser" onclick="registerUser()">Submit</button>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/user/all-cookies",
            type:"get",
            contentType:"application/json",
            success:function(data){
                console.log(data);
            },

        });
    })
</script>
<script>
    // function is triggered on click event of submit button
    function registerUser() {
        console.log(document.getElementById('userName').value);
        var user = {
            userName :  document.getElementById('userName').value,
            password : document.getElementById("password").value,
            userType : document.getElementById("userType").value
        };
        console.log(user);
        $.ajax({
            url:"${pageContext.request.contextPath}/user/register",
            type:"post",
            contentType:"application/json",
            data:JSON.stringify(user),
            success:function(data){
                console.log(data);
                $('#exampleModal').modal('hide');
                alert(data);
            },

        });

        function loadUrl(url) {
            window.location.href = '${pageContext.request.contextPath}/';
        }

    }
</script>
