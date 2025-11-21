-- Inserts de exemplo para popular as tabelas principais

USE hospital_db;

-- ESPECIALIDADES
INSERT INTO ESPECIALIDADE (nome_especialidade) VALUES
  ('Cardiologia'),
  ('Ortopedia'),
  ('Pediatria'),
  ('Dermatologia'),
  ('Clínica Geral');

-- PACIENTES
INSERT INTO PACIENTE (nome, cpf, data_nascimento, endereco, telefone) VALUES
  ('Ana Souza',       '111.111.111-11', '1985-03-10', 'Rua das Flores, 123',   '(11) 90000-0001'),
  ('Bruno Lima',      '222.222.222-22', '1990-07-25', 'Av. Central, 456',      '(11) 90000-0002'),
  ('Carla Santos',    '333.333.333-33', '2001-11-05', 'Rua das Palmeiras, 78', '(11) 90000-0003'),
  ('Diego Oliveira',  '444.444.444-44', '1978-01-19', 'Rua das Acácias, 99',   '(11) 90000-0004'),
  ('Eduarda Martins', '555.555.555-55', '2010-09-30', 'Rua Azul, 10',          '(11) 90000-0005');

-- MÉDICOS
INSERT INTO MEDICO (nome, crm, telefone, id_especialidade) VALUES
  ('Dr. João Cardoso',     'CRM-SP-1001', '(11) 98888-0001', 1), -- Cardiologia
  ('Dra. Marina Torres',   'CRM-SP-1002', '(11) 98888-0002', 2), -- Ortopedia
  ('Dra. Paula Ribeiro',   'CRM-SP-1003', '(11) 98888-0003', 3), -- Pediatria
  ('Dr. Ricardo Mendes',   'CRM-SP-1004', '(11) 98888-0004', 4), -- Dermatologia
  ('Dr. Sérgio Almeida',   'CRM-SP-1005', '(11) 98888-0005', 5); -- Clínica Geral

-- ATENDIMENTOS
-- id_paciente de 1 a 5 e id_medico de 1 a 5
INSERT INTO ATENDIMENTO (data_atendimento, id_paciente, id_medico, diagnostico, prescricao) VALUES
  ('2025-01-10 09:00:00', 1, 1, 'Dor no peito', 'Solicitado exame de sangue e eletrocardiograma'),
  ('2025-01-10 10:30:00', 2, 2, 'Dor no joelho', 'Repouso, gelo local e analgésico'),
  ('2025-01-11 14:00:00', 3, 3, 'Febre e tosse', 'Xarope e antitérmico'),
  ('2025-01-11 15:30:00', 4, 5, 'Check-up anual', 'Exames de rotina'),
  ('2025-01-12 09:15:00', 5, 3, 'Consulta pediátrica de rotina', 'Acompanhamento sem medicação'),
  ('2025-01-12 11:00:00', 1, 4, 'Manchas na pele', 'Pomada tópica'),
  ('2025-01-13 08:45:00', 2, 1, 'Retorno de cardiologia', 'Manter medicação atual'),
  ('2025-01-13 13:00:00', 3, 2, 'Entorse de tornozelo', 'Imobilização e repouso'),
  ('2025-01-14 16:20:00', 4, 5, 'Acompanhamento clínico', 'Ajuste de dose de medicamento'),
  ('2025-01-15 10:10:00', 5, 3, 'Infecção de vias aéreas superiores', 'Antibiótico por 7 dias');
