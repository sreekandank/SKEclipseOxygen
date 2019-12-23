<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Concept Solutions</title>
    <link rel="stylesheet" href="include/bootstrap.css">
   
    <style type="text/css">
        .wrapper{
            width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h2>Create Student Record</h2>
                    </div>
                    <p>Please fill this form and submit to add student record to the database.</p>
                    <form action="?>" method="post">
                        
                        <div class="form-group">
                            <label>Student ID</label>
                            <input type="text" name="studentid" class="form-control" value="101">
                            <span class="help-block"></span>
                        </div>


                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="ahil">
                            <span class="help-block" ></span>
                        </div>
                        

                        <div class="form-group">
                            <label>Mark 1</label>
                            <input type="text" name="mark1" class="form-control" value="75">
                            <span class="help-block"></span>
                        </div>

                        <div class="form-group">
                            <label>Mark 2</label>
                            <input type="text" name="mark2" class="form-control" value="100">
                            <span class="help-block"></span>
                        </div>

                    <div class="form-group">
                            <label>Mark 3</label>
                            <input type="text" name="mark3" class="form-control" value="100">
                            <span class="help-block"></span>
                        </div>




                        <input type="submit" class="btn btn-primary" value="Submit">
                        <a href="index.jsp" class="btn btn-default">Cancel</a>
                    </form>
                </div>
            </div>        
        </div>
    </div>
</body>
</html>