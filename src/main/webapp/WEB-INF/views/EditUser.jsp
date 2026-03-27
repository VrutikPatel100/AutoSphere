<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit User</title>

<style>
body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background:#eef2f7; color:#333; margin:0; padding:0; }
h2 { text-align:center; margin:40px 0 20px; color:#2c3e50; }
form { max-width:700px; margin:20px auto; background:#fff; padding:30px; border-radius:12px; box-shadow:0 6px 20px rgba(0,0,0,0.1); }
table { width:100%; border-collapse:collapse; }
td { padding:12px 10px; vertical-align:middle; }
td:first-child { font-weight:600; width:30%; color:#555; }
input[type="text"], input[type="email"], input[type="number"], input[type="password"], select, input[type="file"], input[type="date"] { width:100%; padding:10px; border:1px solid #ccc; border-radius:6px; font-size:14px; box-sizing:border-box; transition:border 0.3s; }
input:focus { border-color:#3498db; outline:none; }
button { background:#3498db; color:#fff; padding:14px 30px; font-size:16px; border:none; border-radius:8px; cursor:pointer; font-weight:600; }
button:hover { background:#2980b9; }
a { display:block; text-align:center; margin-top:20px; text-decoration:none; color:#3498db; font-weight:bold; }
a:hover { text-decoration:underline; }
.profile-preview img { width:120px; height:120px; object-fit:cover; border-radius:50%; border:1px solid #ccc; margin-bottom:10px; }
.note { font-size:12px; color:#888; }
</style>

</head>
<body>

<h2>Edit User</h2>

<form action="updateUser" method="post" enctype="multipart/form-data">

    <input type="hidden" name="userId" value="${user.userId}" />

    <table>

        <tr>
            <td>First Name</td>
            <td><input type="text" name="firstName" value="${user.firstName}" /></td>
        </tr>

        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastName" value="${user.lastName}" /></td>
        </tr>

        <tr>
            <td>Email</td>
            <td><input type="email" name="email" value="${user.email}" /></td>
        </tr>

        <tr>
            <td>Password</td>
            <td><input type="password" name="password" value="${user.password}" /></td>
        </tr>

        <tr>
            <td>Role</td>
            <td>
                <select name="role">
                    <option value="admin" ${user.role == 'admin' ? 'selected' : ''}>Admin</option>
                    <option value="user" ${user.role == 'user' ? 'selected' : ''}>User</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Gender</td>
            <td>
                <input type="radio" name="gender" value="male" ${user.gender == 'male' ? 'checked' : ''}/> Male
                <input type="radio" name="gender" value="female" ${user.gender == 'female' ? 'checked' : ''}/> Female
            </td>
        </tr>

        <tr>
            <td>Birth Year</td>
            <td><input type="number" name="birthYear" value="${userDetail.birthYear}" /></td>
        </tr>

        <tr>
            <td>Contact Number</td>
            <td><input type="text" name="contactNum" value="${userDetail.contactNum}" /></td>
        </tr>

        <tr>
            <td>Profile Pic</td>
            <td>
                <div class="profile-preview">
                    <c:if test="${not empty user.profilePicURL}">
                        <img src="${user.profilePicURL}" alt="Profile Picture"/>
                    </c:if>
                </div>
                <input type="file" name="profilePic" accept="image/*"/>
                <div class="note">Upload new image to replace existing one.</div>
            </td>
        </tr>

        <tr>
            <td>OTP</td>
            <td><input type="text" name="otp" value="${user.otp}" /></td>
        </tr>

        <tr>
            <td>Active</td>
            <td>
                <select name="active">
                    <option value="true" ${user.active ? 'selected' : ''}>Active</option>
                    <option value="false" ${!user.active ? 'selected' : ''}>Inactive</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Created At</td>
            <td><input type="date" name="createdAt" value="${user.createdAt}" /></td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update User</button>
            </td>
        </tr>

    </table>

</form>

<a href="listUser">Back to List</a>

</body>
</html>
