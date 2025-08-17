<?php
$conn = new mysqli("localhost", "root", "", "mobile_db");
if ($conn->connect_error) {
    die("cant connect: " . $conn->connect_error);
}

$mobile_id = isset($_GET['id']) ? intval($_GET['id']) : 0;
if ($mobile_id == 0) {
    die("Error: No mobile ID provided");
}

$sql = "SELECT m.*, s.*
-- هاتلي كل الاعمده اللي في موبايل و موبايل سبيشيس 
        FROM mobiles m
        JOIN mobile_specs s ON m.id = s.mobile_id
        -- هاتلي الصفوف اللي فالجدول s المرتبطه بكل موبايل في m
        WHERE m.id = $mobile_id";
        // بحيث تجيب المواصفات اللي للجهاز ده بس 

$result = $conn->query($sql);
if ($result->num_rows == 0) {
    die("Error: Mobile not found");
}

$mobile = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= htmlspecialchars($mobile['name']) ?> - Details</title>
    <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
      <link rel="icon" type="image/png" href="Pics and vid/ChatGPT Image Apr 18, 2025, 03_26_46 PM.png">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: radial-gradient(circle at 80% 30%, rgba(0, 123, 255, 0.4), #000 60%);
            font-family: 'Segoe UI', sans-serif;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .container {
            display: flex;
            max-width: 1200px;
            width: 100%;
            padding: 40px;
            gap: 40px;
        }

        .model-3d {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background: transparent;
        }

        model-viewer {
            width: 100%;
            height: 500px;
            background: transparent;
        }

        .info {
            flex: 1;
        }

        .info h2 {
            font-size: 40px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .price {
            font-size: 28px;
            color: #00d9ff;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .specs p {
            font-size: 18px;
            margin: 10px 0;
            color: #ccc;
        }

        .btn {
            margin-top: 25px;
            padding: 12px 24px;
            background-color: #007bff;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<script src="market.js"></script>

<div class="container">
    <div class="info">
        <h2><?= htmlspecialchars($mobile['name']) ?></h2>
        <div class="price">$<?= $mobile['price'] ?></div>
        <div class="specs">
            <p><strong>Battery:</strong> <?= htmlspecialchars($mobile['battery']) ?></p>
            <p><strong>Screen:</strong> <?= htmlspecialchars($mobile['screen']) ?></p>
            <p><strong>Camera:</strong> <?= htmlspecialchars($mobile['camera']) ?></p>
            <p><strong>Processor:</strong> <?= htmlspecialchars($mobile['processor']) ?></p>
            <p><strong>RAM:</strong> <?= htmlspecialchars($mobile['ram']) ?></p>
            <p><strong>Storage:</strong> <?= htmlspecialchars($mobile['storage']) ?></p>
            <p><strong>OS:</strong> <?= htmlspecialchars($mobile['os']) ?></p>
            <p><strong>Network:</strong> <?= htmlspecialchars($mobile['network']) ?></p>
        </div>
        <button class='btn' onclick="add('<?php echo addslashes($mobile['name']); ?>', '<?php echo $mobile['price']; ?>')">Add to cart</button>
    </div>

    <div class="model-3d">
        <?php if (!empty($mobile['model_3d_url'])): ?>
            <model-viewer 
                src="<?= htmlspecialchars($mobile['model_3d_url']) ?>"
                alt="3D model of <?= htmlspecialchars($mobile['name']) ?>"
                auto-rotate 
                camera-controls 
                ar
                background-color="transparent">
            </model-viewer>
        <?php else: ?>
            <p>No 3D model available.</p>
        <?php endif; ?>
    </div>
</div>

</body>
</html>
