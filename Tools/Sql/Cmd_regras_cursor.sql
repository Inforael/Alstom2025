SELECT TOP (1000) [ID]
      ,[Efetividade]
      ,[Nivel_Explosao]
      ,[Numero_Do_Item]
      ,[Componente]
      ,[Desc_Componente]
      ,[QtdComponente]
      ,[Unidade_De_Medida]
      ,[Tipo_de_Suprimento]
      ,[Fluxo_Logistico]
      ,[Processado]
      ,[SSMA_TimeStamp]
  FROM [BNDES_Report].[dbo].[tbl_Lista_de_Materiais]


  --"SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material='" +
  --                             material[4] + "' AND tbl_Notas_Fiscais.Liquidado = 0 ORDER BY Data_Fiscal"


  SELECT * FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais]
  WHERE Liquidado = 0 
  ORDER BY Data_Fiscal
  
  
  SELECT * FROM [BNDES_Report].[dbo].[tbl_Lista_de_Materiais]
  WHERE [Processado] = 0 


  IF 1 = 1
     BEGIN
	       PRINT'Certo'

		  SELECT * FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais]
                        WHERE Liquidado = 0 
                              ORDER BY Data_Fiscal
     END
	 ELSE
	     PRINT'ERRADO'



"SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material='" +
                               material[4] + "' AND tbl_Notas_Fiscais.Liquidado = 0 ORDER BY Data_Fiscal"


"SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material='" +
                               material[4] + "' AND tbl_Notas_Fiscais.Liquidado = 0 ORDER BY Data_Fiscal"




-- 1: Select da lista de materiais não processados ordenados por ID.

-- 2: Para cada (For loop), item da lista executar nova query na tabela de notas usando ListaMateriais.Componente como chave, buscando a nota mais antiga e apenas não liquidadas.

-- 3: Realizar as oprações de saldo e calculo de restante.



 -- 'SELECT * FROM tbl_Lista_de_Materiais WHERE Processado = 0')

 SELECT * FROM tbl_Lista_de_Materiais WHERE Processado = 0

SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material='AA00002149176' AND tbl_Notas_Fiscais.Liquidado = 1 ORDER BY Data_Fiscal



SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material='" +
                               material[4] + "' AND tbl_Notas_Fiscais.Liquidado = 0 ORDER BY Data_Fiscal



Declare @id int , @Efetividade varchar(100),@Componente varchar(100), @Processado varchar(100)

Declare regra_lista_material cursor for 



SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material= @COMPONENTE AND tbl_Notas_Fiscais.Liquidado = 1 ORDER BY Data_Fiscal

			SELECT  
			--[ID]
				  --,[Efetividade]
				  [Componente]
				  --,[Processado]
			  FROM [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] WHERE Processado = 0




open regra_lista_material     

fetch next from regra_lista_material into @id, @Efetividade, @Componente, @Processado

while @@FETCH_STATUS = 0 

begin 


	-- select na tabela de notas e guardar num cursor de notas
	--Declare @id int , @Efetividade varchar(100),@Componente varchar(100), @Processado varchar(100) -- COLUNAS DA TABELA DE NOTAS
	Declare @id int , @Efetividade varchar(100),@Componente varchar(100), @Processado varchar(100) -- COLUNAS DA TABELA DE NOTAS

	Declare regra_lista_material cursor for 


	SELECT * FROM tbl_Notas_Fiscais WHERE tbl_Notas_Fiscais.Material= @COMPONENTE AND tbl_Notas_Fiscais.Liquidado = 1 ORDER BY Data_Fiscal
  

	open regra_lista_material     

	fetch next from regra_lista_material into @id, @Efetividade, @Componente, @Processado

	while @@FETCH_STATUS = 0 

	begin 
	--regra de saldo
	end

	close regra_lista_material
	deallocate regra_lista_materialX

	-- fim do segundo loop

print(str(@id )+ ' _ ' + @Efetividade + ' _ ' + @Componente + ' _ ' + @Processado)
fetch next from regra_lista_material into @id, @Efetividade, @Componente, @Processado

end

close regra_lista_material
deallocate regra_lista_material

