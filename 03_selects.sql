-- Consultas de exemplo utilizando SELECT, WHERE, ORDER BY, LIMIT e JOIN

USE hospital_db;

-- 1) Listar todos os pacientes ordenados por nome
SELECT
    id_paciente,
    nome,
    cpf,
    data_nascimento
FROM PACIENTE
ORDER BY nome ASC;

-- 2) Listar os atendimentos com nome do paciente e nome do médico (JOIN entre três tabelas)
SELECT
    a.id_atendimento,
    a.data_atendimento,
    p.nome AS nome_paciente,
    m.nome AS nome_medico,
    a.diagnostico
FROM ATENDIMENTO a
JOIN PACIENTE p  ON a.id_paciente = p.id_paciente
JOIN MEDICO   m  ON a.id_medico   = m.id_medico
ORDER BY a.data_atendimento DESC;

-- 3) Listar os médicos e suas especialidades
SELECT
    m.id_medico,
    m.nome AS nome_medico,
    e.nome_especialidade
FROM MEDICO m
JOIN ESPECIALIDADE e ON m.id_especialidade = e.id_especialidade
ORDER BY e.nome_especialidade, m.nome;

-- 4) Buscar os 5 atendimentos mais recentes de um paciente específico (ex.: paciente com id = 1)
SELECT
    a.id_atendimento,
    a.data_atendimento,
    a.diagnostico,
    a.prescricao
FROM ATENDIMENTO a
WHERE a.id_paciente = 1
ORDER BY a.data_atendimento DESC
LIMIT 5;

-- 5) Contar quantos atendimentos cada médico realizou
SELECT
    m.nome AS nome_medico,
    COUNT(a.id_atendimento) AS total_atendimentos
FROM MEDICO m
LEFT JOIN ATENDIMENTO a ON m.id_medico = a.id_medico
GROUP BY m.id_medico, m.nome
ORDER BY total_atendimentos DESC;
