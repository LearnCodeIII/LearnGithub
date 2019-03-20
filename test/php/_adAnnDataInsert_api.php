<?php
require __DIR__ . '/PDO.php';

header('Content-Type: application/json');

$result = [
    'success' => false,
    'errorCode' => 0,
    'errorMsg' => "資料輸入不完整",
    'post' => [], // 做 echo 檢查      
];

if(isset($_POST['checkme'])) {
  
    $ad_name = $_POST['ad_name'];
    $ad_pic = $_POST['ad_pic'];
    $ad_link = $_POST['ad_link'];
    $ad_link_count = $_POST['ad_link_count'];
    $ad_start_time = $_POST['ad_start_time'];
    $ad_end_time = $_POST['ad_end_time'];
    
    $result['post'] = $_POST; // 做echo檢查

    if(empty($ad_name) or empty($ad_link) or empty($ad_start_time)) {
        $result['errorCode'] = 400;
        echo json_encode($result, JSON_UNESCAPED_UNICODE);
        exit;
    }

// if(! filter_var($client_email, FILTER_VALIDATE_EMAIL)) {
//     $result['errorCode'] = 405;
//     $result['errorMsg'] = 'Email格式不正確';
//     echo json_encode($result, JSON_UNESCAPED_UNICODE);
//     exit;
// }

        

$sql = "INSERT INTO `ad`(
        `ad_name`, `ad_pic`, `ad_link`, `ad_link_count`, `ad_start_time`, `ad_end_time`
        ) VALUES (
        ?, ?, ?, ?, ?, ?
        )";

try {

    $stmt = $pdo->prepare($sql);

    $stmt->execute([

        $_POST['ad_name'],
        $_POST['ad_pic'],
        $_POST['ad_link'],
        $_POST['ad_link_count'],
        $_POST['ad_start_time'],
        $_POST['ad_end_time'],

    ]);

        if ($stmt->rowCount() == 1) {
            $result['success'] = true;
            $result['errorCode'] = 200;
            $result['errorMsg'] = '';

        } else {
            $result['errorCode'] = 402;
            $result['errorMsg'] = '資料新增錯誤';
        }

    } catch(PDOException $e) {
        $result['errorCode'] = 403;
        $result['errorMsg'] = '信箱已存在';
    }

}

echo json_encode($result, JSON_UNESCAPED_UNICODE);