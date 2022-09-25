USE ECO;
-- select * From cliente;
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Sergio Monteiro', '01234567891', 'PF'),
('Maria Helena', '11224455667', 'PF'),
('Fabio Galdino', '63524114254', 'PF'),
 ('Leonardo Xavier', '98765432171', 'PF'),
('Ferreira Costa', '03123654000296', 'PJ');

-- select * from statuspedido;
INSERT INTO StatusPedido (Identificacao) VALUES ('ABERTO'),
											('EM PROCESSAMENTO'),
											('CANCELADO'),
											('CONCLUIDO'),	
											('EM ABERTO');

-- select * from TipoPagamento;
INSERT INTO TipoPagamento (Identificacao) VALUES ('CARTAO DE CREDITO'),
												 ('CARTAO DE DEBITO'),
												 ('DINHEIRO'),
												 ('PIX'),
												 ('BOLETO');

-- select * from statusEntrega;
INSERT INTO StatusEntrega (Identificacao) VALUES ('COLETADO PELA TRANSPORTADORA'),
												 ('CANCELADO'),
												 ('EM SEPARAÇÃO'),
												 ('PEDIDO ENTREGUE');

-- select * from enderecoEntrega;
-- desc enderecoentrega;
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) 
VALUES (1, 'PE741852BR', '14256385', 'RUA BEIJA-FLOR ', '234', 'BL01 AP140'),
	   (2, 'PE963852BR', '74859612', 'RUA FLORES ', '156', 'BL9 AP360'),
	   (3, 'PE321654BR', '65451232', 'RUA DAS CALÇADAS', '1032', NULL),
	   (4, 'PE321854BR', '78451232', 'RUA MOÇAS', '528', NULL);

-- select * From estoque;
INSERT INTO Estoque (Identificacao) VALUES ('SÃO PAULO'),
										   ('RIO DE JANEIRO'),
										   ('RECIFE'),
										   ('FORTALEZA'),
										   ('MINAS GERAIS');

-- select * From vendedorTerceiro;
-- desc vendedorTerceiro;
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) 
VALUES ('PIZZARIA GOSTO BOM', '02343058000454'),
	   ('CONSTRUÕES ALBUQUERQUE', '35856985000174'),
	   ('LOJA DOS CALÇADOS', '01254632000263');

-- select * From Fornecedor;
INSERT INTO Fornecedor (RazaoSocial, CNPJ) 
VALUES ('FARMACIA PREÇO BOM', '526985896000532'),
	   ('MATERIAL ELETRICO ALMEIDA', '01234658000751'),
	   ('PANIFICACAO MENDONÇA ', '23985745000641'),
       ('BANCO DO BRASIL ', '36145652000387');

 Select * from Categoria ;
INSERT INTO Categoria (Identificacao)
 VALUES ('MATERIAL ESCOLAR'), -- 1
		('INFORMATICA'), -- 2
		('MULTICOISAS'),  -- 3
		('DECORAÇÃO'); -- 4

-- select * from produto;
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor)
 VALUES (1, 'Carderno Tipo Brochurao', 'Caderno 98fl', 29.90),
		(2, 'Teclado', 'Teclado ABNT2 USB', 89.90),
		(2, 'Mouse', 'Mouse USB', 49.90),
		(3, 'Carteira Masculina', 'Carteira de couro masculina', 32.90),
		(4, 'Coracao em MDF CRU ', 'CORACAO MDF', 29.90),
		(4, 'Porta Treco Estilo Retro', 'Porta Treco Estilo Retro', 29.90);

-- select * from ProdutoFornecedor;
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) 
VALUES (1, 2),
	   (2, 3),
	   (3, 1);

-- select * from ProdutoVendedorTerceiro;
INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) 
VALUES (1, 1),
	   (2, 2);

-- select * from produtoEstoque;
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade)
VALUES (1, 1, 10),
	   (3, 2, 15);

-- select * from pedido;
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal)
 VALUES	(1, 2, 1, '1000', '2022-09-20', 0, 100, 100),
		(2, 3, 2, '1001', '2022-09-21', 10, 150, 160),
		(3, 4, 3, '1002', '2022-09-19', 10, 12, 22),
		(4, 2, 4, '1003', '2022-09-18', 5, 80, 85),
		(4, 2, 5, '1004', '2022-09-18', 7.99, 100, 107.99);
                 

INSERT INTO PedidoProduto (idPedido, idProduto) 
VALUES (6, 1),
	   (7, 2),
	   (8, 3);

INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) 
VALUES (6, 1, 100),
	   (7, 2, 120),
	   (8, 3, 180);
