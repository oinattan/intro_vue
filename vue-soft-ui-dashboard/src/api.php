<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

// Simulando dados de exemplo
$data = [
    'labels' => ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio'], // Labels para o gráfico
    'datasets' => [
        [
            'label' => 'Vendas',
            'data' => [12, 19, 3, 5, 2], // Dados do gráfico
            'backgroundColor' => 'rgba(75, 192, 192, 0.2)',
            'borderColor' => 'rgba(75, 192, 192, 1)',
            'borderWidth' => 1
        ]
    ]
];

// Retorna os dados no formato JSON
echo json_encode($data);
?>
