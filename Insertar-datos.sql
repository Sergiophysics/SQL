INSERT INTO clientes (
    id, cliente_id, fecha, tipo_servicio, tipo_residuo,
    kg_recolectados, relleno_sanitario, estatus, 
    duracion_disposicion_min, litros_combustible, km_recorridos,
    horas_operacion, horas_muertas, ingreso_disposicion
) VALUES
(
    1, 1, '2024-06-01', 'recolección', 'orgánico',
    1200, TRUE, 'completado',
    40, 30, 15,
    3.0, 0.5, 1000
),
(
    2, 2, '2024-06-01', 'disposición', 'plástico',
    800, TRUE, 'completado',
    35, 0, 0,
    0.5, 0.0, 800
);