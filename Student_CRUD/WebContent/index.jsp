<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Concept Solutions</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet" href="include/bootstrap.css"/>
    <script src="include/jquery.min.js"></script>
    <script src="include/bootstrap.js"></script>

    <style type="text/css">
        .wrapper{
            width: 650px;
            margin: 0 auto;
        }
        .page-header h2{
            margin-top: 0;
        }
        table tr td:last-child a{
            margin-right: 15px;   
        }
    </style>
    
    <script type="text/javascript">
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
    
</head>
<body>
    <div class="wrapper">

      <!--
        https://www.w3schools.com/howto/howto_website_bootstrap4.asp
        https://www.w3schools.com/bootstrap/bootstrap_grid_system.asp *
        
          Rows must be placed within a .container (fixed-width) or .container-fluid (full-width) for proper alignment and padding


          https://getbootstrap.com/docs/3.4/css/

       -->


        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

                  <!-- 
                  https://www.w3schools.com/howto/howto_css_clearfix.asp

                  https://getbootstrap.com/docs/4.1/utilities/clearfix/
                  -->
                    <div class="page-header clearfix">

                      <!--
                        https://www.w3schools.com/bootstrap/bootstrap_ref_css_helpers.asp
                      -->

                        <h2 class="pull-left">Student Mark Details</h2>

                        <!--
                        https://www.w3schools.com/bootstrap/bootstrap_buttons.asp
                        https://www.w3schools.com/bootstrap/bootstrap_ref_css_buttons.asp
                        -->

                        <a href="create.jsp" class="btn btn-success pull-right">Add New Student</a>
                    </div>
                    <!--

                    https://www.w3schools.com/bootstrap/bootstrap_ref_css_tables.asp
                    https://getbootstrap.com/docs/4.0/content/tables/
                    -->
                    <table class='table table-bordered table-striped'>
                              <thead>
                                   <tr>
                                        <th>Student ID</th>
                                       <th>Name</th>
                                       <th>Mark 1</th>
                                       <th>Mark 2</th>
                                       <th>Mark 3</th>
                                       <th>Total</th>
                                       <th>Result</th>
                                       <th></th>
                                   </tr>
                                </thead>
                             <tbody>
                               <tr>
                                      <td></td>
                                     <td></td>
                                    <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                     <td>
                      <!--

                    https://www.w3schools.com/bootstrap/bootstrap_tooltip.asp
                    https://www.w3schools.com/bootstrap/bootstrap_ref_js_collapse.asp
                      -->


               <a href='read.jsp?id=' title='View Record' data-toggle='tooltip'>

                <!--
                    https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp
                    https://getbootstrap.com/docs/3.3/components/
                -->
                         <span class='glyphicon glyphicon-eye-open'></span>
               </a>

                <a href='update.jsp?id=' title='Update Record' data-toggle='tooltip'>
                        <span class='glyphicon glyphicon-pencil'></span>
                </a>

                <a href='delete.jsp?id=' title='Delete Record' data-toggle='tooltip'>
                  <span class='glyphicon glyphicon-trash'></span>
                </a>
                  

                                      </td>
                                  </tr>

 <tr>
                                      <td></td>
                                     <td></td>
                                    <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                     <td>
                      <!--

                    https://www.w3schools.com/bootstrap/bootstrap_tooltip.asp
                    https://www.w3schools.com/bootstrap/bootstrap_ref_js_collapse.asp
                      -->


               <a href='read.jsp?id=' title='View Record' data-toggle='tooltip'>

                <!--
                    https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp
                    https://getbootstrap.com/docs/3.3/components/
                -->
                         <span class='glyphicon glyphicon-eye-open'></span>
               </a>

                <a href='update.jsp?id=' title='Update Record' data-toggle='tooltip'>
                        <span class='glyphicon glyphicon-pencil'></span>
                </a>

                <a href='delete.jsp?id=' title='Delete Record' data-toggle='tooltip'>
                  <span class='glyphicon glyphicon-trash'></span>
                </a>
                  

                                      </td>
                                  </tr>

                                   <tr>
                                      <td></td>
                                     <td></td>
                                    <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                     <td>
                      <!--

                    https://www.w3schools.com/bootstrap/bootstrap_tooltip.asp
                    https://www.w3schools.com/bootstrap/bootstrap_ref_js_collapse.asp
                      -->


               <a href='read.jsp?id=' title='View Record' data-toggle='tooltip'>

                <!--
                    https://www.w3schools.com/bootstrap/bootstrap_ref_comp_glyphs.asp
                    https://getbootstrap.com/docs/3.3/components/
                -->
                         <span class='glyphicon glyphicon-eye-open'></span>
               </a>

                <a href='update.jsp?id=' title='Update Record' data-toggle='tooltip'>
                        <span class='glyphicon glyphicon-pencil'></span>
                </a>

                <a href='delete.jsp?id=' title='Delete Record' data-toggle='tooltip'>
                  <span class='glyphicon glyphicon-trash'></span>
                </a>
                  

                                      </td>
                                  </tr>




                              </tbody>                           
                          </table>
                          <!-- 
                          https://www.w3schools.com/bootstrap/bootstrap_typography.asp

                          https://getbootstrap.com/docs/4.0/content/typography/

                          https://www.w3schools.com/tags/tag_em.asp
                          -->
                            <p class='lead'><em>No records were found.</em></p>
                 
                </div>
            </div>        
        </div>
    </div>
</body>
</html>