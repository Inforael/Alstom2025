SELECT TOP (1000) *
  FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais]

 SELECT TOP (1000) * FROM tbl_Conversao_de_Unidade

SELECT TOP (1000) *
FROM [BNDES_Report].[dbo].[tbl_Lista_de_Materiais]


--SELECT top 10 UnidadeDeMedida,Material
--  FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais]

--SELECT top 10 Unidade_De_Medida,Componente
--  FROM [BNDES_Report].[dbo].[tbl_Lista_de_Materiais]



---------------------------------------------------------------------------------------------------
-- regra de conversao

select  distinct
        tnf.UnidadeDeMedida as UM_NF,
        tlm.Unidade_De_Medida as Un_LM,
		tnf.Material,
		tlm.Componente

FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais] as tnf 
inner join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tnf.Material = tlm.Componente
where tnf.UnidadeDeMedida <> tlm.Unidade_De_Medida

 SELECT TOP (1000) * FROM [BNDES_Report].[dbo].[tbl_Conversao_de_Unidade]


-------------------------------------------------------------------------------------------------------

select  
        tnf.UnidadeDeMedida as UM_NF,
        tlm.Unidade_De_Medida as Un_LM,
		tnf.Material,
		tlm.Componente

FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais] as tnf 
inner join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tnf.Material = tlm.Componente
where tnf.UnidadeDeMedida <> tlm.Unidade_De_Medida

-------------------------------------------------------------------------------------------------------

select  
        tnf.UnidadeDeMedida as UM_NF,
        tlm.Unidade_De_Medida as Un_LM,
		tnf.Material,
		tlm.Componente

FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais] as tnf 
left join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tnf.Material = tlm.Componente
where tnf.UnidadeDeMedida <> tlm.Unidade_De_Medida




select  
        tnf.UnidadeDeMedida as UM_NF,
        tlm.Unidade_De_Medida as Un_LM,
		tnf.Material,
		tlm.Componente

FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais] as tnf 
left join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tnf.Material = tlm.Componente
where tnf.UnidadeDeMedida = tlm.Unidade_De_Medida
	z
--2.872,832
--2.872,832

-------------------------------------------------------------------------------------------------------
select  
        tnf.UnidadeDeMedida as UM_NF,
        tlm.Unidade_De_Medida as Un_LM,
		tnf.Material,
		tlm.Componente
FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais] as tnf 
inner join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tnf.Material = tlm.Componente
where tnf.UnidadeDeMedida = tlm.Unidade_De_Medida


-------------------------------------------------------------------------------------------------------

 SELECT * FROM tbl_Conversao_de_Unidade as tcv 
 left join [dbo].[tbl_Notas_Fiscais] as tnf on tcv.Material = tnf.Material
 left join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tlm.Componente = tcv.Material
 where tnf.UnidadeDeMedida = tlm.Unidade_De_Medida


-------------------------------------------------------------------------------------------------------


SELECT * FROM tbl_Conversao_de_Unidade WHERE tbl_Conversao_de_Unidade.Material =? AND 
 tbl_Conversao_de_Unidade.UM_Material=? 
 AND tbl_Conversao_de_Unidade.UM_NF=?"


 "SELECT * FROM tbl_Conversao_de_Unidade WHERE tbl_Conversao_de_Unidade.Material ='" + material +
"' AND    tbl_Conversao_de_Unidade.UM_Material='" + medidaListaTecnica + "' AND tbl_Conversao_de_Unidade.UM_NF='" + medidaNota + "'")