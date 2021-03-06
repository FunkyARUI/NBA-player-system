<%--
  Created by IntelliJ IDEA.
  User: lsr
  Date: 16/10/8
  Time: 上午10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>My Favorate List</title>


    <link rel="stylesheet" href="css/reset.css">


    <link rel="stylesheet" href="css/styletable.css">





</head>

<body>

<section> <!--for demo wrap-->
    <h1>${sessionScope.get("username")}'s favorate List</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>age</th>
                <th>pos</th>
                <th>height</th>
                <th>weight</th>
                <th>birthday</th>
                <th>experience</th>
                <th>Say GoodBye!</th>
            </tr>
            </thead>
        </table>
    </div>
    <div  class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <c:forEach items="${requestScope.get('playerlist')}" var="player">
                <tr>
                    <td>${player.getP_id()}</td>
                    <td><form method="post" action="${pageContext.request.contextPath}/playerdetail?id=${player.getP_id()}">
                        <input type="submit" value="${player.getP_name()}">
                    </form> </td>
                    <td>${player.getAge()}</td>
                    <td>${player.getPos()}</td>
                    <td>${player.getHeight()}</td>
                    <td>${player.getWeight()}</td>
                    <td>${player.getBirthdate()}</td>
                    <td>${player.getExp()}</td>
                    <td><a href="${pageContext.request.contextPath}/userlike?rid=${player.getP_id()}"><i>remove</i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="js/index.js"></script>
<div class="made-with-love">
    Thanks for using <i>NBA</i> DATABASE SYSTEM <br/>
    <a target="_blank" href="${pageContext.request.contextPath}/user"><i>Back Home</i></a>
    <a target="_blank" href="${pageContext.request.contextPath}/user?method=logout"><i>Log Out</i></a>

</div>


</body>
</html>
