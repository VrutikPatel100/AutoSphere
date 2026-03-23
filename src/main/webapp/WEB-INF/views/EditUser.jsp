<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>

<h2>Edit User</h2>

<form action="updateUser" method="post">

    <!-- Hidden Fields -->
    <input type="hidden" name="userId" value="${user.userId}" />

    <table border="1" cellpadding="10">

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
            <td><input type="text" name="password" value="${user.password}" /></td>
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
            <td><input type="number" name="birthYear" value="${user.birthYear}" /></td>
        </tr>

        <tr>
            <td>Contact Number</td>
            <td><input type="text" name="contactNum" value="${user.contactNum}" /></td>
        </tr>

        <tr>
            <td>Profile Pic URL</td>
            <td><input type="text" name="profilePicURL" value="${user.profilePicURL}" /></td>
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
            <td>
                <input type="date" name="createdAt" value="${user.createdAt}" />
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <button type="submit">Update User</button>
            </td>
        </tr>

    </table>

</form> 

<br>

<a href="listUser">Back to List</a>

</body>
</html>
