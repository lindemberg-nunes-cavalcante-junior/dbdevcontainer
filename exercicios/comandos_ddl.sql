
create table Pessoa (
 cpf char(11) primary key, 
 email varchar(50) not null,
 nome varchar(150) not null,
 data_nasc date not null,
 endereco varchar(300) not null,
 telefone varchar(15) null,
 unique(email,nome)
);

create table Paciente(
 cpf_pessoa char(11) primary key,
 senha varchar(20) not null,
 plano_saude boolean not null default('false'),
 foreign key(cpf_pessoa) references Pessoa(cpf)
);


create table Medico(
 cpf_pessoa char(11) primary key,
 crm varchar(10) unique not null,
 foreign key(cpf_pessoa) references Pessoa(cpf)
);



create table Agendamento(
 cpf_paciente char(11),
 cpf_medico char(11),
 dh_consulta timestamp,
 dh_agendamento timestamp not null default(current_timestamp),
 valor_consulta float not null default(0.0),
 primary key(cpf_paciente,cpf_medico,dh_consulta),
 foreign key(cpf_paciente) references Pessoa(cpf),
 foreign key(cpf_medico) references Medico(cpf_pessoa)
);



create table Especialidade(
 id int generated always as identity primary key,
 descricao varchar(300) not null
);



create table MedicoEspecialidade(
 cpf_medico char(11),
 id_especialidade int,
 primary key(cpf_medico,id_especialidade),
 foreign key(cpf_medico) references Medico(cpf_pessoa),
 foreign key(id_especialidade) references Especialidade(id)
);
