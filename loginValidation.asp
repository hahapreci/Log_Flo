<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Login Validation</title>
</head>
<body>
    <%user = request.Form("name")
        Session("user") = user
      if user = "Precious" then 
        response.Redirect("LandingPage.html")  
      else
        response.Write("Not accepting new users")
      end if
       %>
</body>
</html>