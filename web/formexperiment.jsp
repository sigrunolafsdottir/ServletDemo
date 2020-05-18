<%--
  Created by IntelliJ IDEA.
  User: s_ola
  Date: 2020-04-16
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>A small form</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  </head>
  <body>
  <!-- form id="holaAmigos" action="holaAmigos" method="post" -->
  <form id="holaAmigos"  method="post" >
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname" value="John"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname" value="Doe"><br><br>
    <input type="button" id="submit" value="Submit">
  </form>
  <p></p>
  <div id="textenHamnarHar">hej</div>
  </body>
</html>

<script>
  $(function() {
    $(document).ready(function () {
      $("#submit").click(function () {
        $.ajax({
          url: "http://localhost:8080/ServletDemo_war_exploded/holaAmigos",
          data: $('#holaAmigos').serialize(),
          type: 'POST',
          async: false
        })
                .done(function (response) {
                  console.log(response);

                  document.getElementById("textenHamnarHar").innerHTML = response + "\n";
                  return false;
                })
      });
    });
  });
</script>

