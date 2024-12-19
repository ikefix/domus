<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background: #fff;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .container h1 {
            font-size: 2.5em;
            color: #4caf50;
            margin-bottom: 10px;
        }
        .container p {
            font-size: 1.2em;
            color: #555;
        }
        .container .icon {
            font-size: 50px;
            color: #4caf50;
            margin-bottom: 20px;
        }
        .container button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="icon">✔️</div>
        <h1>Payment Successful!</h1>
        <p>Thank you for your payment. Your transaction was completed successfully.</p>
        <p>You will be matched to minimum of 6 Agents withing 1-3 days</p>
        <button onclick="goToDashboard()">Go to Website</button>
    </div>

    <script>
        function goToDashboard() {
            // Redirect to the dashboard or homepage
            window.location.href = "http://localhost/domus/"; // Replace with your actual URL
        }
    </script>
</body>
</html>
