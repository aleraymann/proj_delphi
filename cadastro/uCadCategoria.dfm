inherited frmCadCategoria: TfrmCadCategoria
  Anchors = [akLeft, akTop, akRight]
  Caption = 'Cadastro de Categorias'
  ClientHeight = 474
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Top = 433
    Width = 755
    ExplicitTop = 433
    ExplicitWidth = 755
    inherited btnFechar: TBitBtn
      Left = 658
      ExplicitLeft = 658
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pgcPrincipal: TPageControl
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 787
      ExplicitHeight = 409
      inherited pnlListagemTopo: TPanel
        inherited mskPesquisar: TMaskEdit
          Text = ''
        end
      end
      inherited grdListagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaID'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 491
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 7
      ExplicitTop = 27
      ExplicitWidth = 781
      ExplicitHeight = 403
      object edtCategoriaID: TLabeledEdit
        Tag = 1
        Left = 16
        Top = 40
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtdescricao: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 96
        Width = 425
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 30
        TabOrder = 1
      end
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'select categoriaID, '
      '       descricao'
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
