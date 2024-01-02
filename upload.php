<?php
   if(isset($_FILES['image']))
   {
    $upload="";
              $file_name = $_FILES['image']['name'];
      $file_size =$_FILES['image']['size'];
      $file_tmp =$_FILES['image']['tmp_name'];
      $file_type=$_FILES['image']['type'];
      $file_ext=explode('.',$_FILES['image']['name']);
      $extensions=array("jpeg","jpg","png");
     
 if(in_array($file_ext[1],$extensions)===true && $file_size < 2097152)
              {
                          move_uploaded_file($file_tmp,"uploads/".$file_name);
                          $upload='<div class="alert alert-success">
    <strong>Success!</strong> File Upload Successfully.
  </div>';
      }
     
      else
              {
                          $upload=' <div class="alert alert-danger">
    <strong>Error:</strong> File Extension should be .jpeg,jpg,png or File Size less than 2MB.
  </div>';
              }                                 
   }
   ?>
   