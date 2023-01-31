<?php
include('watcher_login.php');
include('../bdcon.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/306f9e0868.js" crossorigin="anonymous"></script>
    <title>Espectro | Painel</title>
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <link rel="icon" type="image/ico" href="../recursos/hb_imagens/favicon.ico">
    <script src="https://kit.fontawesome.com/306f9e0868.js" crossorigin="anonymous"></script>
    <style>
        .bd-placeholder-img {
          font-size: 1.125rem;
          text-anchor: middle;
          -webkit-user-select: none;
          -moz-user-select: none;
          user-select: none;
        }
  
        @media (min-width: 768px) {
          .bd-placeholder-img-lg {
            font-size: 3.5rem;
          }
        }
  
        .b-example-divider {
          height: 3rem;
          background-color: rgba(0, 0, 0, .1);
          border: solid rgba(0, 0, 0, .15);
          border-width: 1px 0;
          box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }
  
        .b-example-vr {
          flex-shrink: 0;
          width: 1.5rem;
          height: 100vh;
        }
  
        .bi {
          vertical-align: -.125em;
          fill: currentColor;
        }
  
        .nav-scroller {
          position: relative;
          z-index: 2;
          height: 2.75rem;
          overflow-y: hidden;
        }
  
        .nav-scroller .nav {
          display: flex;
          flex-wrap: nowrap;
          padding-bottom: 1rem;
          margin-top: -1px;
          overflow-x: auto;
          text-align: center;
          white-space: nowrap;
          -webkit-overflow-scrolling: touch;
        }
      </style>
 <!-- Custom styles for this template -->
 <link href="sidebars.css" rel="stylesheet">  
</head>
<body>

    <main class="d-flex flex-nowrap">
    
  
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
           
          <img src="../recursos/hb_imagens/hbox-espectro.png">  
          

          </a>
          <ul class="list-unstyled ps-0">
            <li class="mb-1">
              <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
                Serviços
              </button>
              <div class="collapse" id="home-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">API's Públicas</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">API's Privadas</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Banco de dados</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1">
              <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                Ferramentas - CRM
              </button>
              <div class="collapse" id="dashboard-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Expiração de Clientes</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Notificações</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Logs</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1">
              <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                Tecnologia
              </button>
              <div class="collapse" id="orders-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Consulta de Tarefas</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Projetos</a></li>
                </ul>
              </div>
            </li>
            <li class="border-top my-3"></li>
            <li class="mb-1">
              <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                Meu acesso
              </button>
              <div class="collapse" id="account-collapse">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Usuários Espectro</a></li>
                  <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Configurações</a></li>
                  <li><a href="efetuar_logout.php" class="link-dark d-inline-flex text-decoration-none rounded">Sair</a></li>
                </ul>
              </div>
            </li>
            
          </ul>
        </div>
      

        <!---  aqui começa o conteúdo da página em questão   -->
        <div class="b-example-divider b-example-vr"></div>
        <div class="col py-3 overflow-auto" style="padding:1%;">
        
 <!--- INICIO buscar nome do usuario para o painel -->

 <?php 


$idusrsessao = $_SESSION['idusuariosessao'];

$sql_peganome = "SELECT nome FROM usuarios WHERE id_usuario = '{$idusrsessao}'";
$peganome = mysqli_query($conexao, $sql_peganome);
$nomesessao = mysqli_fetch_array($peganome);


?>


 <!--- FIM buscar nome do usuario para o painel -->


            <div class="p-5 mb-4 bg-light rounded-3">
                <div class="container-fluid py-5">
                  <h1 class="display-5 fw-bold">Bem-vindo, <?php echo $nomesessao['nome'] ?>.</h1>
                  <p class="col-md-8 fs-4">O Espectro é um conjunto de ferramentas criado para agilizar os processos internos e aumentar a autonomia das equipes técnicas.</p>
                  <p class="fw-light">Versão: 0.1.0  |  Janeiro/2023</p>
                  <button class="btn btn-lg" type="button" style="background-color: #adc239; outline:white;color: white;">Obter Ajuda</button>
                </div>
              </div>


              <!---widgets-->

              <div class="row align-items-md-stretch">
                <div class="col-md-6">
                  <div class="h-100 p-5 text-bg-dark rounded-3">
                    <h2>Acesse o Sharepoint</h2>
                    <p>Utilize o nosso sharepoint para acessar materiais confidenciais e outros arquivos que podem ajudar no seu trabalho.</p>
                    <button class="btn btn-outline-light" type="button">Acessar</button>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="h-100 p-5 bg-light border rounded-3">
                    <h2>Forneça Suporte</h2>
                    <p>Utilizamos o Freshdesk para atender as demandas criadas por nossos clientes. Utilize a base de conhecimento para compartilhar informações publicamente.</p>
                    <button class="btn btn-outline-secondary" type="button">Acessar</button>
                  </div>
                </div>
              </div>
        
        </div>
        
      </main>
      
      
          <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
      
            <script src="sidebars.js"></script>
        



    

    
</body>
</html>