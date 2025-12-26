<?php
<<<<<<< HEAD

/**
 * API Endpoint: Get Orders for a Specific Customer
 * Used by: customers.php modal
 */

require_once '../../config.php'; // Adjust path if needed

// Prevent any output before JSON
=======
// FILE: admin/api/get-customer-orders.php
require_once '../../config.php';

// Clean output buffer to ensure valid JSON
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
ob_clean();
header('Content-Type: application/json');

if (!isset($_GET['id'])) {
<<<<<<< HEAD
    echo json_encode([]);
=======
    echo json_encode(['error' => 'No Customer ID provided']);
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
    exit;
}

$customer_id = intval($_GET['id']);

try {
<<<<<<< HEAD
    // Fetch orders for this customer
    // We select ORDER_TOTAL explicitly to fix the "undefined" error in JS
    $stmt = $pdo->prepare("
        SELECT 
            ORDER_ID, 
            ORDER_DATE, 
            ORDER_STATUS, 
            ORDER_TOTAL 
=======
    // Select orders for this customer using backticks for the table name `ORDER`
    $stmt = $pdo->prepare("
        SELECT ORDER_ID, ORDER_DATE, ORDER_STATUS, ORDER_TOTALAMOUNT 
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
        FROM `ORDER` 
        WHERE CUSTOMER_ID = ? 
        ORDER BY ORDER_DATE DESC
    ");
    $stmt->execute([$customer_id]);
    $orders = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($orders);
} catch (Exception $e) {
<<<<<<< HEAD
    // Return empty array on error so frontend doesn't crash
    echo json_encode([]);
=======
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
}
