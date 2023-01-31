<?php
define('HBBDHST', '127.0.0.1');
define('HBBDUSR', 'usr_espectroapp');
define('HBBDPSS', 'Xf54MvZ1Kx4M');
define('HBBDNM', 'app_espectro');

$conexao = mysqli_connect(HBBDHST, HBBDUSR, HBBDPSS, HBBDNM) or die ('Servidor não conectado - [Código 910].');

