<?php

/**
 * API Endpoint: Get Order Details
 * Path: /admin/api/get-order.php
 * Used by: orders.php modal
 */

require_once '../../config.php';

// Prevent any output before JSON
ob_clean();
header('Content-Type: application/json');
header('Cache-Control: no-cache, must-revalidate');

// Validate request
if (!isset($_GET['id'])) {
    http_response_code(400);
    echo json_encode(['error' => 'No ID provided']);
    exit;
}

$order_id = intval($_GET['id']);

try {
<<<<<<< HEAD
    // 1. Fetch Order Details
=======
    // 1. Fetch Order Details (DIRECT LINK TO CUSTOMER - thanks to the fix!)
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
    $stmt = $pdo->prepare("
        SELECT 
            o.ORDER_ID, 
            o.ORDER_DATE, 
            o.ORDER_STATUS, 
<<<<<<< HEAD
            o.ORDER_TOTAL, 
=======
            o.ORDER_TOTALAMOUNT, 
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
            o.CART_ID, 
            c.CUSTOMER_NAME, 
            c.CUSTOMER_EMAIL
        FROM `ORDER` o
        LEFT JOIN CUSTOMER c ON o.CUSTOMER_ID = c.CUSTOMER_ID
        WHERE o.ORDER_ID = ?
    ");
    $stmt->execute([$order_id]);
    $order = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$order) {
        http_response_code(404);
        echo json_encode(['error' => 'Order not found']);
        exit;
    }

<<<<<<< HEAD
    // 2. Fetch Items in Cart
=======
    // 2. Fetch Items in Cart (Still from CARTITEM, linked via CART_ID)
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
    $items = [];
    if (!empty($order['CART_ID'])) {
        $stmtItems = $pdo->prepare("
            SELECT 
                ci.CARTITEM_PRICE, 
                ci.CARTITEM_QUANTITY, 
                i.ITEM_NAME, 
                i.ITEM_IMAGE
            FROM CARTITEM ci
            JOIN ITEM i ON ci.ITEM_ID = i.ITEM_ID
            WHERE ci.CART_ID = ?
            ORDER BY ci.ITEM_ID
        ");
        $stmtItems->execute([$order['CART_ID']]);
        $items = $stmtItems->fetchAll(PDO::FETCH_ASSOC);
<<<<<<< HEAD

        // --- THE FIX IS HERE ---
        // We modify the image path before sending it to the frontend
        foreach ($items as &$item) {
            if (!empty($item['ITEM_IMAGE'])) {
                // 1. Remove leading slash so we have "images/products/..."
                $cleanPath = ltrim($item['ITEM_IMAGE'], '/');

                // 2. Add "../" so the admin page looks in the parent directory
                $item['ITEM_IMAGE'] = '../' . $cleanPath;
            }
        }
        // -----------------------
=======
>>>>>>> f3beae1f17acec66bd7be67a37c46baa6141b597
    }

    // Return JSON response
    http_response_code(200);
    echo json_encode([
        'success' => true,
        'order' => $order,
        'items' => $items
    ]);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database Error: ' . $e->getMessage()]);
    exit;
}
