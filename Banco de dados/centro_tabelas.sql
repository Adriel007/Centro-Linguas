-- TABELA USUÁRIO
CREATE TABLE IF NOT EXISTS tb_usuario (
	id_usuario serial,
	nm_usuario varchar(255) not null,
	cd_cpf char(11) not null,
	cd_senha varchar(45) not null,
	tp_usuario bool not null, -- FALSE: Aluno; TRUE: Professor
	
	CONSTRAINT pk_usuario
		PRIMARY KEY (id_usuario)
);


-- TABELA ALUNO
CREATE TABLE IF NOT EXISTS tb_aluno (
	id_aluno serial,
	nm_aluno varchar(255) not null,
	cd_cpf char(11) not null,
	ds_inst varchar(255) not null, -- E-mail instituicional
	
	id_usuario int not null,
	
	CONSTRAINT pk_aluno
		PRIMARY KEY (id_aluno),
	
	CONSTRAINT fk_aluno_usuario
		FOREIGN KEY (id_usuario)
			REFERENCES tb_usuario
);


-- TABELA PROFESSOR
CREATE TABLE IF NOT EXISTS tb_professor (
	id_professor serial,
	nm_professor varchar(255) not null,
	cd_cpf char(11) not null,
	ds_inst varchar(255) not null, -- E-mail instituicional
	
	id_usuario int not null,
	
	CONSTRAINT pk_professor
		PRIMARY KEY (id_professor),
	
	CONSTRAINT fk_professor_usuario
		FOREIGN KEY (id_usuario)
			REFERENCES tb_usuario
);


-- TABELA CURSO DE IDIOMA
CREATE TABLE IF NOT EXISTS tb_curso (
	id_curso serial,
	nm_curso varchar(45) not null,
	qt_vagas int not null,
	qt_duracao decimal not null, -- Quantidade de horas que dura o curso
	
	CONSTRAINT pk_curso
		PRIMARY KEY (id_curso)
);


-- TABELA MATRÍCULA DO ALUNO
CREATE TABLE IF NOT EXISTS tb_matricula (
	id_matricula serial,
	
	id_aluno int not null,
	id_curso int not null,
	
	CONSTRAINT pk_matricula
		PRIMARY KEY (id_matricula),
	
	CONSTRAINT fk_matricula_aluno
		FOREIGN KEY (id_aluno)
			REFERENCES tb_aluno,
	CONSTRAINT fk_matricula_curso
		FOREIGN KEY (id_curso)
			REFERENCES tb_curso
);


-- TABELA PRENÇA DO ALUNO
CREATE TABLE IF NOT EXISTS tb_presenca (
	id_presenca serial,
	qt_faltas char(1) not null,
	dt_falta date not null,
	
	id_matricula int not null,
	
	CONSTRAINT pk_presenca
		PRIMARY KEY (id_presenca),
	
	CONSTRAINT fk_presenca_matricula
		FOREIGN KEY (id_matricula)
			REFERENCES tb_matricula
);


-- TABELA TURMA
CREATE TABLE IF NOT EXISTS tb_turma (
	id_turma serial,
	nm_turma varchar(45) not null,
	
	id_professor int not null,
	id_curso int not null,
	
	CONSTRAINT pk_turma
		PRIMARY KEY (id_turma),
	
	CONSTRAINT fk_turma_professor
		FOREIGN KEY (id_professor)
			REFERENCES tb_professor,
	CONSTRAINT fk_turma_curso
		FOREIGN KEY (id_curso)
			REFERENCES tb_curso
);


-- TABELA AVALIAÇÃO DA TURMA
CREATE TABLE IF NOT EXISTS tb_avaliacao (
	id_avaliacao serial,
	dt_avaliacao date not null,
	
	id_turma int not null,
	
	CONSTRAINT pk_avaliacao
		PRIMARY KEY (id_avaliacao),
	
	CONSTRAINT fk_avaliacao_turma
		FOREIGN KEY (id_turma)
			REFERENCES tb_turma
);


-- TABELA NOTA
CREATE TABLE IF NOT EXISTS tb_nota (
	id_nota serial,
	vl_nota decimal not null,
	
	id_avaliacao int not null,
	id_matricula int not null,
	
	CONSTRAINT pk_nota
		PRIMARY KEY (id_nota),
	
	CONSTRAINT fk_nota_avaliacao
		FOREIGN KEY (id_avaliacao)
			REFERENCES tb_avaliacao,
	CONSTRAINT fk_nota_matricula
		FOREIGN KEY (id_matricula)
			REFERENCES tb_matricula
);


-- TABELA MURAL
CREATE TABLE IF NOT EXISTS tb_mural (
	id_mural serial,
	qt_postagem int not null,
	qt_evento int not null,
	
	id_professor int not null,
	
	CONSTRAINT pk_mural
		PRIMARY KEY (id_mural),
	
	CONSTRAINT fk_mural_professor
		FOREIGN KEY (id_professor)
			REFERENCES tb_professor
);


-- TABELA POSTAGEM DO MURAL
CREATE TABLE IF NOT EXISTS tb_postagem (
	id_postagem serial,
	nm_postagem varchar(255) not null,
	im_postagem bytea not null,
	ds_postagem text not null,
	
	id_mural int not null,
	
	CONSTRAINT pk_postagem
		PRIMARY KEY (id_postagem),
	
	CONSTRAINT fk_postagem_mural
		FOREIGN KEY (id_mural)
			REFERENCES tb_mural
);


-- TABELA EVENTO DO MURAL
CREATE TABLE IF NOT EXISTS tb_evento (
	id_evento serial,
	nm_evento varchar(255) not null,
	im_evento bytea not null,
	ds_evento text not null,
	dt_inicio date not null,
	dt_fim date not null,
	
	id_mural int not null,
	
	CONSTRAINT pk_evento
		PRIMARY KEY (id_evento),
	
	CONSTRAINT fk_evento_mural
		FOREIGN KEY (id_mural)
			REFERENCES tb_mural
);


-- TABELA INSCRIÇÃO DO EVENTO
CREATE TABLE IF NOT EXISTS tb_inscricao (
	id_inscricao serial,
	nm_participante varchar(255) not null,
	nm_curso varchar(255) not null,
	cd_ciclo char(1) not null,
	cd_celular char(11),
	ds_email varchar(255),
	
	id_evento int not null,
	
	CONSTRAINT pk_inscricao
		PRIMARY KEY (id_inscricao),
	
	CONSTRAINT fk_inscricao_evento
		FOREIGN KEY (id_evento)
			REFERENCES tb_evento
);