INSERT INTO `pi_senac`.`tela` (`ID`, `Nome`) VALUES ('1', 'Homepage');
INSERT INTO `pi_senac`.`tela` (`ID`, `Nome`) VALUES ('2', 'Disciplinas');
INSERT INTO `pi_senac`.`tela` (`ID`, `Nome`) VALUES ('3', 'Equação de Segundo Grau');
INSERT INTO `pi_senac`.`tela` (`ID`, `Nome`) VALUES ('4', 'Segunda Guerra Mundial');
INSERT INTO `pi_senac`.`tela` (`ID`, `Nome`) VALUES ('5', 'Advérbios');

INSERT INTO `pi_senac`.`cidade` (`ID`, `Nome`, `UF`) VALUES ('1', 'Limeira', 'SP');
INSERT INTO `pi_senac`.`cidade` (`ID`, `Nome`, `UF`) VALUES ('2', 'Campinas', 'SP');
INSERT INTO `pi_senac`.`cidade` (`ID`, `Nome`, `UF`) VALUES ('3', 'Salvador', 'BA');
INSERT INTO `pi_senac`.`cidade` (`ID`, `Nome`, `UF`) VALUES ('4', 'Campo Grande', 'MS');
INSERT INTO `pi_senac`.`cidade` (`ID`, `Nome`, `UF`) VALUES ('5', 'Manaus', 'AM');

INSERT INTO `pi_senac`.`escola` (`ID`, `Nome`, `Sigla`, `IDCidade`, `Particular`) VALUES ('1', 'Colégio Técnico de Limeira', 'COTIL', '1', '0');
INSERT INTO `pi_senac`.`escola` (`ID`, `Nome`, `Sigla`, `IDCidade`, `Particular`) VALUES ('2', 'Objetivo Campinas', 'OBJCAMP', '2', '1');
INSERT INTO `pi_senac`.`escola` (`ID`, `Nome`, `Sigla`, `IDCidade`, `Particular`) VALUES ('3', 'Centro Municipal de Educacao Infantil Abdias Nascimento', 'CMEIAN', '3', '0');
INSERT INTO `pi_senac`.`escola` (`ID`, `Nome`, `Sigla`, `IDCidade`, `Particular`) VALUES ('4', 'Colégio CECAMP', 'CECAMP', '4', '1');
INSERT INTO `pi_senac`.`escola` (`ID`, `Nome`, `Sigla`, `IDCidade`, `Particular`) VALUES ('5', 'Colégio Brigido Nogueira', 'CBN', '5', '1');

INSERT INTO `pi_senac`.`disciplina` (`ID`, `Nome`) VALUES ('1', 'Matemática');
INSERT INTO `pi_senac`.`disciplina` (`ID`, `Nome`) VALUES ('2', 'Português');
INSERT INTO `pi_senac`.`disciplina` (`ID`, `Nome`) VALUES ('3', 'Filosofia');
INSERT INTO `pi_senac`.`disciplina` (`ID`, `Nome`) VALUES ('4', 'Física');
INSERT INTO `pi_senac`.`disciplina` (`ID`, `Nome`) VALUES ('5', 'Geografia');

INSERT INTO `pi_senac`.`tutor` (`ID`, `Status`, `Nome`, `CPF`, `Telefone`, `Email`) VALUES ('1', 'A', 'Alessandra Malu Gabrielly Dias', '50148546137', '84986568371', 'alessandra-dias80@holtmail.com');
INSERT INTO `pi_senac`.`tutor` (`ID`, `Status`, `Nome`, `CPF`, `Telefone`, `Email`) VALUES ('2', 'A', 'Mário Enrico Jesus', '64404844786', '62988276520', 'mario_jesus@starmidia.tv');
INSERT INTO `pi_senac`.`tutor` (`ID`, `Status`, `Nome`, `CPF`, `Telefone`, `Email`) VALUES ('3', 'I', 'Amanda Priscila Oliveira', '91976828457', '68984183834', 'amanda_oliveira@institutodainfancia.com.br');
INSERT INTO `pi_senac`.`tutor` (`ID`, `Status`, `Nome`, `CPF`, `Telefone`, `Email`) VALUES ('4', 'A', 'Marcos Raimundo Nunes', '60044988907', '27985701056', 'marcos_raimundo_nunes@purkyt.com');
INSERT INTO `pi_senac`.`tutor` (`ID`, `Status`, `Nome`, `CPF`, `Telefone`, `Email`) VALUES ('5', 'I', 'Eloá Andrea Viana', '88974975785', '67999269296', 'eloa_viana@bb.com.br');

