-- Questão 1 --

insert into Pessoa values ('002','pp@email.com', 'Pedro I', '10-01-1479','R. Vasco',NULL);
insert into Pessoa values ('003','ps@email.com', 'Pedro II', '10-12-1516','R. Flamengo','5501');
insert into Pessoa values ('001','dj@email.com', 'D João VI', '01-12-1415','R. Portugal',NULL);
insert into Pessoa values ('004','jj@email.com', 'JJ Xavier', '12-11-1746','R. Minas', '5502');


insert into Paciente values ('002','senha1', false);
insert into Paciente values ('003','senha2',true);

insert into Medico values ('001','111');
insert into Medico values ('004','112');

insert into Especialidade (descricao) values ('Pediatra');
insert into Especialidade (descricao) values ('Cardiologista');
insert into Especialidade (descricao) values ('Ortopedista');

insert into MedicoEspecialidade values ('001','01');
insert into MedicoEspecialidade values ('004','02');
insert into MedicoEspecialidade values ('004','03');

insert into Agendamento values ('002','001','04-14-1782 16:00:00','03-14-1782 10:04:45', 80);
insert into Agendamento values ('002','004','04-15-1782 10:00:00','03-14-1782 10:04:45', 100);
insert into Agendamento values ('002','004','05-17-1783 08:00:00','05-10-1783 16:32:00', 100);
insert into Agendamento values ('003','001','05-17-1783 08:30:00','05-09-1783 09:05:56', 0);


-- Questão 2 --

update Pessoa set data_nasc='01-12-1416' where nome='D João VI';
update Pessoa set telefone='5503',email='pf@email.com' where nome='Pedro I';
update Pessoa set telefone='9' || telefone;
update Agendamento set dh_agendamento='05-19-1783',valor_consulta=150 where dh_agendamento='05-17-1783';
update MedicoEspecialidade set id_especialidade='01' where cpf_medico='004' and id_especialidade='02';

-- Questão 3 --

delete from Agendamento where dh_agendamento='05-19-1783' and cpf_paciente='002';
delete from Agendamento where cpf_medico='001' and valor_consulta=0;
delete from Agendamento using Paciente where plano_saude=true or plano_saude=false;
delete from Medico where cpf_pessoa='004';
