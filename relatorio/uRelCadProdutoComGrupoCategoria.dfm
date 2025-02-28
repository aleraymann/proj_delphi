﻿object frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria
  Left = 0
  Top = 0
  Caption = 'Rel. Produto por Categoria'
  ClientHeight = 661
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dtsProdutosComGrupoCategoria
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabeçalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 16
        Width = 344
        Height = 23
        Caption = 'Listagem de Produtos por Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 49
        Width = 718
        Height = 26
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodapé: TRLBand
      Left = 38
      Top = 323
      Width = 718
      Height = 64
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 26
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 16
        Top = 32
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 648
        Top = 32
        Width = 25
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 679
        Top = 32
        Width = 26
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 664
        Top = 32
        Width = 9
        Height = 16
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 594
        Top = 32
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
    end
    object bandaDoGrupo: TRLGroup
      Left = 38
      Top = 113
      Width = 718
      Height = 210
      DataFields = 'categoriaId'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        BandType = btColumnHeader
        Color = clMedGray
        ParentColor = False
        Transparent = False
        object RLDBText5: TRLDBText
          Left = 45
          Top = 5
          Width = 117
          Height = 16
          DataField = 'DescricaoCategoria'
          DataSource = dtsProdutosComGrupoCategoria
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 3
          Top = 5
          Width = 21
          Height = 16
          DataField = 'categoriaId'
          DataSource = dtsProdutosComGrupoCategoria
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 30
          Top = 5
          Width = 9
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 24
        Width = 718
        Height = 32
        BandType = btColumnHeader
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 32
          Align = faClient
          Color = clMoneyGreen
          ParentColor = False
          Transparent = False
          object RLLabel6: TRLLabel
            Left = 379
            Top = 10
            Width = 38
            Height = 16
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 587
            Top = 10
            Width = 78
            Height = 16
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLLabel5: TRLLabel
          Left = 75
          Top = 10
          Width = 41
          Height = 16
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 7
          Top = 10
          Width = 49
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 56
        Width = 718
        Height = 32
        object RLDBText1: TRLDBText
          Left = 3
          Top = 10
          Width = 57
          Height = 16
          DataField = 'produtoId'
          DataSource = dtsProdutosComGrupoCategoria
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 75
          Top = 10
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsProdutosComGrupoCategoria
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 381
          Top = 10
          Width = 30
          Height = 16
          DataField = 'valor'
          DataSource = dtsProdutosComGrupoCategoria
          DisplayMask = '0.00'
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 587
          Top = 10
          Width = 67
          Height = 16
          Alignment = taRightJustify
          DataField = 'quantidade'
          DataSource = dtsProdutosComGrupoCategoria
          DisplayMask = '0.00'
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 88
        Width = 718
        Height = 90
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 587
          Top = 32
          Width = 78
          Height = 16
          Alignment = taRightJustify
          DataField = 'quantidade'
          DataSource = dtsProdutosComGrupoCategoria
          Info = riSum
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 26
          Align = faTop
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel10: TRLLabel
          Left = 334
          Top = 32
          Width = 247
          Height = 16
          Caption = 'Quantidade de Estoque por Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 385
          Top = 54
          Width = 196
          Height = 16
          Caption = 'M'#233'dia de Valor por Categoria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 587
          Top = 54
          Width = 78
          Height = 16
          Alignment = taRightJustify
          DataField = 'valor'
          DataSource = dtsProdutosComGrupoCategoria
          Info = riAverage
          Text = ''
        end
      end
      object RLDraw4: TRLDraw
        Left = 0
        Top = 184
        Width = 718
        Height = 26
        Align = faBottom
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
  object QryProdutosComGrupoCategoria: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select produtos.produtoId,'
      '       produtos.nome,'
      '       produtos.valor,'
      '       produtos.quantidade,'
      '       produtos.categoriaId,'
      '       categorias.descricao as DescricaoCategoria'
      ' from produtos'
      
        '      left join categorias on categorias.categoriaID = produtos.' +
        'categoriaID'
      ' order by produtos.categoriaID, produtos.produtoId')
    Params = <>
    Left = 592
    Top = 40
    object QryProdutosComGrupoCategoriaprodutoId: TIntegerField
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object QryProdutosComGrupoCategorianome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryProdutosComGrupoCategoriavalor: TFloatField
      FieldName = 'valor'
    end
    object QryProdutosComGrupoCategoriaquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object QryProdutosComGrupoCategoriacategoriaId: TIntegerField
      FieldName = 'categoriaId'
    end
    object QryProdutosComGrupoCategoriaDescricaoCategoria: TWideStringField
      FieldName = 'DescricaoCategoria'
      Size = 30
    end
  end
  object dtsProdutosComGrupoCategoria: TDataSource
    DataSet = QryProdutosComGrupoCategoria
    Left = 696
    Top = 8
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 480
    Top = 8
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 424
    Top = 8
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 376
    Top = 8
  end
end
