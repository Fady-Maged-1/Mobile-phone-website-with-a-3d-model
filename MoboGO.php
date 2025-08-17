<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mobile_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT name, image_url FROM brands";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Mobiles Category</title>
     <link rel="icon" type="image/png" href="Pics and vid/ChatGPT Image Apr 18, 2025, 03_26_46 PM.png">
    <link rel="stylesheet" href="Style.css" />
</head>

<body>
    <div class="top">
        <a href="MoboGO.php">
            <img src="Pics and vid/ChatGPT Image Apr 18, 2025, 03_26_46 PM.png" width="8%" />
        </a>
        <div class="Links">
            <a href="https://www.linkedin.com/in/fady-maged-a05bba297/" target="_blank">Contact me</a>
            <div>
                <label class="switch">
                    <input type="checkbox" id="mode-toggle" onclick="changeVideo()" />
                    <span class="slider">
                        <span class="icon sun">☀️</span>
                        <span class="icon moon">🌙</span>
                    </span>
                </label>
            </div>
            <a href="login.php">
                <button class="btn-login">Log In/Sign In</button>
            </a>
        </div>
    </div>

    <br />
    <ul class="container">
        <?php
      if ($result->num_rows > 0) {
         while ($row = $result->fetch_assoc()) {
            // fetch_assoc() دي بتجيب رو واحد بس 
            $brandName = htmlspecialchars($row['name']); 
            // htmlspecialchars دي عشان لو الاسم فيه سبيشيال كاركتار 
            $brandImage = $row['image_url'] ?? '';
            $brandLink = "mobiles.php?brand=" . urlencode($brandName);
            // urlencode دي بتخلي الاسم ينفع يتحط في الرابط عشان لو فيه مسافه او حاجه 
            echo "<li class='card'>";
        if (!empty($brandImage)) {
             echo "<img src='$brandImage' alt='$brandName Image' />";
            } else {
                echo "<div class='missing-image'>No image found</div>";
            }
            echo "<a href='$brandLink'>$brandName</a>";
            echo "</li>";
            }
        } else {
                 echo "<li class='no-items'>There is nothing now, we will be back soon!</li>";
                 }

        ?>
    </ul>

    <br /><br />
    <video autoplay muted loop class="vid" id="vid">
        <source src="Pics and vid/0fbce473a7f05334b8859b2765913ddaIntroducing_iPhone_16_Pro_Apple (online-video-cutter.com).mp4" />
    </video>


    <script src="Style.js"></script>
</body>

</html>


