# 📊 Análise de Vendas com SQL

Este projeto consiste na criação e análise de um banco de dados fictício para uma loja de varejo. O objetivo é demonstrar habilidades em **SQL**, incluindo a criação de tabelas, inserção de dados e execução de consultas avançadas para extrair insights valiosos sobre vendas, clientes e produtos.

## 📝 Objetivo do Projeto
- Criar um banco de dados relacional para uma loja fictícia.
- Realizar consultas SQL para responder a perguntas de negócios, como:
  - Quais são os clientes que mais compraram?
  - Qual produto gerou a maior receita?
  - Qual foi o total de vendas por mês?
- Demonstrar domínio de SQL em um ambiente prático.

## 🗂️ Estrutura do Banco de Dados
O banco de dados é composto por quatro tabelas principais:

1. **Clientes**: Contém informações sobre os clientes da loja.
    - `cliente_id` (INT): Identificador único do cliente.
    - `nome` (VARCHAR): Nome do cliente.
    - `email` (VARCHAR): E-mail do cliente.
    - `cidade` (VARCHAR): Cidade do cliente.
    - `estado` (VARCHAR): Estado do cliente.

2. **Produtos**: Contém informações sobre os produtos disponíveis na loja.
    - `produto_id` (INT): Identificador único do produto.
    - `nome_produto` (VARCHAR): Nome do produto.
    - `categoria` (VARCHAR): Categoria do produto (ex.: Eletrônicos, Roupas).
    - `preco` (DECIMAL): Preço do produto.

3. **Pedidos**: Contém informações sobre os pedidos realizados.
    - `pedido_id` (INT): Identificador único do pedido.
    - `cliente_id` (INT): Relaciona o pedido a um cliente.
    - `data_pedido` (DATE): Data em que o pedido foi realizado.

4. **Itens_Pedido**: Contém informações sobre os itens de cada pedido.
    - `item_id` (INT): Identificador único do item.
    - `pedido_id` (INT): Relaciona o item a um pedido.
    - `produto_id` (INT): Relaciona o item a um produto.
    - `quantidade` (INT): Quantidade comprada.

## 📂 Estrutura do Projeto
O projeto está organizado da seguinte forma:

```
Analise-de-Vendas-SQL/
│
├── README.md               # Explicação do projeto
├── criacao_tabelas.sql     # Script para criar as tabelas
├── insercao_dados.sql      # Script para inserir os dados
├── consultas.sql           # Todas as consultas SQL
└── resultados/    # Exemplos de saídas das consultas
```

## 🚀 Consultas Realizadas
O projeto inclui diversas consultas SQL para responder a perguntas de negócios. Aqui estão alguns exemplos:

1. **Total de vendas por cliente:**
    ```sql
    SELECT c.nome, SUM(pr.preco * i.quantidade) AS total_vendas
    FROM Clientes c
    JOIN Pedidos p ON c.cliente_id = p.cliente_id
    JOIN Itens_Pedido i ON p.pedido_id = i.pedido_id
    JOIN Produtos pr ON i.produto_id = pr.produto_id
    GROUP BY c.nome;
    ```

2. **Produto mais vendido em termos de quantidade:**
    ```sql
    SELECT pr.nome_produto, SUM(i.quantidade) AS total_vendido
    FROM Produtos pr
    JOIN Itens_Pedido i ON pr.produto_id = i.produto_id
    GROUP BY pr.nome_produto
    ORDER BY total_vendido DESC
    LIMIT 1;
    ```

3. **Receita total por mês:**
    ```sql
    SELECT 
        DATE_FORMAT(p.data_pedido, '%Y-%m') AS mes,
        SUM(pr.preco * i.quantidade) AS receita_total
    FROM Pedidos p
    JOIN Itens_Pedido i ON p.pedido_id = i.pedido_id
    JOIN Produtos pr ON i.produto_id = pr.produto_id
    GROUP BY DATE_FORMAT(p.data_pedido, '%Y-%m')
    ORDER BY mes;
    ```

Para mais consultas, veja o arquivo [`consultas.sql`](consultas.sql).

## 🛠️ Tecnologias Utilizadas
- **Banco de Dados Relacional:** MySQL (ou PostgreSQL, SQLite).
- **Linguagem SQL:** Para criação de tabelas, inserção de dados e consultas.
- **Ferramentas:** MySQL Workbench, DBeaver, DB Fiddle (ou outra ferramenta de sua preferência).

## 📊 Exemplos de Resultados
Aqui estão alguns exemplos de resultados das consultas realizadas:

  ** Total de vendas por cliente: **
| Cliente          | Total de Vendas |
|------------------|-----------------|
| João Silva       | 3608.40         |
| Ana Lima         | 17000.00        |
| Maria Oliveira    | 2019.50        |



  - **Receita Bruta:**
 
| Mês      | Receita Total |
|----------|---------------|
|          |               |
| 2023-05  | 5600.00       |
| 2024-02  | 17000.00      |
| 2024-03  | 23.25         |
| 2024-04  | 500.00        |
| 2024-05  | 8.40          |
| 2024-06  | 3.96          |
| 2024-07  | 6.90          |
| 2024-08  | 3.40          |

Para mais exemplos, veja a pasta [_'resultados/`](resultados/).

## 📥 Como Executar
1. Clone este repositório:
    ```bash
    git clone https://github.com/seu-usuario/Analise-de-Vendas-SQL.git
    ```
2. Importe os arquivos SQL no seu banco de dados:
    - Execute o script `criacao_tabelas.sql` para criar as tabelas.
    - Execute o script `insercao_dados.sql` para inserir os dados.
3. Execute as consultas no arquivo `consultas.sql` para explorar os dados.

## 📧 Contato
Caso tenha dúvidas ou sugestões, entre em contato:
- **Nome:** Sara Oliveira Guimarães Nascimento
- **E-mail:** saraog262@proton.me
- **LinkedIn:** (www.linkedin.com/in/sara-oliveira-041a75285)

---
**⭐ Dica:** Se gostou deste projeto, não esqueça de dar uma estrela no repositório!
