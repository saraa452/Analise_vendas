
--- Inserção de  dados na tabela Clientes

insert into Clientes ( cliente_id, nome, email, cidade, estado)
values
(1, 'João Silva', 'joao@email.com', 'São Paulo', 'SP'),
(2, 'Maria Oliveira', 'maria@email.com', 'Rio de Janeiro', 'RJ'),
(3, 'Carlos Santos', 'carlos@email.com', 'Belo Horizonte', 'MG');
insert into Clientes (cliente_id, nome, email, cidade, estado) 
values 
(4, 'Ana Lima', 'ana.lima@email.com', 'Curitiba', 'PR'),
(5, 'Pedro Rocha', 'pedro.rocha@email.com', 'Porto Alegre', 'RS'),
(6, 'Fernanda Alves', 'fernanda.alves@email.com', 'Salvador', 'BA'),
(7, 'Lucas Martins', 'lucas.martins@email.com', 'Fortaleza', 'CE'),
(8, 'Juliana Pereira', 'juliana.pereira@email.com', 'Recife', 'PE'),
(9, 'Marcos Costa', 'marcos.costa@email.com', 'Manaus', 'AM'),
(10, 'Camila Souza', 'camila.souza@email.com', 'Brasília', 'DF'),
(11, 'Rafael Gomes', 'rafael.gomes@email.com', 'Goiânia', 'GO'),
(12, 'Patrícia Mendes', 'patricia.mendes@email.com', 'Belém', 'PA'),
(13, 'Thiago Ribeiro', 'thiago.ribeiro@email.com', 'Natal', 'RN'),
(14, 'Aline Freitas', 'aline.freitas@email.com', 'Florianópolis', 'SC'),
(15, 'Renato Fernandes', 'renato.fernandes@email.com', 'Campo Grande', 'MS'),
(16, 'Larissa Teixeira', 'larissa.teixeira@email.com', 'Maceió', 'AL'),
(17, 'Diego Nunes', 'diego.nunes@email.com', 'João Pessoa', 'PB'),
(18, 'Tatiane Barbosa', 'tatiane.barbosa@email.com', 'Teresina', 'PI'),
(19, 'Bruno Cardoso', 'bruno.cardoso@email.com', 'São Luís', 'MA'),
(20, 'Vanessa Dias', 'vanessa.dias@email.com', 'Aracaju', 'SE'),
(21, 'Eduardo Lima', 'eduardo.lima@email.com', 'Vitória', 'ES'),
(22, 'Sabrina Castro', 'sabrina.castro@email.com', 'Cuiabá', 'MT'),
(23, 'Fábio Araújo', 'fabio.araujo@email.com', 'Palmas', 'TO');

--- Inserção de  dados na tabela Produtos

insert into Produtos (produto_id, nome_produtos, categoria, preço)
values
(1, 'Notebook', 'Eletrônicos', 3500.00),
(2, 'Smartphone', 'Eletrônicos', 2000.00),
(3, 'Camiseta', 'Roupas', 50.00);

insert into Produtos (produto_id, nome_produtos, categoria, preço)
values
(4, 'Borracha Branca', 'Papelaria', 0.99),
(5, 'Régua 30cm', 'Papelaria', 3.75),
(6, 'Marcador de Texto Amarelo', 'Papelaria', 4.20),
(7, 'Apontador com Depósito', 'Papelaria', 2.30),
(8, 'Pincel Atômico Preto', 'Papelaria', 3.40),
(9, 'Papel Sulfite A4 500 folhas', 'Papelaria', 28.00),
(10, 'Corretivo em Fita', 'Papelaria', 6.50),
(11, 'Calculadora Simples', 'Eletrônicos', 29.90),
(12, 'Pen Drive 16GB', 'Eletrônicos', 39.99),
(13, 'Mouse Óptico USB', 'Eletrônicos', 24.90),
(14, 'Cabo USB Tipo C', 'Eletrônicos', 15.00),
(15, 'Fone de Ouvido In-Ear', 'Eletrônicos', 49.90),
(16, 'Bloco de Notas Adesivas', 'Papelaria', 5.00),
(17, 'Estojo Escolar', 'Acessórios', 12.00),
(18, 'Agenda Diária 2025', 'Papelaria', 19.90),
(19, 'Livro de Matemática Básica', 'Livros', 45.00),
(20, 'Dicionário de Português', 'Livros', 55.00);


--- Inserção de  dados na tabela Pedidos

insert into Pedidos  (pedido_id, cliente_id, data_pedido)
VALUES
(1, 1, '2023-05-01'),
(2, 2, '2023-05-02');

insert into Pedidos (pedido_id, cliente_id, data_pedido)
values
(3, 4, '2024-02-15'),
(4, 6, '2024-03-22'),
(5, 2, '2024-03-25'),
(6, 10, '2024-04-10'),
(7, 1, '2024-05-03'),
(8, 5, '2024-06-18'),
(9, 7, '2024-07-01'),
(10, 3, '2024-08-12'),
(11, 8, '2024-09-05'),
(12, 9, '2024-09-30'),
(13, 11, '2024-10-20'),
(14, 12, '2024-11-11'),
(15, 13, '2024-12-05'),
(16, 14, '2025-01-07'),
(17, 15, '2025-01-28'),
(18, 17, '2025-02-15'),
(19, 18, '2025-03-04'),
(20, 19, '2025-03-27'),
(21, 21, '2025-04-14'),
(22, 22, '2025-05-01'),
(23, 23, '2025-05-15');

--- Inserção de  dados na tabela Itens_ Pedidos 

insert into Itens_pedidos (item_id, pedido_id, produto_id, quantidade)
VALUES
(1, 1, 1, 1),  -- João comprou 1 Notebook
(2, 1, 3, 2),  -- João comprou 2 Camisetas
(3, 2, 2, 1);  -- Maria comprou 1 Smartphone

 insert into Itens_pedidos (item_id, pedido_id, produto_id, quantidade) 
 values
(4, 3, 1, 2),
(5, 3, 2, 5),
(6, 4, 5, 1),
(7, 5, 10, 3),
(8, 6, 3, 10),
(9, 7, 6, 2),
(10, 8, 4, 4),
(11, 9, 7, 3),
(12, 10, 8, 1),
(13, 11, 9, 2),
(14, 12, 11, 1),
(15, 13, 12, 2),
(16, 14, 13, 1),
(17, 15, 14, 2),
(18, 16, 15, 1),
(19, 17, 16, 4),
(20, 18, 17, 1),
(21, 19, 18, 2),
(22, 20, 19, 1),
(23, 21, 20, 1);


