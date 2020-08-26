drop table entregar;
drop table cnh;
drop table condutor;
delete from condutor where condutor.idCondutor =1;
use detran;
insert into condutor (condutor.NOMECONDUTOR, condutor.NOMESOCIALCONDUTOR, condutor.IDENTIDADE, condutor.CPF,
condutor.ENDEREÇO, condutor.BAIRRO, condutor.CIDADE, condutor.UF, condutor.COMPLEMENTO, condutor.NUMEROENDEREÇO,condutor.CEP, 
condutor.telefone,condutor.celular,condutor.email) 
values("Carlos Eduardo dos Santos Figueiredo","Carlos","00.000.000-1","000.000.000-00",
"Rua Alamenda P","Rio do Ouro","São gonçalo","rj","quadra 00 lote 00",125,"00000-740",
"0000-0000","00000-0000","email@email.com");
insert into detran.cnh(cnh.idCondutor,cnh.numeroRegistroNacional,cnh.vencimentoCNH)values(1,"200110222","2020/10/20");
insert into entregar(entregar.idCondutor, entregar.incioPenalidade, entregar.fimPenalidade, entregar.tempoSuspensao, entregar.tipoEntregar,
entregar.postoEntregar,entregar.matriculaAtendende,entregar.nomeAtendente)
values(1,"2020/01/01","2020/01/31",31,"Cassação",
"Niterói",1200,"João");