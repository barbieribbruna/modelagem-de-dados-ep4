# Sistema de Gestão Hospitalar – EP4 (MySQL)

Repositório referente à Experiência Prática IV da disciplina de Modelagem de Banco de Dados:
**Criação e Manipulação de Dados com SQL em Projeto Real (Mini-mundo)**.

O mini-mundo implementado foi o de uma **rede de hospitais**, continuando as EP1, EP2 e EP3,
onde já foram definidos o minimundo, o DER, o modelo lógico e a normalização até a 3FN.

## 🏥 Modelo de Dados (Resumo)

Entidades principais:

- **PACIENTE**: dados cadastrais dos pacientes.
- **MÉDICO**: dados dos médicos, vinculados a uma especialidade.
- **ESPECIALIDADE**: especialidades médicas (cardiologia, ortopedia etc.).
- **ATENDIMENTO**: registros de consultas/atendimentos médicos, relacionando um paciente e um médico em uma data/horário, com diagnóstico e prescrição.

Chaves:

- PK: `id_paciente`, `id_medico`, `id_especialidade`, `id_atendimento`
- FK: `MEDICO.id_especialidade`, `ATENDIMENTO.id_paciente`, `ATENDIMENTO.id_medico`

O modelo foi **normalizado até a 3FN**, conforme comprovado na EP3.

## 🧰 Tecnologias

- **SGBD**: MySQL
- **Ferramenta**: MySQL Workbench (ou cliente equivalente)
- **Script Language**: SQL (DDL + DML)

## 📂 Estrutura deste repositório

- `01_criacao_tabelas.sql`  
  Cria o banco de dados `hospital_db` e todas as tabelas com PK, FK e tipos de dados.

- `02_inserts.sql`  
  Popula as tabelas com dados de exemplo (pacientes, médicos, especialidades e atendimentos).

- `03_selects.sql`  
  Consultas usando `SELECT`, `WHERE`, `ORDER BY`, `LIMIT` e `JOIN` (incluindo junções entre múltiplas tabelas).

- `04_updates_deletes.sql`  
  Comandos `UPDATE` e `DELETE` com condições (`WHERE`), respeitando integridade referencial.

## 🚀 Como executar os scripts

1. Abra o **MySQL Workbench** e conecte-se ao servidor MySQL.
2. Abra o arquivo `01_criacao_tabelas.sql` e execute todo o script (isso criará o banco `hospital_db` e as tabelas).
3. Abra o arquivo `02_inserts.sql` e execute todo o script (isso irá popular as tabelas com dados de teste).
4. Para testar as consultas, abra e execute o arquivo `03_selects.sql`.
5. Para testar manipulações de dados, abra e execute o arquivo `04_updates_deletes.sql`.

## ✅ Objetivo da Atividade

Atender às exigências da Experiência Prática IV:

1. Implementar o modelo lógico em um SGBD relacional (MySQL).
2. Executar comandos DML (`INSERT`, `SELECT`, `UPDATE`, `DELETE`) de forma coerente com o modelo.
3. Publicar um repositório GitHub com os scripts, instruções de execução e documentação.

---