INSERT INTO `pi_senac`.`disciplinatutor` (`ID`, `IDDisciplina`, `IDTutor`) VALUES ('1', '1', '1');
INSERT INTO `pi_senac`.`disciplinatutor` (`ID`, `IDDisciplina`, `IDTutor`) VALUES ('2', '2', '2');
INSERT INTO `pi_senac`.`disciplinatutor` (`ID`, `IDDisciplina`, `IDTutor`) VALUES ('3', '3', '3');
INSERT INTO `pi_senac`.`disciplinatutor` (`ID`, `IDDisciplina`, `IDTutor`) VALUES ('4', '4', '4');
INSERT INTO `pi_senac`.`disciplinatutor` (`ID`, `IDDisciplina`, `IDTutor`) VALUES ('5', '5', '5');

INSERT INTO `pi_senac`.`conteudo` (`ID`, `IDDisciplina`, `IDTutor`, `Tipo`, `Nome`, `DataHoraInclusao`) VALUES ('1', '1', '1', 'V', 'Equação de Segundo Graus', '2019-12-31 23:40:10');
INSERT INTO `pi_senac`.`conteudo` (`ID`, `IDDisciplina`, `IDTutor`, `Tipo`, `Nome`, `DataHoraInclusao`) VALUES ('2', '2', '2', 'V', 'Advérbios', '2020-01-01 13:10:10');
INSERT INTO `pi_senac`.`conteudo` (`ID`, `IDDisciplina`, `IDTutor`, `Tipo`, `Nome`, `DataHoraInclusao`) VALUES ('3', '3', '3', 'T', 'Estética', '2024-11-24 15:18:53');
INSERT INTO `pi_senac`.`conteudo` (`ID`, `IDDisciplina`, `IDTutor`, `Tipo`, `Nome`, `DataHoraInclusao`) VALUES ('4', '4', '4', 'T', 'Movimento Uniforme', '2023-06-14 15:18:53');
INSERT INTO `pi_senac`.`conteudo` (`ID`, `IDDisciplina`, `IDTutor`, `Tipo`, `Nome`, `DataHoraInclusao`) VALUES ('5', '5', '5', 'E', 'Biomas', '2022-03-03 12:05:42');

INSERT INTO `pi_senac`.`usuario` (`ID`, `Status`, `Nome`, `Email`, `Telefone`, `IDEscola`, `IDUltimaTela`) VALUES ('1', 'A', 'Henry Roberto Otávio Novaes', 'henry_novaes@ozzape.com', '79984182762', '1', '1');
INSERT INTO `pi_senac`.`usuario` (`ID`, `Status`, `Nome`, `Email`, `Telefone`, `IDEscola`, `IDUltimaTela`) VALUES ('2', 'A', 'Antônia Joana Silva', 'antoniajoanasilva@signatreinamentos.com.br', '88985491060', '2', '2');
INSERT INTO `pi_senac`.`usuario` (`ID`, `Status`, `Nome`, `Email`, `Telefone`, `IDEscola`, `IDUltimaTela`) VALUES ('3', 'I', 'Isadora Sophia Laura Lima', 'isadora.sophia.lima@willianareiaepedra.com.br', '55987397108', '3', '3');
INSERT INTO `pi_senac`.`usuario` (`ID`, `Status`, `Nome`, `Email`, `Telefone`, `IDEscola`, `IDUltimaTela`) VALUES ('4', 'I', 'Jaqueline Marli Ferreira', 'jaqueline_marli_ferreira@dedicasa.com.br', '61999718799', '4', '4');
INSERT INTO `pi_senac`.`usuario` (`ID`, `Status`, `Nome`, `Email`, `Telefone`, `IDEscola`, `IDUltimaTela`) VALUES ('5', 'I', 'Alícia Fabiana dos Santos', 'aliciafabianadossantos@aichele.com.br', '79989639963', '5', '5');

