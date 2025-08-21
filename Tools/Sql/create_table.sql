

CREATE TABLE Notas_Fiscais02
(
       [Id]									NVARCHAR(255) NULL
      ,[Concat]								NVARCHAR(255) NULL
      ,[Numero_de_Controle]					NVARCHAR(255) NULL
      ,[Data_Fiscal]						NVARCHAR(255) NULL
      ,[NF]									NVARCHAR(255) NULL
      ,[Item]								NVARCHAR(255) NULL
      ,[Item_NF]							NVARCHAR(255) NULL
      ,[Material]							NVARCHAR(255) NULL
      ,[NCM]								NVARCHAR(255) NULL
      ,[Descricao]							NVARCHAR(255) NULL
      ,[Chave_de_Acesso]					NVARCHAR(255) NULL
      ,[CPF_CGC_PF_PJ]						NVARCHAR(255) NULL
      ,[Razao_Social_da_Pessoal_PF_PJ]		NVARCHAR(255) NULL
      ,[Valor_Contabil]						NVARCHAR(255) NULL
      ,[Aliquota]							NVARCHAR(255) NULL
      ,[Valor_Contabil_Sem_Imposto]			NVARCHAR(255) NULL
      ,[Qtd_Entrada]						NVARCHAR(255) NULL
      ,[UnidadeDeMedida]					NVARCHAR(255) NULL
      ,[Preco_Liquido_Sem_Imposto]			NVARCHAR(255) NULL
      ,[Pais]								NVARCHAR(255) NULL
      ,[CST_ICMS]							NVARCHAR(255) NULL
      ,[Aliquota_ICMS]						NVARCHAR(255) NULL
      ,[Aliquota_IPI]						NVARCHAR(255) NULL
      ,[Aliquota_PIS]						NVARCHAR(255) NULL
      ,[Aliquota_COFINS]					NVARCHAR(255) NULL
      ,[Movimento]							NVARCHAR(255) NULL
      ,[Categoria_NF]						NVARCHAR(255) NULL
      ,[Moeda]								NVARCHAR(255) NULL
      ,[Qtd_Restante]						NVARCHAR(255) NULL
      ,[Valor_Contabil_Restante]			NVARCHAR(255) NULL
);


CREATE TABLE Notas_Fiscais02
(
  custid       INT          NOT NULL IDENTITY,
  companyname  NVARCHAR(40) NOT NULL,
  contactname  NVARCHAR(30) NOT NULL,
  contacttitle NVARCHAR(30) NOT NULL,
  address      NVARCHAR(60) NOT NULL,
  city         NVARCHAR(15) NOT NULL,
  region       NVARCHAR(15) NULL,
  postalcode   NVARCHAR(10) NULL,
  country      NVARCHAR(15) NOT NULL,
  phone        NVARCHAR(24) NOT NULL,
  fax          NVARCHAR(24) NULL,
  CONSTRAINT PK_Customers PRIMARY KEY(custid)
);