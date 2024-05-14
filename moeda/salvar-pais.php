<?php

// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chicomoedas";

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Obter dados do POST
$paisOrigem = json_decode(file_get_contents('php://input'), true)['pais'];

// Preparar a query SQL
$sql = "SELECT moeda FROM paises WHERE pais = ?";

// Preparar a declaração
$stmt = $conn->prepare($sql);

// Vincular parâmetros
$stmt->bind_param("s", $paisOrigem);

// Executar a query
$stmt->execute();

// Obter resultado
$result = $stmt->get_result();

// Fechar a conexão
$stmt->close();
$conn->close();

// Verificar se o país foi encontrado
if ($result->num_rows === 0) {
    echo json_encode([
        "erro" => "País não encontrado."
    ]);
    exit;
}

// Extrair a moeda do resultado
$moeda = $result->fetch_assoc()['moeda'];

// Retornar a moeda
echo json_encode([
    "moeda" => $moeda
]);

?>
