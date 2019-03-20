<?php
require __DIR__ . '/PDO.php';

header('Content-Type: application/json'); // 在Postman檢查時不須再特別選擇就會直接以JSON格式顯示

$result = [
    'success' => false,
    'errorCode' => 0,
    'errorMsg' => "資料輸入不完整",
    'post' => [], // 做 echo 檢查      
];

if(isset($_POST['checkme'])) {
  
    $client_name = $_POST['client_name'];
    $client_number = $_POST['client_number'];
    $client_address = $_POST['client_address'];
    $client_poc = $_POST['client_poc'];
    $client_mobile = $_POST['client_mobile'];
    $client_email = $_POST['client_email'];
    $contract_budget = $_POST['contract_budget'];
    $contract_start_date = $_POST['contract_start_date'];
    $contract_end_date = $_POST['contract_end_date'];
    $TESTTT = $_POST['TESTTT'];

    $result['post'] = $_POST; // 做echo檢查

    if(empty($client_name) or empty($client_email) or empty($client_email)) {
        $result['errorCode'] = 400;
        echo json_encode($result, JSON_UNESCAPED_UNICODE);
        exit;
    }

if(! filter_var($client_email, FILTER_VALIDATE_EMAIL)) {
    $result['errorCode'] = 405;
    $result['errorMsg'] = 'Email格式不正確';
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    exit;
}





$upload_dir = __DIR__. '/../pic/ann/'; 

header('Content-Type: application/json');

$result = [
    'success' => false,
    'filename' => '',
    'info' => '',
];

if(empty($_FILES['ad_pic'])){
    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    exit;
}

$filename = sha1($_FILES['ad_pic']['name']. uniqid());

switch($_FILES['ad_pic']['type']){
    case 'image/jpeg':
        $filename .= '.jpg';
        break;
    case 'image/png':
        $filename .= '.png';
        break;
    default:
        $result['info'] = '格式不符';
        echo json_encode($result, JSON_UNESCAPED_UNICODE);
        exit;
}
$result['filename'] = $filename;
$upload_file = $upload_dir. $filename;

if(move_uploaded_file($_FILES['ad_pic']['tmp_name'], $upload_file)){
    $result['success'] = true;
} else {
    $result['info'] = '暫存檔無法搬移';
}
echo json_encode($result, JSON_UNESCAPED_UNICODE);






$sql = "INSERT INTO `ad`(
        `client_name`, `client_number`, `client_address`, `client_poc`, `client_mobile`, `client_email`, `contract_budget`, `contract_start_date`, `contract_end_date`, `TESTTT`,
        ) VALUES (
        ?, ?, ?, ?, ?, ?, ?, ?, ?, ?
        )";

try {

    $stmt = $pdo->prepare($sql);

    $stmt->execute([

        $_POST['client_name'],
        $_POST['client_number'],
        $_POST['client_address'],
        $_POST['client_poc'],
        $_POST['client_mobile'],
        $_POST['client_email'],
        $_POST['contract_budget'],
        $_POST['contract_start_date'],
        $_POST['contract_end_date'],
        $_POST['TESTTT'],

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