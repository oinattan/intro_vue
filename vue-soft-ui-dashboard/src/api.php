<?php
// Permite requisições de qualquer origem
header('Access-Control-Allow-Origin: http://localhost:5173');  // O endereço do seu frontend Vue.js
header('Content-Type: application/json; charset=utf-8');


// Conexão com o banco de dados
$host = 'localhost';
$dbname = 'forms';
$username = 'root';
$password = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password, [
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8mb4'"
    ]);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Erro na conexão: " . $e->getMessage();
    exit;
}

// Query para buscar os candidatos
$sql = "SELECT id, nome, email, data_envio, telefone, endereco FROM turismo";
$stmt = $pdo->query($sql);

// Busca os dados dos candidatos
$candidatos = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Retorna os candidatos como JSON
echo json_encode($candidatos);
?>
