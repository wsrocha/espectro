<?php

session_start();

include('bdcon.php');

if (empty($_POST['usr_email']) || empty($_POST['usr_password'])) {

	header('Location: index.php');

	exit();

}







$usr_email = mysqli_real_escape_string($conexao, $_POST['usr_email']);
$usr_password = mysqli_real_escape_string($conexao, $_POST['usr_password']);





$logdataehora = date('Y-m-d h:i:s a', time());




$query_tenta_logar = "INSERT INTO logs (`tipo`, `msg_log`, `id_usuario`, `id_empresa`, `dt_log`) VALUES ('login', 'Tentando conectar com usuário {$usr_email}...', '9999', 'indefinido', '{$logdataehora}');";

$query = "select u.id_usuario, u.email from usuarios u where u.email = '{$usr_email}' AND u.senha = md5('{$usr_password}') AND u.ativo = 1 AND u.excluido = 0";

$result = mysqli_query($conexao, $query);

$log = mysqli_query($conexao, $query_tenta_logar);

$row = mysqli_num_rows($result);

if ($row == 1) {

	$_SESSION['user_email'] = $usr_email;
	header('Location: ./private/painel.php');

	$query_login_sucesso = "INSERT INTO logs (`tipo`, `msg_log`, `id_usuario`, `id_empresa`, `dt_log`) VALUES ('login', 'O usuário {$usr_email} entrou no espectro.', '9999', 'indefinido', '{$logdataehora}');";

	$logsucesso = mysqli_query($conexao, $query_login_sucesso);

		$querypegasessao = "SELECT id_usuario from usuarios WHERE email = '{$usr_email}'";
		$pegasessao = mysqli_query($conexao, $querypegasessao);
		$resultadosessao = mysqli_fetch_array($pegasessao);


		$_SESSION['idusuariosessao'] = $resultadosessao['id_usuario'];
		
		



	exit();

} else {
	$_SESSION['nosession'] = true;
	header('Location: index.php');


	$query_login_erro = "INSERT INTO logs (`tipo`, `msg_log`, `id_usuario`, `id_empresa`, `dt_log`) VALUES ('login', 'Falha no login de {$usr_email}. Credenciais inválidas.', '9999', 'indefinido', '{$logdataehora}');";

	$logerro = mysqli_query($conexao, $query_login_erro);

	exit ();

}

exit;

