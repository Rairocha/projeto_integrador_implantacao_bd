CREATE DATABASE pi_senac;

Use pi_senac;

CREATE TABLE `cidade` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Nome` varchar(150) NOT NULL,
  `UF` enum('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `disciplina` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nome_UNIQUE` (`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tela` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nome_UNIQUE` (`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tutor` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Status` char(1) NOT NULL,
  `Nome` varchar(150) DEFAULT NULL,
  `CPF` varchar(11) NOT NULL,
  `Telefone` varchar(11) DEFAULT NULL,
  `Email` varchar(300) DEFAULT NULL,
  `FotoRG` blob,
  `FotoRostoRG` blob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `CPF_UNIQUE` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `disciplinatutor` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `IDDisciplina` bigint NOT NULL,
  `IDTutor` bigint NOT NULL,
  `DiplomaMatricula` blob,
  PRIMARY KEY (`ID`),
  KEY `fk_disciplinatutor_tutor_idx` (`IDTutor`),
  KEY `fk_disciplinatutor_disciplina_idx` (`IDDisciplina`),
  CONSTRAINT `fk_disciplinatutor_disciplina` FOREIGN KEY (`IDDisciplina`) REFERENCES `disciplina` (`ID`),
  CONSTRAINT `fk_disciplinatutor_tutor` FOREIGN KEY (`IDTutor`) REFERENCES `tutor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `escola` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Nome` varchar(150) NOT NULL,
  `Sigla` varchar(10) NOT NULL,
  `IDCidade` bigint NOT NULL,
  `Particular` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Sigla_UNIQUE` (`Sigla`),
  KEY `ID_idx` (`IDCidade`),
  CONSTRAINT `fk_escola_cidade` FOREIGN KEY (`IDCidade`) REFERENCES `cidade` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuario` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Status` char(1) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Email` varchar(300) DEFAULT NULL,
  `Telefone` varchar(11) DEFAULT NULL,
  `IDEscola` bigint DEFAULT NULL,
  `IDUltimaTela` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `fk_usuario_ultima_tela_idx` (`IDUltimaTela`),
  KEY `fk_usuario_escola_idx` (`IDEscola`),
  CONSTRAINT `fk_usuario_escola` FOREIGN KEY (`IDEscola`) REFERENCES `escola` (`ID`),
  CONSTRAINT `fk_usuario_ultima_tela` FOREIGN KEY (`IDUltimaTela`) REFERENCES `tela` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `chat` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `IDUsuario` bigint NOT NULL,
  `IDDisciplina` bigint NOT NULL,
  `IDTutor` bigint DEFAULT NULL,
  `DataHoraAbertura` datetime NOT NULL,
  `DataHoraFechamento` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_chat_usuario_idx` (`IDUsuario`),
  KEY `fk_chat_tutor_idx` (`IDTutor`),
  KEY `fk_chat_disciplina_idx` (`IDDisciplina`),
  CONSTRAINT `fk_chat_disciplina` FOREIGN KEY (`IDDisciplina`) REFERENCES `disciplina` (`ID`),
  CONSTRAINT `fk_chat_tutor` FOREIGN KEY (`IDTutor`) REFERENCES `tutor` (`ID`),
  CONSTRAINT `fk_chat_usuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `chatmensagem` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `IDChat` bigint NOT NULL,
  `IDUsuario` bigint DEFAULT NULL,
  `IDTutor` bigint DEFAULT NULL,
  `DataHoraEnvio` datetime NOT NULL,
  `Texto` text,
  `Anexo` blob,
  `IDMensagemResposta` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_mensagem_chat_idx` (`IDChat`),
  KEY `fk_mensagem_usuario_idx` (`IDUsuario`),
  KEY `fk_mensagem_tutor_idx` (`IDTutor`),
  KEY `fk_mensagem_resposta_idx` (`IDMensagemResposta`),
  CONSTRAINT `fk_mensagem_chat` FOREIGN KEY (`IDChat`) REFERENCES `chat` (`ID`),
  CONSTRAINT `fk_mensagem_resposta` FOREIGN KEY (`IDMensagemResposta`) REFERENCES `chatmensagem` (`ID`),
  CONSTRAINT `fk_mensagem_tutor` FOREIGN KEY (`IDTutor`) REFERENCES `tutor` (`ID`),
  CONSTRAINT `fk_mensagem_usuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `agendamento` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `IDUsuario` bigint NOT NULL,
  `IDDisciplina` bigint NOT NULL,
  `IDTutor` bigint DEFAULT NULL,
  `Status` char(1) NOT NULL,
  `DataHoraInclusao` datetime NOT NULL,
  `DataHoraAgendamento` datetime DEFAULT NULL,
  `Gravacao` blob,
  PRIMARY KEY (`ID`),
  KEY `fk_agendamento_usuario_idx` (`IDUsuario`),
  KEY `fk_agendamento_disciplina_idx` (`IDDisciplina`),
  KEY `fk_agendamento_tutor_idx` (`IDTutor`),
  CONSTRAINT `fk_agendamento_disciplina` FOREIGN KEY (`IDDisciplina`) REFERENCES `disciplina` (`ID`),
  CONSTRAINT `fk_agendamento_tutor` FOREIGN KEY (`IDTutor`) REFERENCES `tutor` (`ID`),
  CONSTRAINT `fk_agendamento_usuario` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `conteudo` (
  `ID` bigint NOT NULL,
  `IDDisciplina` bigint NOT NULL,
  `IDTutor` bigint NOT NULL,
  `Tipo` char(1) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `DataHoraInclusao` datetime NOT NULL,
  `Anexo` blob,
  PRIMARY KEY (`ID`),
  KEY `fk_conteudo_disciplina_idx` (`IDDisciplina`),
  KEY `fk_conteudo_tutor_idx` (`IDTutor`),
  CONSTRAINT `fk_conteudo_disciplina` FOREIGN KEY (`IDDisciplina`) REFERENCES `disciplina` (`ID`),
  CONSTRAINT `fk_conteudo_tutor` FOREIGN KEY (`IDTutor`) REFERENCES `tutor` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;