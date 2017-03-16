SELECT t_componente_comp.ip,t_componente_comp.num_inventario,t_marca.descripcion,t_modelo.descripcion,t_componente_comp.serial,t_componente_comp.posicion,t_usuarios.nombre_emp,t_departamento.nombre,t_gerencia.nombre AS nombre_gerencia FROM t_componente_comp INNER JOIN t_marca ON t_componente_comp.t_marca_id_marca = t_marca.id_marca INNER JOIN t_modelo ON t_componente_comp.t_modelo_id_modelo = t_modelo.id_modelo INNER JOIN t_usuarios ON t_componente_comp.t_usuarios_id_usuario = t_usuarios.id_usuario INNER JOIN t_departamento ON t_usuarios.t_departamento_id_depto = t_departamento.id_depto INNER JOIN t_gerencia ON t_departamento.gerencia_id_gerencia = t_gerencia.id_gerencia

