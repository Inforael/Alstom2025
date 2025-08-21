SELECT TOP (1000) [Identificação]
      ,[Concat]
      ,[Numero_de_Controle]
      ,[Data_Fiscal]
      ,[NF]
      ,[Item]
      ,[Item_NF]
      ,[Material]
      ,[NCM]
      ,[Descricao]
      ,[Chave_de_Acesso]
      ,[CPF_CGC_PF_PJ]
      ,[Razao_Social_da_Pessoal_PF_PJ]
      ,[Valor_Contabil]
      ,[Aliquota]
      ,[Valor_Contabil_Sem_Imposto]
      ,[Qtd_Entrada]
      ,[UnidadeDeMedida]
      ,[Preco_Liquido]
      ,[Preco_Liquido_Sem_Imposto]
      ,[Pais]
      ,[CST_ICMS]
      ,[Aliquota_ICMS]
      ,[Aliquota_IPI]
      ,[Aliquota_PIS]
      ,[Aliquota_COFINS]
      ,[Movimento]
      ,[Categoria_NF]
      ,[Qtd_Restante]
      ,[Valor_Contabil_Restante]
      ,[Liquidado]
      ,[SSMA_TimeStamp]
  FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais]


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
