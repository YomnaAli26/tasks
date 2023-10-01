<?php
//INSERT
function addData($table,$cols,$vals)
{
    $mySqlLink = mysqli_connect("localhost","root","","task");
    $query = "INSERT INTO $table ($cols) VALUES ($vals)";
    $boolInsert = mysqli_query($mySqlLink,$query) ;
    if ($boolInsert)
    {
        return true;
    }
    else
    {
        return false;
    }
    mysqli_close($mySqlLink);

}
//SELECT
function getData($cols,$table,$cond)
{
    $mySqlLink = mysqli_connect("localhost","root","","task");
    $query = "SELECT $cols FROM $table WHERE $cond";
    $qSelect = mysqli_query($mySqlLink,$query);

    if (mysqli_num_rows($qSelect) > 0)
    {
        return $qSelect;
    }
    else
    {
        echo mysqli_error($mySqlLink);
    }
    mysqli_close($mySqlLink);
}

//UPDATE
function editData($table,$colsAndVals,$cond)
{
    $mySqlLink = mysqli_connect("localhost","root","","task");
    $query = "UPDATE $table SET $colsAndVals WHERE $cond";
    $qUpdate = mysqli_query($mySqlLink,$query);
    if (mysqli_affected_rows($mySqlLink))
    {
        return true;
    }
    else
    {
        return false;
    }
    mysqli_close($mySqlLink);

}


//DELETE
function deleteData($table,$cond)
{
    $mySqlLink = mysqli_connect("localhost","root","","task");
    $query = "DELETE FROM $table WHERE $cond";
    $qDelete  = mysqli_query($mySqlLink,$query);
    if (mysqli_affected_rows($mySqlLink) > 0)
    {
        return true;
    }
    else
    {
        return  false;
    }
    mysqli_close($mySqlLink);


}
