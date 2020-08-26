create database if not exists detran;
use detran;
create table if not exists condutor(
idCondutor int primary key auto_increment,
NOMECONDUTOR varchar(200) not null,
NOMESOCIALCONDUTOR varchar(200) default "",
IDENTIDADE varchar(14) not null,
CPF varchar(200) not null,
DATADENASCIMENTO datetime not null,
ENDEREÇO varchar(200) not null,
CEP varchar(200),
NUMEROENDEREÇO varchar(200),
COMPLEMENTO varchar(200),
UF varchar(200),
CIDADE varchar(200),
BAIRRO varchar(200),
TELEFONE varchar(200),
CELULAR varchar(200),
EMAIL varchar(200)
);
create table if not exists CNH(
idCNH int primary key auto_increment,
idCondutor int,
numeroRegistroNacional int ,
vencimentoCNH date,
foreign key (idCondutor) references detran.condutor(idCondutor)
);
create table if not exists entregar(
idEntregar int primary key auto_increment,
idCondutor int,
nomeAtendente varchar(200),
matriculaAtendende int,
postoEntregar varchar(200),
tipoEntregar enum("Supensão","Cassação") default "Cassação",
tempoSuspensao int,
incioPenalidade date,
dataEntregar date,
fimPenalidade date,
foreign key (idCondutor) references detran.condutor(idCondutor)
);