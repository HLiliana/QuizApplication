<html>
<body>
<head>
<link rel="stylesheet" href="style2.css">
<title>Error page</title>
</head>
<h1 style="color:black"> You have entered a wrong quiz id </h1>
<h1 style="color:black">Please use a valid Id</h1>

<form action="findQuizById.jsp">
     <div class="form-outline mb-4">
                 <input type="text" name="id" value="Id..." onclick="this.value=''"/><br/>
             </div>
     <br/>
        <input type="submit" value="Find quiz" class="btn btn-primary btn-block"/>
        </form>

<form action="mainQuiz.jsp" method="get">
<input type="submit" value="To Quiz Page">


</body>
</html>