<?php
$dbhost = 'localhost';
$dbname = 'domus';
$dbuser = 'root';
$dbpass = '';
try {
    $pdo = new PDO("mysql:host={$dbhost};dbname={$dbname}", $dbuser, $dbpass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch( PDOException $exception ) {
    echo "Connection error :" . $exception->getMessage();
}
define("BASE_URL", "http://localhost/domus/");
define("ADMIN_URL", BASE_URL."admin/");

define("SMTP_HOST", "sandbox.smtp.mailtrap.io");
define("SMTP_PORT", "2525");
define("SMTP_USERNAME", "72252db7b4703c");
define("SMTP_PASSWORD", "339a54cb980eac");
define("SMTP_ENCRYPTION", "tls");
define("SMTP_FROM", "support@domus.com");
?>  