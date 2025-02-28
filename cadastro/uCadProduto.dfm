﻿inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Cadastro de Produtos'
  ClientWidth = 829
  ExplicitWidth = 835
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Width = 829
    ExplicitWidth = 912
    inherited btnFechar: TBitBtn
      Left = 748
      ExplicitLeft = 831
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pgcPrincipal: TPageControl
    ActivePage = tabManutencao
    inherited tabListagem: TTabSheet
      inherited pnlListagemTopo: TPanel
        inherited mskPesquisar: TMaskEdit
          Text = ''
        end
      end
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
            Width = 49
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
      object btnIncluirCategoria: TSpeedButton
        Left = 759
        Top = 88
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FF0A6B0A0A6B0A0A6B0A0A6B0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFB25D130A6B0A42D37331B85A0A6B0AA8
          4E0FA54A0EA4480DA1440DA0420C9F3F0C9D3E0BFF00FFFF00FFFF00FFFF00FF
          B561140A6B0A78F3A440D1710A6B0AFBF0DEFBEFDAFBEDD5FBEBD1FBE9CDFBE7
          C89E400BFF00FFFF00FF0A6B0A0A6B0A0A6B0A0A6B0A78F3A444D5740A6B0A0A
          6B0A0A6B0A0A6B0AFCEDD6FBEBD1FBEACEA1430CFF00FFFF00FF0A6B0A78F3A4
          53E4844FE1804CDD7C48D97845D67541D27231B85A0A6B0AFBEFDBFCEDD6FBEB
          D1A3470DFF00FFFF00FF0A6B0A78F3A478F3A478F3A478F3A44DDE7D78F3A478
          F3A442D3730A6B0AFCF1E0FBEFDBFBEDD7A64B0EFF00FFFF00FF0A6B0A0A6B0A
          0A6B0A0A6B0A78F3A450E2810A6B0A0A6B0A0A6B0A0A6B0AFCF4E4FBF1E1FCEF
          DCA94F0FFF00FFFF00FFFF00FFFF00FFC375190A6B0A78F3A454E5850A6B0AFC
          F9F5FCF7F1FCF7EEFCF5E9FBF3E4FCF2E2AC5110FF00FFFF00FFFF00FFFF00FF
          C579190A6B0A78F3A478F3A40A6B0AFCFAF7FCF9F5FCF7F2FCF7EEFBF6E9FBF3
          E5AD5611FF00FFFF00FFFF00FFFF00FFC77C1A0A6B0A0A6B0A0A6B0A0A6B0AFC
          FBFBFCFAF8FCF9F5FBF8F2FCF7EEFBF6EAB05A12FF00FFFF00FFFF00FFFF00FF
          C97F1CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFAFCFBF8FCF9F6FCF8F2FCF7
          EFB35E13FF00FFFF00FFFF00FFFF00FFCC821CFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFAFCFBF9FCFAF6FCF8F3B66214FF00FFFF00FFFF00FFFF00FF
          CE851DFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFCFBF9FCFA
          F7B96615FF00FFFF00FFFF00FFFF00FFCF861DFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFBFCFBF8BC6A16FF00FFFF00FFFF00FFFF00FF
          CF871DCF871DCE861DCC831CCC821CCA801BC87D1BC67A1AC47719C37419C172
          17BF6F17FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = btnIncluirCategoriaClick
      end
      object btnPesquisarCategoria: TSpeedButton
        Left = 788
        Top = 88
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF969696969696FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF919191D1D1D1969696FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E8E8EC1C2
          C2959595A0A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF8E8E8EAEAFAF9D9D9D9E9F9FFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E8E8EA0A0A0A3A3A39899
          99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF94908F94908F94
          908F8E8E8E939494A5A5A5929393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF9C9C9C9C9C9CC9C8C9DAD9D9C7C5C6A9A6A89897988A8A8AFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFA8A39DD1CECBFEFDFAFEFDFBFFFDFBFF
          FDFCFCFBFAC2BEBFB7B3B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          A8A39DFEF6EDFEF9F3FEF9F3FEF9F4FEFAF4FEFAF5FBF7F2B7B3B38D8C8DFF00
          FFFF00FFFF00FFFF00FFFF00FF7F7A77DED1C3FDF3E7FDF5EBFDF5ECFDF6ECFD
          F6EDFEF6EDFEF6EEDDD6D28D8C8DFF00FFFF00FFFF00FFFF00FFFF00FF7F7A77
          E8D6C1FDEFDFFDF1E4FDF2E4FDF2E5FDF2E5FDF2E6FDF2E5E6DCD38D8C8DFF00
          FFFF00FFFF00FFFF00FFFF00FF7F7A77D9C4ACFBE9D4FCEBD8FCEBD8FCEBD9FC
          ECDAFCEDDCFCEFDFE0D5CC8D8C8DFF00FFFF00FFFF00FFFF00FFFF00FF7F7A77
          A39483FBE7D0FCEEDDFCEEDDFCEEDDFCEEDDFCEEDDFAECDC979494FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7A77C4B29EFCEEDDFCEEDDFCEEDDFC
          EEDDFAECDCD3C8BD979494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF86827FACA094D6C9B9E2D5C4D5C8B9979494979494FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF94908F94908F94908F94
          908FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = btnPesquisarCategoriaClick
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
      Origin = 'p'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'p'
      Size = 60
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'p'
      Size = 255
    end
    object qryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'p'
    end
    object qryListagemquantidade: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'quantidade'
      Origin = 'p'
    end
    object qryListagemcategoriaId: TIntegerField
      DisplayLabel = 'Cod Categoria'
      FieldName = 'categoriaId'
      Origin = 'p'
    end
    object qryListagemDescricaoCategoria: TWideStringField
      FieldName = 'DescricaoCategoria'
      Origin = 'c.descricao'
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
