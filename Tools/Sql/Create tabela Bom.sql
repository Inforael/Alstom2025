

CREATE TABLE produto_etl
(
       [Id]									INT NOT NULL IDENTITY
      ,[Efetividade]						NVARCHAR(max) NULL
      ,[Nivel_explosao]					    NVARCHAR(max) NULL
      ,[N_item]						        NVARCHAR(max) NULL
      ,[Componente]							NVARCHAR(max) NULL
      ,[Descricao_componente]				NVARCHAR(max) NULL
      ,[Qtd_componente (UMB)]				NVARCHAR(max) NULL
      ,[UM_basica]							NVARCHAR(max) NULL
      ,[Fluxo_logistico]					NVARCHAR(max) NULL
     
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