<?php

session_start();
require 'functions.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['email'])) {
        $email = $_POST['email'];
        $code = generateVerificationCode();
        $_SESSION['email'] = $email;
        $_SESSION['codes'][$email] = $code;
        sendVerificationEmail($email, $code);
        echo "Verification code sent to $email <br>";
    }
    else if (isset($_POST['verification_code'])) {
        $email = $_SESSION['email'];
        $code = $_SESSION['codes'][$email];
        if (verifyCode($email, $code)) {
            if (registerEmail($email) == true) {
                echo "<br> Email Registered. You can Close this page. Now you will be getting XKCD Comic every 24 hours. <br>";
            }
            
            unset($_SESSION['email']);
            unset($_SESSION['codes'][$email]);
      
            exit();            
        } else {
            echo "Invalid verification code or Email";
        }
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register for XKCD Comic</title>
</head>
<body>
    <h2>Register your Email</h2>
    <?php if (!isset($_SESSION['email'])) : ?>
        <form action="index.php" method="post">
            <input type="email" name="email" required placeholder="Enter your email">
            <button id="submit-email">Submit</button>
        </form>
    <?php else: ?>
        <form action="index.php" method="post">
            <input type="text" name="verification_code" maxlength="6" required placeholder="Enter verification code">
            <button id="submit-verification">Verify</button>
        </form>
    <?php endif; ?>
</body>
</html>
