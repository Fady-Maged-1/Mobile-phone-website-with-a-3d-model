<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mobile_db"; 

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error){
 die("Connection failed: " . $conn->connect_error);
}

$brand_name = isset($_GET['brand']) ? $_GET['brand'] : '';
// isset($_GET['brand']) بتسال لو المتغير موجود لو موجود ناحد اسمه 
if ($brand_name === '') {
    echo "Brand not specified.";
    exit();
}

$sql_brand = "SELECT id FROM brands WHERE name = ?";
$stmt_brand = $conn->prepare($sql_brand);
// prepare دي بتجهز الجمله اللي اتعملت فوق في $sql_brand
$stmt_brand->bind_param("s", $brand_name);
// اربط اول سترينج تشوفه في $brand_name)
$stmt_brand->execute();
// نفد الجمله 
$result_brand = $stmt_brand->get_result();

if ($result_brand->num_rows > 0) {
    $brand = $result_brand->fetch_assoc();
    $brand_id = $brand['id'];

    $sql_mobiles = "SELECT * FROM mobiles WHERE brand_id = ?";
    $stmt_mobiles = $conn->prepare($sql_mobiles);
    $stmt_mobiles->bind_param("i", $brand_id);
    $stmt_mobiles->execute();
    $mobiles_result = $stmt_mobiles->get_result();
} else {
    echo "Brand not found.";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo htmlspecialchars($brand_name); ?> Phones</title>
    <link rel="stylesheet" href="market.css">
    <link rel="icon" type="image/png" href="Pics and vid/ChatGPT Image Apr 18, 2025, 03_26_46 PM.png">
</head>
<body>
    <script src="market.js"></script>

    <div class="top">
        <a href="MoboGO.php">
            <img src="Pics and vid/ChatGPT Image Apr 18, 2025, 03_26_46 PM.png" width="70">
        </a>

        <div class="Links">
            <a href="cart.html" target="_blank">
                <img src="Pics and vid/icons8-cart-50.png" width="50">
            </a>
            <div>
               
                <label class="switch">
                    <input type="checkbox" id="mode-toggle" onclick="changeVideo()">
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

    <img class="backg" src="Pics and vid/ChatGPT Image May 24, 2025, 12_37_32 AM.png">

    <h1><?php echo htmlspecialchars($brand_name); ?> Mobiles</h1>

    <ul class="container" type="none">
   <?php
while($mobile = $mobiles_result->fetch_assoc()) {
    $name = htmlspecialchars($mobile['name']);
    $price = htmlspecialchars($mobile['price']);
    $image = htmlspecialchars($mobile['image_url']);
    $urlName = urlencode($name); // لتفادي مشاكل الرموز والمسافات في الرابط
    $id = $mobile['id'];

    echo "
    <li class='card'>
        <a href='mobile_details.php?id=$id'>
            <div class='card-img' style=\"background-image: url('$image');\"></div>
        </a>
        <div class='info'>
            <h3>$name</h3>
            <p>\$$price</p>
            <button class='add-btn' onclick=\"add('$name', $price)\">Add to cart</button>
        </div>
    </li>
    ";
}
?>

    </ul>

    <footer class="footer">
        <div class="footer-content">
            <p>&copy; 2025 All rights reserved | Designed by Fady Maged</p>
            <div class="social-links">
                <a href="https://www.linkedin.com/in/fady-maged-a05bba297/" target="_blank">LinkedIn</a> 
            </div>
        </div>
    </footer>

</body>
</html>

<?php $conn->close(); ?>
