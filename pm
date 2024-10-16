<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Férias - Polícia Militar MG</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Escolha de Férias - Polícia Militar MG</h2>
        <form id="feriasForm" action="https://script.google.com/macros/s/AKfycbw_Rsr82fxNadhgIRflZEz_RMUxUrvOjDFKuO4op0akLKpbkvLgKSBXxdP7eKg-zUEx8Q/exec" method="POST">
            <label for="nome">Nome Militar:</label>
            <input type="text" id="nome" name="nome" required>

            <label for="numero">Número de Polícia:</label>
            <input type="text" id="numero" name="numero" required>

            <label for="ferias">Opções de Férias (escolha até 3 datas):</label>
            <select id="ferias1" name="ferias1" required>
                <option value="">Selecione a 1ª data</option>
                <option value="2024-01-01">1 de Janeiro, 2024</option>
                <option value="2024-02-15">15 de Fevereiro, 2024</option>
                <option value="2024-03-20">20 de Março, 2024</option>
                <!-- Adicione mais opções conforme necessário -->
            </select>

            <select id="ferias2" name="ferias2" required>
                <option value="">Selecione a 2ª data</option>
                <option value="2024-01-01">1 de Janeiro, 2024</option>
                <option value="2024-02-15">15 de Fevereiro, 2024</option>
                <option value="2024-03-20">20 de Março, 2024</option>
                <!-- Adicione mais opções conforme necessário -->
            </select>

            <select id="ferias3" name="ferias3" required>
                <option value="">Selecione a 3ª data</option>
                <option value="2024-01-01">1 de Janeiro, 2024</option>
                <option value="2024-02-15">15 de Fevereiro, 2024</option>
                <option value="2024-03-20">20 de Março, 2024</option>
                <!-- Adicione mais opções conforme necessário -->
            </select>

            <button type="submit">Finalizar</button>
        </form>
    </div>

    <script>
        document.getElementById('feriasForm').addEventListener('submit', function(event) {
            event.preventDefault();

            const nome = document.getElementById('nome').value;
            const numero = document.getElementById('numero').value;
            const ferias1 = document.getElementById('ferias1').value;
            const ferias2 = document.getElementById('ferias2').value;
            const ferias3 = document.getElementById('ferias3').value;

            if (ferias1 === ferias2 || ferias1 === ferias3 || ferias2 === ferias3) {
                alert('Por favor, selecione datas diferentes para cada opção.');
                return;
            }

            const form = document.getElementById('feriasForm');
            form.submit();
        });
    </script>

</body>
</html>
