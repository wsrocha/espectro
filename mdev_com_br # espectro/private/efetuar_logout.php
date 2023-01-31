<?php




//$logdataehora = date('Y-m-d h:i:s a', time());


//$query_logout1 = "INSERT INTO system_logs (`log_usr_origin`, `log_message`, `log_type`, `log_terminal_id`, `log_created`,  `log_status`) VALUES ('0', 'Finalizando sessão para {$usr_email}...', 'Login - Web', 0, '{$logdataehora}', 1);";

//$log1 = mysqli_query($conexao, $query_logout1);
session_start();

session_destroy();


header ('Location: ../index.php');


//$logdataehora = date('Y-m-d h:i:s a', time());


//$query_logout2 = "INSERT INTO system_logs (`log_usr_origin`, `log_message`, `log_type`, `log_terminal_id`, `log_created`,  `log_status`) VALUES ('0', '{$usr_email} saiu do sistema!', 'Login - Web', 0, '{$logdataehora}', 1);";

//$log1 = mysqli_query($conexao, $query_logout2);


?>