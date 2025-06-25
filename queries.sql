-- Toneladas recibidas
SELECT 
  tipo_residuo,
  SUM(kg_recolectados) / 1000.0 AS toneladas_recibidas
FROM clientes
GROUP BY tipo_residuo;
--ingreso total por disposicion
SELECT 
  SUM(ingreso_disposicion) AS ingreso_total_disposicion
FROM clientes
WHERE tipo_servicio = 'disposición';
--top 3 tipos de residuo
SELECT 
  tipo_residuo,
  SUM(kg_recolectados) AS total_kg
FROM clientes
GROUP BY tipo_residuo
ORDER BY total_kg DESC
LIMIT 3;
--top 3 clientes por kg
SELECT 
  cliente_id,
  SUM(kg_recolectados) AS total_kg
FROM clientes
GROUP BY cliente_id
ORDER BY total_kg DESC
LIMIT 3;
--duracion promedio de disposicion
SELECT 
  AVG(duracion_disposicion_min) AS duracion_promedio_minutos
FROM clientes
WHERE tipo_servicio = 'disposición';
--kg promedio por entrega
SELECT 
  AVG(kg_recolectados) AS promedio_kg_por_entrega
FROM clientes;
--promedio de tiradas por cliente 
SELECT 
  AVG(tiradas_por_cliente) AS promedio_tiradas_disposicion
FROM (
  SELECT 
    cliente_id,
    COUNT(*) AS tiradas_por_cliente
  FROM clientes
  WHERE tipo_servicio = 'disposición'
  GROUP BY cliente_id
) sub;