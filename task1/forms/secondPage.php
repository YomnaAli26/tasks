
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .error {color: #FF0000}
    </style>
    <title>Second</title>
</head>
<body>
<?php
session_start();

require_once "../queries.php";
$name = $_SESSION['user'][0];
$phone = $_SESSION['user'][1];
$email = $_SESSION['user'][2];
$location = $age = $university = "";
$locationErr = $ageErr = $universityErr = "";
if ($_SERVER['REQUEST_METHOD'] == "POST")
{
    if (empty($_POST['location']))
    {
        $locationErr = "Location is Required";
    }
    else
    {
        $location = test_input($_POST['location']);
        if (!preg_match("/^[a-zA-Z-']*$/",$location))
        {
            $nameErr = "Only letters and white space allowed";
        }
    }
    if (empty($_POST['age']))
    {
        $ageErr = "Age is Required";
    }
    else
    {
        $age = test_input($_POST['age']);
        if (!is_numeric($age))
        {
            $ageErr = "You Must Enter a Number ";
        }
    }
    if (empty($_POST['university']))
    {
        $universityErr = "University is Required";
    }
    else
    {
        $university = test_input($_POST['university']);
        if (!preg_match("/^[a-zA-Z-']*$/",$university))
        {
            $nameErr = "Only letters and white space allowed";
        }
        $added_data = addData("users","name,phone,email,location,age,university","'$name','$phone','$email','$location','$age','$university'");
        if ($added_data)
        {
            header("location:../success.php");
        }


    }

}
function test_input($data)
{
    $data = trim($data);
    $data = stripcslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>

<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"])?>" method="post">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Location</label>
        <input type="text" class="form-control" name="location" id="exampleInputEmail1" placeholder="Enter Your Location" aria-describedby="emailHelp">
        <span class="error"><?php echo $locationErr;?></span>
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Age</label>
        <input type="text" class="form-control" name="age" placeholder="Enter Your Age" id="exampleInputPassword1">
        <span class="error"><?php echo $ageErr;?></span>

    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">University</label>
        <input type="text" class="form-control" name="university" aria-placeholder="Enter Your University" id="exampleInputEmail2" placeholder="Enter Your University" aria-describedby="emailHelp">
        <span class="error"><?php echo $universityErr;?></span>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
