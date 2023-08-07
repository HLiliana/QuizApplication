<html>
<head>
<link rel="stylesheet" href="style2.css">
    <Title> Update quiz </title>
</head>
<body>



<h1 style="color:black"> Update quiz by name </h1>
<form action="updateQuizByName.jsp" method="post">
<div class="form-outline mb-4">
                             <input type="text" name="name" value="Name..." onclick="this.value=''" required/>
                             <br/>
                         </div>
    <div class="form-outline mb-4">
                             <input type="text" name="newName" value="New name..." onclick="this.value=''" />
                             <br/>
                         </div>
    <div class="form-outline mb-4">
               <input type="text" name="newCategory" value="New category..." onclick="this.value=''" />
               <br/>
                   </div>

   <div class="form-outline mb-4">
                <input type="text" name="newDifficulty" value="New difficulty..." onclick="this.value=''" />
                <br>
                    </div>
                    <br>
                <input type="submit" value="Update quiz by name"/>
    </form>


</body>
</html>