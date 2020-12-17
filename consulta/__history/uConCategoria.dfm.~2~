inherited frmConCategoria: TfrmConCategoria
  Caption = 'Consulta de Categorias'
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
          FieldName = 'categoriaID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 538
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
      'select categoriaID,'
      '          descricao'
      'from categorias')
    object qryListagemcategoriaID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaID'
      ReadOnly = True
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
