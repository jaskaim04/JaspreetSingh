<?php
session_start();


include 'dbinfo.php';


$con = mysqli_connect($host, $username, $password, $dbname);


if (!$con) {
    die("Connection failed!" . mysqli_connect_error());
}


$login_message = ""; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    if (isset($_POST["username"]) && isset($_POST["password"])) {
        $username = $_POST["username"];
        $password = $_POST["password"];

        
        $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
        $result = mysqli_query($con, $query);

        if (mysqli_num_rows($result) == 1) {
            
            $_SESSION['username'] = $username;
            header("Location: admin-index.php");
            exit();;
        } else {
            
            $login_message = "Invalid username or password.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        font-family: Arial, sans-serif;
    }

    /* Container for image fitting */
    .image-container {
        position: fixed;
        top: 0;
        left: 0;
        width: 100vw;
        height: 100vh;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        background-image: url('image1.jpg'); /* Background image */
        background-size: cover;
        background-position: center;
    }

    .login-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
    }
    .login-box {
        text-align: center;
        border: 2px solid #ccc;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        max-width: 400px;
        width: 80%;
    }
    h2 {
        margin-top: 0;
        color: #333;
    }
    label {
        display: block;
        margin-bottom: 5px;
        color: #666;
        font-weight: bold;
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        background-color: #400b0d;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .error-message {
        color: #ff0000;
        margin-top: 10px;
    }
</style>
</head>
<body>

<!-- Container for image fitting -->
<div class="image-container">
    <div class="login-container">
        <div class="login-box">
            <h2>Welcome Rider</h2>
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <label for="username">User id:</label><br>
                <input type="text" id="username" name="username" required><br>
                <label for="password">Password:</label><br>
                <input type="password" id="password" name="password" required><br><br>
                <input type="submit" value="Login">
            </form>
            <div class="error-message"><?php echo $login_message; ?></div>
        </div>
    </div>
</div>

</body>
</html>
