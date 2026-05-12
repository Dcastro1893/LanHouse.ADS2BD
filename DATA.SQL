-- Script DML: Inserção de Dados Iniciais
USE lan_house_gestao;

-- 15 Registos para Computadores
INSERT INTO computadores (nome, especificacoes, preco_hora) VALUES
('PC-01', 'i7-13700K, RTX 4070, 32GB RAM', 5.00),
('PC-02', 'i7-13700K, RTX 4070, 32GB RAM', 5.00),
('PC-03', 'i5-12400, GTX 1660, 16GB RAM', 3.50),
('PC-04', 'i5-12400, GTX 1660, 16GB RAM', 3.50),
('PC-05', 'Ryzen 9 7900X, RX 7900 XT, 64GB', 7.00),
('PC-06', 'Ryzen 9 7900X, RX 7900 XT, 64GB', 7.00),
('PC-07', 'i7-12700, RTX 3060, 16GB RAM', 4.50),
('PC-08', 'i7-12700, RTX 3060, 16GB RAM', 4.50),
('PC-09', 'i3-10100, GT 1030, 8GB RAM', 2.00),
('PC-10', 'i3-10100, GT 1030, 8GB RAM', 2.00),
('PC-11', 'PS5 Console - Estação 1', 4.00),
('PC-12', 'PS5 Console - Estação 2', 4.00),
('PC-13', 'Xbox Series X - Estação 1', 4.00),
('PC-14', 'i9-14900K, RTX 4090, 64GB RAM', 10.00),
('PC-15', 'i9-14900K, RTX 4090, 64GB RAM', 10.00);

-- 15 Registos para Clientes
INSERT INTO clientes (nome, cpf, email, telefone) VALUES
('Diogo Silva', '111.222.333-01', 'diogo@email.com', '910000001'),
('Ana Costa', '111.222.333-02', 'ana@email.com', '910000002'),
('João Pereira', '111.222.333-03', 'joao@email.com', '910000003'),
('Maria Santos', '111.222.333-04', 'maria@email.com', '910000004'),
('Pedro Souza', '111.222.333-05', 'pedro@email.com', '910000005'),
('Carla Dias', '111.222.333-06', 'carla@email.com', '910000006'),
('Rui Gomes', '111.222.333-07', 'rui@email.com', '910000007'),
('Sofia Martins', '111.222.333-08', 'sofia@email.com', '910000008'),
('Luis Ferreira', '111.222.333-09', 'luis@email.com', '910000009'),
('Marta Rodrigues', '111.222.333-10', 'marta@email.com', '910000010'),
('Tiago Oliveira', '111.222.333-11', 'tiago@email.com', '910000011'),
('Filipa Antunes', '111.222.333-12', 'filipa@email.com', '910000012'),
('Hugo Mendes', '111.222.333-13', 'hugo@email.com', '910000013'),
('Inês Rocha', '111.222.333-14', 'ines@email.com', '910000014'),
('Vítor Bruno', '111.222.333-15', 'vitor@email.com', '910000015');

-- 15 Registos para Produtos
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Coca-Cola 350ml', 'Bebida', 1.50, 50),
('Pepsi 350ml', 'Bebida', 1.40, 40),
('Água Mineral 500ml', 'Bebida', 1.00, 100),
('Sumol Laranja', 'Bebida', 1.50, 30),
('Red Bull', 'Bebida Energy', 2.50, 20),
('Batatas Lays Original', 'Snack', 1.20, 25),
('Doritos 100g', 'Snack', 2.00, 15),
('KitKat', 'Chocolate', 1.00, 40),
('Snickers', 'Chocolate', 1.00, 40),
('Sanduíche Mista', 'Comida', 2.50, 10),
('Café Expresso', 'Bebida Quente', 0.70, 200),
('Pastilha Elástica', 'Doces', 0.10, 500),
('Auriculares Simples', 'Acessório', 5.00, 5),
('Rato Gamer Entrada', 'Acessório', 15.00, 3),
('Tapete de Rato', 'Acessório', 8.00, 10);