INSERT INTO `pi_senac`.`chat` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `DataHoraAbertura`, `DataHoraFechamento`) VALUES ('1', '1', '1', '1', '2023-12-30 19:52:52', '2023-12-30 20:05:52');
INSERT INTO `pi_senac`.`chat` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `DataHoraAbertura`, `DataHoraFechamento`) VALUES ('2', '2', '2', '2', '2024-06-07 16:58:24', '2024-06-07 17:20:24');
INSERT INTO `pi_senac`.`chat` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `DataHoraAbertura`, `DataHoraFechamento`) VALUES ('3', '3', '3', '3', '2024-10-15 08:22:45', '2024-10-15 08:45:56');
INSERT INTO `pi_senac`.`chat` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `DataHoraAbertura`, `DataHoraFechamento`) VALUES ('4', '4', '4', '4', '2024-10-31 10:11:30', '2024-10-31 10:37:25');
INSERT INTO `pi_senac`.`chat` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `DataHoraAbertura`, `DataHoraFechamento`) VALUES ('5', '5', '5', '5', '2024-11-24 13:31:53', null);

INSERT INTO `pi_senac`.`chatmensagem` (`ID`, `IDChat`, `IDUsuario`, `DataHoraEnvio`, `Texto`) VALUES ('1', '1', '1', '2023-12-30 19:54:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat');
INSERT INTO `pi_senac`.`chatmensagem` (`ID`, `IDChat`, `IDTutor`, `DataHoraEnvio`, `Texto`, `IDMensagemResposta`) VALUES ('2', '1', '1', '2023-12-30 19:57:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '1');
INSERT INTO `pi_senac`.`chatmensagem` (`ID`, `IDChat`, `IDTutor`, `DataHoraEnvio`, `Texto`) VALUES ('3', '2', '2', '2024-06-07 17:00:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat');
INSERT INTO `pi_senac`.`chatmensagem` (`ID`, `IDChat`, `IDUsuario`, `DataHoraEnvio`, `Texto`) VALUES ('4', '4', '4', '2024-10-31 10:15:22', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat');
INSERT INTO `pi_senac`.`chatmensagem` (`ID`, `IDChat`, `IDUsuario`, `DataHoraEnvio`, `Texto`, `IDMensagemResposta`) VALUES ('5', '1', '1', '2023-12-30 20:01:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '2');

INSERT INTO `pi_senac`.`agendamento` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `Status`, `DataHoraInclusao`, `DataHoraAgendamento`) VALUES ('1', '1', '1', '1', 'A', '2015-08-03 14:51:55', '2015-08-09 09:00:00');
INSERT INTO `pi_senac`.`agendamento` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `Status`, `DataHoraInclusao`, `DataHoraAgendamento`) VALUES ('2', '2', '2', '2', 'A', '2024-05-10 18:59:47', '2024-05-11 15:30:00');
INSERT INTO `pi_senac`.`agendamento` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `Status`, `DataHoraInclusao`, `DataHoraAgendamento`) VALUES ('3', '3', '3', '3', 'C', '2022-10-28 23:50:14', '2022-11-01 08:00:00');
INSERT INTO `pi_senac`.`agendamento` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `Status`, `DataHoraInclusao`, `DataHoraAgendamento`) VALUES ('4', '4', '4', '4', 'C', '2019-04-29 10:06:48', '2019-04-30 13:15:00');
INSERT INTO `pi_senac`.`agendamento` (`ID`, `IDUsuario`, `IDDisciplina`, `IDTutor`, `Status`, `DataHoraInclusao`, `DataHoraAgendamento`) VALUES ('5', '5', '5', '5', 'D', '2021-12-09 09:05:20', '2021-12-15 08:30:00');

