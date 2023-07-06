ALTER TABLE usuario_log
	ADD foreign key (id_usuario) REFERENCES usuario(id)
	
ALTER TABLE usuario_ajuda
	ADD foreign key (id_usuario) REFERENCES usuario(id) 
	
ALTER TABLE usuario_ajuda
	ADD foreign key (id_ajuda) REFERENCES ajuda(id)
	
ALTER TABLE ingresso_inf
	ADD foreign key (id_ingresso) REFERENCES ingresso(id)

ALTER TABLE ingresso_inf
	ALTER COLUMN informacao type varchar(1000)

ALTER TABLE ingresso_inf
	ALTER COLUMN localidade type varchar(400)

ALTER TABLE ingresso_inf
	ALTER COLUMN programacao type varchar(400)
	
ALTER TABLE usuario
	ALTER COLUMN val_cart type varchar(5)
			
ALTER TABLE usuario
	ALTER COLUMN cpf type bigint
	
ALTER TABLE usuario
	ALTER COLUMN num_cart type bigint 
	USING num_cart::bigint
