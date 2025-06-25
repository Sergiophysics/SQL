CREATE TABLE clientes (
id SERIAL PRIMARY KEY,
nombre VARCHAR,
fecha_alta DATE,
activo BOOLEAN
);
CREATE TABLE servicios (
id SERIAL PRIMARY KEY,
cliente_id INT,
fecha DATE,
tipo_servicio VARCHAR,
tipo_residuo VARCHAR,
kg_recolectados DECIMAL,
relleno_sanitario BOOLEAN,
status VARCHAR,
duracion_disposicion_min INT,
litros_combustible DECIMAL,
km_recorridos DECIMAL,
horas_operacion DECIMAL,
horas_muertas DECIMAL,
ingreso_disposicion DECIMAL
);