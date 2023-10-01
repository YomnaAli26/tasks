<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .error {color: #FF0000}
    </style>
    <title>First</title>
</head>
<body>
<?php
session_start();
    $name = $email = $phone = "";
    $nameErr = $emailErr = $phoneErr = "";
    if ($_SERVER['REQUEST_METHOD'] == "POST")
    {
        if (empty($_POST['name']))
        {
            $nameErr = "Name is Required";

        }
        else
        {
            $name = test_input($_POST['name']);
            if (!preg_match("/^[a-zA-Z-']*$/",$name))
            {
                $nameErr = "Only letters and white space allowed";
            }
        }
        if (empty($_POST['email']))
        {
            $emailErr = "Email is Required";
        }
        else
        {
            $email = test_input($_POST['email']);
            if (!filter_var($email,FILTER_VALIDATE_EMAIL))
            {
                $emailErr = "invalid email format";
            }
        }
        if (empty($_POST['phone']))
        {
            $phoneErr = "Phone is Required";
        }
        else
        {
            $phone = test_input($_POST['phone']);
            if (!is_numeric($phone))
            {
                $phoneErr = "You Must Enter only Numbers";
            }
            $_SESSION['user'] = [$name,$phone,$email];
            header("location:secondPage.php");

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
        <label for="exampleInputEmail1" class="form-label">Name</label>
        <input type="text" class="form-control" name="name" id="exampleInputEmail1" placeholder="Enter Your Name" aria-describedby="emailHelp">
        <span class="error"><?Php echo $nameErr;?></span>
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Phone Number</label>
        <input type="text" class="form-control" name="phone" placeholder="Enter Your Phone number" id="exampleInputPassword1">
        <span class="error"><?Php echo $phoneErr;?></span>

    </div>
    <div class="mb-3">
        <label for="exampleInputEmail2" class="form-label">Email</label>
        <input type="email" name="email" class="form-control" aria-placeholder="Enter Your Email" id="exampleInputEmail2" placeholder="Enter Your Name" aria-describedby="emailHelp">
        <span class="error"><?Php echo $emailErr;?></span>
    </div>

    <button type="submit" name="subSend" class="btn btn-primary">Next</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>