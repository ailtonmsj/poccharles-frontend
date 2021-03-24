<!DOCTYPE html>
<html lang="en">
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" href="style.css" >
  <title>VERSAO 1</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
  <body>
    <div class="header">
      <h1>Testando a hipotese</h1>
      <p>Deploy Charles CD</p>
    </div>

    <div class="navbar">
      <a href="#" class="active">Home</a>
    </div>

    <div class="row">
      <div class="side">
        <h2>Mais Sobre</h2>
        <button onclick="document.getElementById('id01').style.display='block'">Entenda mais sobre</button>
      </div>
      <div class="main">
        <h2>ARQUTETURA ISTIO</h2>
        <img src="https://istio.io/latest/docs/ops/deployment/architecture/arch.svg" >
        <p>O que é Istio</p>
        <p>As plataformas em nuvem oferecem uma grande variedade de benefícios para as organizações que as utilizam. No entanto, não há como negar que a adoção da nuvem pode colocar tensões nas equipes de DevOps. Os desenvolvedores devem usar microsserviços para arquitetar a portabilidade, enquanto os operadores estão gerenciando implementações híbridas e de várias nuvens extremamente grandes. O Istio permite conectar, proteger, controlar e observar serviços.</p>
      </div>
    </div>

    <div class="footer">
      <h2>Versão 1</h2>
    </div>

    <!-- The Modal -->
    <div id="id01" class="modal">
      <span onclick="document.getElementById('id01').style.display='none'"
    class="close" title="Close Modal">&times;</span>

      <!-- Modal Content -->
      <form class="modal-content animate" action="/action_page.php">
        
        <!-- Modal Script -->
        <div class="container" id="container">
          <script type="text/javascript">
            $.ajax({
                url: "http://192.168.49.2:32643/",
                type: "GET",
                success: function (data) {
                    document.getElementById('container').innerHTML= data;
                  },
                error: function (xhr, status) {
                  document.getElementById('container').innerHTML= "Erro ao carregar informações";
                }
            });
          </script>
        </div>
        <div class="container" style="background-color:#f1f1f1">
          <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Fechar</button>
        </div>
      </form>
    </div>

  </body>
</html>