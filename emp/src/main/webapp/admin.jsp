<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <meta charset="ISO-8859-1">
  <title>users</title>
</head>
    <div class="container">
    <br>
    <h1>Employees</h1>
    <hr>
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th>ID #</th>
                <th>Name</th>
                <th>Level</th>
                <th>Birthday</th>
                <th>Base Salary</th>
                <th>Net Salary</th>
                <th>Username</th>
                <th>Email</th>
                <th>Addresses</th>
                <th>Deletion</th>
                <th>Edit</th>
            </tr>
        </thead>
        
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <th scope="row"><c:out value="${user.emp.id}"/></th></th>
                    <td><c:out value="${user.emp.name}"/></td>
                    <td><c:out value="${user.emp.level}"/></td>
                    <td><c:out value="${user.emp.birthday}"/></td>
                    <td><c:out value="${user.emp.baseSalary_}"/></td>
                    <td><c:out value="${user.emp.netSalary}"/></td>
                    <td><c:out value="${user.username}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td>
                        <c:forEach items="${user.emp.addresses}" var="address">
                            <p>
                                <c:out value="${address.houseNo}"/>
                                <c:out value="${address.street}"/>
                                <c:out value="${address.city}"/>
                                <c:out value="${address.zipCode}"/>
                            </p>
                        </c:forEach>
                    </td>
                    <td>
                        <form action="/employee/${user.emp.id}/delete" method="GET">
                            <input type="submit" value="Delete">
                        </form>
                    </td>
                    <td>
                        <form action="/employee/${user.emp.id}/edit" method="GET">
                            <input type="submit" value="Edit">
                        </form>
                    </td>

                    
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>

    <!-- <a href="/addCourse"><h1>Add Course</h1></a>
    <hr>

	<a href="/logout">Logout</a>
    </div> -->
</html>