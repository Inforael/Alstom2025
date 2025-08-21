
CREATE TABLE Tabela_PO
(
       [Id]											INT NOT NULL IDENTITY
      ,[Concat]										NVARCHAR(255) NULL
      ,[Numero_de_Controle]							NVARCHAR(255) NULL
      ,[Data_Fiscal									NVARCHAR(255) NULL
      ,[PO]											NVARCHAR(255) NULL
      ,[Item]										NVARCHAR(255) NULL
      ,[Item_NF]									NVARCHAR(255) NULL
      ,[Cod_Produto]								NVARCHAR(255) NULL
      ,[NCM]										NVARCHAR(255) NULL
	  ,[Descricao]									NVARCHAR(255) NULL
	  ,[Chave_Acesso]								NVARCHAR(255) NULL
	  ,[CPF_CGC_Pessoa_Fis_Jur]						NVARCHAR(255) NULL
	  ,[Razao_social _Pessoa_Fis_Jur]				NVARCHAR(255) NULL
	  ,[Valor_Contabil_Unitario]					NVARCHAR(255) NULL
	  ,[CST_ICMS]									NVARCHAR(255) NULL
	  ,[Aliq_ICMS]									NVARCHAR(255) NULL
	  ,[Aliq_IPI]									NVARCHAR(255) NULL
	  ,[Aliq_PIS]									NVARCHAR(255) NULL
	  ,[Aliq_COFINS]								NVARCHAR(255) NULL
	  ,[Aliq_Total]									NVARCHAR(255) NULL
	  ,[Valor_Contabil_Total_PER]					NVARCHAR(255) NULL
	  ,[Quantidade]									NVARCHAR(255) NULL
	  ,[Unidade_de_Medida]							NVARCHAR(255) NULL
	  ,[Preco_Liquido_Unitario]						NVARCHAR(255) NULL
	  ,[Preco_Liquido_Total_Per]					NVARCHAR(255) NULL
	  ,[Pais]										NVARCHAR(255) NULL
	  ,[Movimento]									NVARCHAR(255) NULL
	  ,[Categoria_NF]							    NVARCHAR(255) NULL
	  ,[Moeda]										NVARCHAR(255) NULL
     
);