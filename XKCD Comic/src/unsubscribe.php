<?php
session_start();
require 'functions.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['unsubscribe_email'])) {
        $email = $_POST['unsubscribe_email'];
        $code = generateVerificationCode();
        $_SESSION['unsubscribe_email'] = $email;
        $_SESSION['codes'][$email] = $code;
        sendUnsubscribeConfirmationEmail($email, $code);
        echo "Verification code sent to $email <br>";
    }
    else if (isset($_POST['verification_code'])) {
        $email = $_SESSION['unsubscribe_email'];
        $code = $_SESSION['codes'][$email];
        if (verifyCode($email, $code)) {
            unsubscribeEmail($email);
            echo 'SuccessFully Unsubscribed. You will not get be getting XKCD Comic anymore.';
            
            unset($_SESSION['unsubscribe_email']);
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
    <title>Unsubscribe for XKCD Comic</title>
</head>
<body>
    <h2>Welcome to Unsubscribe Page</h2>
    <?php if (!isset($_SESSION['unsubscribe_email'])) : ?>
        <form action="unsubscribe.php" method="post">
            <input type="email" name="unsubscribe_email" required placeholder="Enter your email">
            <button id="submit-unsubscribe">Unsubscribe</button>
        </form>
    <?php else: ?>
        <form action="unsubscribe.php" method="post">
            <input type="text" name="verification_code" maxlength="6" required placeholder="Enter verification code">
            <button id="submit-verification">Verify</button>
        </form>
    <?php endif; ?>
</body>
</html>
