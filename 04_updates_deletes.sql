-- Exemplos de comandos UPDATE e DELETE com condições (WHERE)

USE hospital_db;

-- UPDATES

-- 1) Atualizar o telefone de um paciente específico (Beltrana Etc)
UPDATE PACIENTE
SET telefone = '(11) 97777-0001'
WHERE cpf = '111.111.111-11';

-- 2) Atualizar a especialidade de um médico (mudar Dr. Fulano de Tal para Cardiologia)
UPDATE MEDICO
SET id_especialidade = 1
WHERE nome = 'Dr. Fulano de Tal';

-- 3) Atualizar o diagnóstico de um atendimento específico
UPDATE ATENDIMENTO
SET diagnostico = 'Diagnóstico revisado: quadro estável'
WHERE id_atendimento = 1;

-- DELETES

-- 1) Excluir atendimentos antigos anteriores a uma data (exemplo)
DELETE FROM ATENDIMENTO
WHERE data_atendimento < '2025-01-11';

-- 2) Excluir um atendimento específico (por id)
DELETE FROM ATENDIMENTO
WHERE id_atendimento = 10;

-- 3) Excluir um paciente sem atendimentos associados (garantindo integridade)
-- Exemplo: apagar paciente com id 5 apenas se ele não tiver atendimentos
DELETE FROM PACIENTE
WHERE id_paciente = 5
  AND id_paciente NOT IN (SELECT DISTINCT id_paciente FROM ATENDIMENTO);
