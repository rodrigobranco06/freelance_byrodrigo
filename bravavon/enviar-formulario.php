<?php
// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bravavon";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Processamento do formulário
$nome = $_POST['nome'];
$email = $_POST['email'];
$sexo = $_POST['sexo'];
$telefone = $_POST['telefone'];
$mensagem = $_POST['mensagem'];
$concorda_privacidade = isset($_POST['concorda_privacidade']) && $_POST['concorda_privacidade'] == '1' ? 'Sim' : 'Não';

// Inserção dos dados na tabela
$sql = "INSERT INTO form_contato (nome, email, sexo, telefone, mensagem, concorda_privacidade) 
        VALUES ('$nome', '$email', '$sexo', '$telefone', '$mensagem', '$concorda_privacidade')";

if ($conn->query($sql) === TRUE) {
    // Redirecionamento após o envio bem-sucedido do formulário
    header("Location: formulario-contacto.html");
    exit();
} else {
    echo "Erro ao enviar o formulário: " . $conn->error;
}

$conn->close();
?>
