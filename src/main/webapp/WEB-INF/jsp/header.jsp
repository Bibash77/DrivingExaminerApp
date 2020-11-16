<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="Loan Processing" />
<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon"/>
    <title>Driving Center</title>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/dist/js/vendor/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.4.1.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/dist/css/flat-ui.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/dist/css/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/loan-aa.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/custom-css.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/radInfoBox.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="/path/to/bootstrap/js/bootstrap.min.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Nepal Driving Center</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="${pageContext.request.contextPath}/home">Home</a>
            <a class="p-2 text-dark" href="${pageContext.request.contextPath}/index">Logout</a>
        </nav>
    </div>

  <%--  <script>
        $(document).ready(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/user/all-cookies",
                type:"get",
                contentType:"application/json",
                success:function(data){
                    console.log(data);
                    if(data == null || data.userId == null){
                        window.location.href = "/index"
                    }
                },

            });
        })
    </script>--%>
</head>