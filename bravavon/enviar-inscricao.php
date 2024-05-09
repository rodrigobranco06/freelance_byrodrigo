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
$sexo = $_POST['sexo'];
$telefone = $_POST['telefone'];
$morada = $_POST['morada'];
$cod_postal = $_POST['cod_postal'];
$localidade = $_POST['localidade'];
$mensagem = $_POST['mensagem'];
$concorda_privacidade = isset($_POST['concorda_privacidade']) && $_POST['concorda_privacidade'] == '1' ? 'Sim' : 'Não';

// Inserção dos dados na tabela
$sql = "INSERT INTO form_inscricao (nome, sexo, telefone, morada, cod_postal, localidade, mensagem, concorda_privacidade) 
        VALUES ('$nome', '$sexo', '$telefone', '$morada', '$cod_postal', '$localidade', '$mensagem', '$concorda_privacidade')";

if ($conn->query($sql) === TRUE) {
    // Redirecionamento após o envio bem-sucedido do formulário
    header("Location: inscricao.html");
    exit();
} else {
    echo "Erro ao enviar o formulário: " . $conn->error;
}

$conn->close();
?>
