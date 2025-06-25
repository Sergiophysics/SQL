CREATE TEMP TABLE clientes (
    cliente_id INT,
    nombre VARCHAR(50),
    activo_mayo BOOLEAN,
    activo_julio BOOLEAN
);

-- Insertar datos aleatorios
INSERT INTO clientes (cliente_id, nombre, activo_mayo, activo_julio) VALUES
(1, 'Ana',     TRUE,  TRUE),
(2, 'Luis',    TRUE,  TRUE),
(3, 'Carla',   TRUE,  FALSE),
(4, 'Miguel',  TRUE,  FALSE),
(5, 'Sofía',   TRUE,  TRUE),
(6, 'Pedro',   TRUE,  FALSE),
(7, 'Lucía',   TRUE,  TRUE),
(8, 'Diego',   TRUE,  FALSE),
(9, 'Valeria', TRUE,  TRUE),
(10, 'Mario',  TRUE,  TRUE);

-- Consulta: clientes activos en mayo
SELECT COUNT(*) AS activos_mayo FROM clientes WHERE activo_mayo = TRUE;

-- Consulta: clientes activos en julio
SELECT COUNT(*) AS activos_julio FROM clientes WHERE activo_julio = TRUE;

-- Consulta: clientes perdidos (churn)
SELECT COUNT(*) AS clientes_perdidos
FROM clientes
WHERE activo_mayo = TRUE AND activo_julio = FALSE;

-- Consulta: tasa de churn
SELECT 
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE activo_mayo = TRUE AND activo_julio = FALSE)
        / NULLIF(COUNT(*) FILTER (WHERE activo_mayo = TRUE), 0),
    2) AS tasa_churn_porcentaje
FROM clientes;

-- Consulta: retención (los que se mantuvieron activos)
SELECT COUNT(*) AS clientes_retenidos
FROM clientes
WHERE activo_mayo = TRUE AND activo_julio = TRUE;