SELECT t_componente_comp.ip,t_componente_comp.num_inventario,t_marca.descripcion,t_modelo.descripcion,t_componente_comp.serial,t_componente_comp.posicion FROM t_componente_comp INNER JOIN t_marca ON t_componente_comp.t_marca_id_marca = t_marca.id_marca INNER JOIN t_modelo ON t_componente_comp.t_modelo_id_modelo = t_modelo.id_modelo


