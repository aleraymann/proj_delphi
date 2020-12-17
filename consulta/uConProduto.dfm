inherited frmConProduto: TfrmConProduto
  Caption = 'Consulta de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited mskPesquisa: TMaskEdit
      ExplicitTop = 24
    end
  end
  inherited Panel2: TPanel
    ExplicitLeft = 0
    ExplicitTop = 49
    ExplicitWidth = 648
    ExplicitHeight = 246
    inherited grdPesquisa: TDBGrid
      OnKeyDown = nil
      Columns = <
        item
          Expanded = False
          FieldName = 'produtoId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoCategoria'
          Visible = True
        end>
    end
  end
  inherited Panel3: TPanel
    ExplicitLeft = 0
    ExplicitTop = 295
    ExplicitWidth = 648
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      #9'select p.produtoId,'
      #9#9'   p.nome,'
      #9#9'   p.descricao,'
      #9#9'   p.valor,'
      #9#9'   p.quantidade,'
      #9#9'   p.categoriaId,'
      #9#9'   c.descricao As DescricaoCategoria'
      #9'from produtos as p'
      #9'left join categorias as c on c.categoriaID = p.categoriaId')
    object qryListagemprodutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 59
      FieldName = 'nome'
      Size = 60
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 255
      FieldName = 'descricao'
      Size = 255
    end
    object qryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'valor'
    end
    object qryListagemquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'quantidade'
    end
    object qryListagemcategoriaId: TIntegerField
      DisplayWidth = 10
      FieldName = 'categoriaId'
    end
    object qryListagemDescricaoCategoria: TWideStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 30
      FieldName = 'DescricaoCategoria'
      Size = 30
    end
  end
end
