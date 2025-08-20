alter procedure regra_conversao (@resultado varchar(100))
as
begin

select @resultado


insert into Logs_conversao
select  

		tnf.Material,
		'O objeto não possui correspondência na tabela de conversão',
		CONVERT(date,getdate()) as Data_atual
		
FROM [BNDES_Report].[dbo].[tbl_Notas_Fiscais] as tnf 
left join [BNDES_Report].[dbo].[tbl_Lista_de_Materiais] as tlm on tnf.Material = tlm.Componente
where tnf.UnidadeDeMedida <> tlm.Unidade_De_Medida 

end

exec regra_conversao 'Carga log feita com sucesso'