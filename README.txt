# Sistema de Gestão de Lan House - Projeto 01

## Identificação do Grupo
* **Nome:** Diogo Castro da Silva
* **Matrícula:** 2021130174

---

## 1. Modelagem (DER)
O sistema foi modelado para gerir um estabelecimento que oferece acesso a computadores, venda de produtos e torneios.

### Entidades e Relacionamentos
1. **clientes**: Registo dos utilizadores do sistema.
2. **computadores**: Máquinas disponíveis para sessões.
3. **sessoes**: Registo do uso de um PC por um cliente.
4. **produtos**: Itens de conveniência para venda.
5. **consumo**: Itens vendidos durante uma sessão específica (Normalização 1FN/2FN).
6. **torneios**: Competições de videojogos.
7. **inscricoes**: Tabela associativa (N:M) entre Clientes e Torneios.
8. **audit_log**: Registo de auditoria para operações na base de dados.

---

## 2. Normalização
* **1FN**: Eliminação de grupos repetitivos (ex: tabela `consumo` separada da `sessoes`).
* **2FN**: Atributos não-chave dependem da chave primária completa (ex: `nome_produto` movido para a tabela `produtos`).
* **3FN**: Eliminação de dependências transitivas (ex: separação de moradas/cidades se necessário).

---

## 3. Estrutura de Ficheiros
* `schema.sql`: Script DDL completo com criação de tabelas e constraints.
* `data.sql`: Script DML com a inserção de pelo menos 15 registos por tabela principal.