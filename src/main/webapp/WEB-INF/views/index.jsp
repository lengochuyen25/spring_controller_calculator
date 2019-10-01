<%--
  Created by IntelliJ IDEA.
  User: huyen
  Date: 25/09/2019
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="/calculator">
    <fieldset>
        <legend>Calculator</legend>
        <table>
            <tr>
                <td>First operand</td>
                <td><input name="first" type="text"></td>
            </tr>
            <tr>
                <td>Operator:</td>
                <td>
                    <select name="operator">
                        <option name="addition" value="+">Addition</option>
                        <option name="subtraction" value="-">Subtraction</option>
                        <option name="multiplication" value="*">Multiplication</option>
                        <option name="division" value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand:</td>
                <td><input name="second" type="text"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="calculate"></td>
            </tr>
        </table>
    </fieldset>

</form>
</body>
</html>
