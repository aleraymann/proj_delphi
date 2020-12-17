object dtmGrafico: TdtmGrafico
  OldCreateOrder = False
  Height = 366
  Width = 560
  object QryProdutoEstoque: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select convert(varchar, produtoId)+'#39' - '#39'+ nome as Label, quantid' +
        'ade as Value from produtos')
    Params = <>
    Left = 48
    Top = 24
    object QryProdutoEstoqueLabel: TWideStringField
      FieldName = 'Label'
      ReadOnly = True
      Size = 93
    end
    object QryProdutoEstoqueValue: TFloatField
      FieldName = 'Value'
    end
  end
  object dtsProdutoEstoque: TDataSource
    DataSet = QryProdutoEstoque
    Left = 48
    Top = 80
  end
  object QryValorVendaPorCliente: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select convert(varchar, vendas.clienteId) + '#39' - '#39'+ clientes.nome' +
        ' as Label,'
      'sum(vendas.totalVenda) as Value'
      'from vendas'
      '  inner join clientes on clientes.clienteId = vendas.clienteId'
      
        '  where vendas.dataVenda between convert(date, getdate()-7) and ' +
        'convert(date,getdate())'
      '  group by vendas.clienteId, clientes.nome')
    Params = <>
    Left = 184
    Top = 24
    object QryValorVendaPorClienteLabel: TWideStringField
      FieldName = 'Label'
      ReadOnly = True
      Size = 93
    end
    object QryValorVendaPorClienteValue: TFloatField
      FieldName = 'Value'
      ReadOnly = True
    end
  end
  object Qry10maisVendidos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'select top 10 convert(varchar, vi.produtoId) + '#39' - '#39'+ p.nome as ' +
        'Label,'
      '  SUM(vi.totalProduto) as Value'
      '    from vendasItens as vi'
      '    inner join produtos as p on p.produtoId = vi.produtoId'
      '  group by vi.produtoId, p.nome'
      '  order by Label desc')
    Params = <>
    Left = 312
    Top = 24
    object Qry10maisVendidosLabel: TWideStringField
      FieldName = 'Label'
      ReadOnly = True
      Size = 93
    end
    object Qry10maisVendidosValue: TFloatField
      FieldName = 'Value'
      ReadOnly = True
    end
  end
  object QryVendasUltimaSemana: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select vendas.dataVenda as Label,'
      '          SUM(vendas.totalVenda) as Value'
      '          from vendas'
      
        '          where vendas.dataVenda between convert(date, getdate()' +
        '-7) and convert(date,getdate())'
      '         group by vendas.dataVenda')
    Params = <>
    Left = 328
    Top = 144
    object QryVendasUltimaSemanaLabel: TDateTimeField
      FieldName = 'Label'
      Required = True
    end
    object QryVendasUltimaSemanaValue: TFloatField
      FieldName = 'Value'
      ReadOnly = True
    end
  end
end
