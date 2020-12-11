﻿inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Cadastro de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pgcPrincipal: TPageControl
    ActivePage = tabManutencao
    OnChange = pgcPrincipalChange
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 787
      ExplicitHeight = 409
      inherited grdListagem: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'produtoId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 108
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
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 7
      ExplicitTop = 34
      ExplicitWidth = 781
      ExplicitHeight = 403
      object Label2: TLabel
        Left = 464
        Top = 69
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object Descrição: TLabel
        Left = 16
        Top = 120
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Valor: TLabel
        Left = 23
        Top = 269
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label1: TLabel
        Left = 176
        Top = 269
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object edtProdutoId: TLabeledEdit
        Tag = 1
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtNome: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 88
        Width = 425
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 30
        TabOrder = 1
      end
      object lkpCategoria: TDBLookupComboBox
        Left = 464
        Top = 88
        Width = 289
        Height = 21
        KeyField = 'categoriaID'
        ListField = 'descricao'
        ListSource = dtsCategoria
        TabOrder = 2
      end
      object edtDescricao: TMemo
        Left = 16
        Top = 174
        Width = 746
        Height = 89
        Lines.Strings = (
          'edtDescricao')
        TabOrder = 3
      end
      object edtValor: TCurrencyEdit
        Left = 23
        Top = 288
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object edtQuantidade: TCurrencyEdit
        Left = 176
        Top = 288
        Width = 121
        Height = 21
        DisplayFormat = ' ,0.00;- ,0.00'
        TabOrder = 5
      end
    end
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
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 255
    end
    object qryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object qryListagemquantidade: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'quantidade'
    end
    object qryListagemcategoriaId: TIntegerField
      DisplayLabel = 'Cod Categoria'
      FieldName = 'categoriaId'
    end
    object qryListagemDescricaoCategoria: TWideStringField
      FieldName = 'DescricaoCategoria'
      Size = 30
    end
  end
  object QryCategoria: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select categoriaID, descricao from categorias')
    Params = <>
    Left = 551
    Top = 123
    object QryCategoriacategoriaID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'categoriaID'
      ReadOnly = True
    end
    object QryCategoriadescricao: TWideStringField
      DisplayLabel = 'Descri'#231'ao'
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsCategoria: TDataSource
    DataSet = QryCategoria
    Left = 623
    Top = 123
  end
end
