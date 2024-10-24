CREATE DATABASE db_lojaetec;
USE db_lojaetec;

CREATE TABLE usuarios (
    usuario VARCHAR(50) NOT NULL,
    telefone_usuario VARCHAR(15),
    login VARCHAR(15) NOT NULL UNIQUE,
    senha VARCHAR(15) NOT NULL,
    idusuario INT PRIMARY KEY AUTO_INCREMENT
);

INSERT INTO usuarios (usuario, telefone_usuario, login, senha) VALUES
('José Pereira', '61911223344', 'jose_pereira', 'senha321'),
('Fernanda Costa', '61933445566', 'fernanda_costa', 'senha654'),
('Rafael Lima', '61955667788', 'rafael_lima', 'senha987'),
('Lucas Ferreira', '61977889900', 'lucas_ferreira', 'senha111'),
('Carla Alves', '61999001122', 'carla_alves', 'senha222'),
('Beatriz Gomes', '61922334455', 'beatriz_gomes', 'senha333'),
('Pedro Rocha', '61966778899', 'pedro_rocha', 'senha444'),
('João Silva', '61987654321', 'joao_silva', 'senha123'),
('Maria Oliveira', '61912345678', 'maria_oliveira', 'senha456'),
('Carlos Souza', '61998765432', 'carlos_souza', 'senha789');

CREATE TABLE clientes (
    nome VARCHAR(50) NOT NULL,
    endereco_cliente VARCHAR(100),
    telefone_cliente VARCHAR(15),
    email_cliente VARCHAR(50),
	id_cliente INT PRIMARY KEY AUTO_INCREMENT
);

INSERT INTO clientes (nome, endereco_cliente, telefone_cliente, email_cliente) VALUES
('Bruno Marques', 'Rua A, 100', '61911223344', 'bruno.marques@example.com'),
('Juliana Vieira', 'Rua B, 200', '61922334455', 'juliana.vieira@example.com'),
('Felipe Nunes', 'Rua C, 300', '61933445566', 'felipe.nunes@example.com'),
('Mariana Santos', 'Rua D, 400', '61944556677', 'mariana.santos@example.com'),
('Thiago Souza', 'Rua E, 500', '61955667788', 'thiago.souza@example.com'),
('Larissa Silva', 'Rua F, 600', '61966778899', 'larissa.silva@example.com'),
('Gabriel Almeida', 'Rua G, 700', '61977889900', 'gabriel.almeida@example.com'),
('Ana Beatriz', 'Rua das Flores, 123', '61987654321', 'ana.beatriz@example.com'),
('Pedro Alves', 'Av. Central, 456', '61912345678', 'pedro.alves@example.com'),
('Luiza Martins', 'Travessa das Acácias, 789', '61998765432', 'luiza.martins@example.com');

CREATE TABLE ordem_servico (
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150) NOT NULL,
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10,2),
    id_cliente INT NOT NULL,
    os INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, id_cliente) VALUES
('Tablet Samsung', 'Tela trincada', 'Troca de tela', 'Paulo', 150.00, 1),
('Notebook Asus', 'Teclado não funciona', 'Troca de teclado', 'Fernanda', 200.00, 2),
('Monitor LG', 'Sem imagem', 'Reparo na placa', 'João', 180.00, 3),
('Impressora Canon', 'Erro de impressão', 'Ajuste mecânico', 'Marcos', 120.00, 4),
('PC Lenovo', 'HD com problema', 'Substituição de HD', 'Ana', 250.00, 5),
('Celular Motorola', 'Bateria não carrega', 'Troca de bateria', 'Lucas', 80.00, 6),
('Notebook Apple', 'Problema na placa lógica', 'Reparo na placa', 'Camila', 350.00, 7),
('Notebook Dell', 'Não liga', 'Troca de placa-mãe', 'José', 250.00, 1),
('Impressora HP', 'Atolamento de papel', 'Limpeza e ajuste', 'Carlos', 100.00, 2),
('PC Gamer', 'Tela azul', 'Formatação e instalação de drivers', 'Ana', 150.00, 3);

