﻿object frmRelVendaPorData: TfrmRelVendaPorData
  Left = 0
  Top = 0
  Caption = 'Rel. Venda Por Data'
  ClientHeight = 661
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dtsVenda
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
        Width = 251
        Height = 23
        Caption = 'Listagem Vendas por Data'
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
      Top = 289
      Width = 718
      Height = 64
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 49
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
      Height = 144
      DataFields = 'dataVenda'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        BandType = btColumnHeader
        Color = clMedGray
        ParentColor = False
        Transparent = False
        object RLDBText6: TRLDBText
          Left = 3
          Top = 6
          Width = 66
          Height = 16
          DataField = 'dataVenda'
          DataSource = dtsVenda
          Text = ''
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
            Left = 648
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
          Width = 52
          Height = 16
          DataField = 'clienteId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 75
          Top = 10
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 648
          Top = 10
          Width = 66
          Height = 16
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 88
        Width = 718
        Height = 49
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 659
          Top = 15
          Width = 57
          Height = 16
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Info = riSum
          Text = ''
        end
        object RLLabel10: TRLLabel
          Left = 552
          Top = 15
          Width = 98
          Height = 16
          Caption = 'Total por Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 32
          Width = 718
          Height = 17
          Align = faRightBottom
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 17
          Align = faTop
          DrawKind = dkLine
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 257
      Width = 718
      Height = 32
      BandType = btSummary
      object RLLabel7: TRLLabel
        Left = 270
        Top = 6
        Width = 103
        Height = 22
        Caption = 'Total Geral:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 376
        Top = 6
        Width = 76
        Height = 20
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
  end
  object QryVenda: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select vendas.vendaId,'
      '       vendas.clienteId,'
      '       clientes.nome,'
      '       vendas.dataVenda,'
      '       vendas.totalVenda'
      ' from vendas'
      
        '      inner join clientes on clientes.clienteId = vendas.cliente' +
        'Id'
      '      where vendas.dataVenda between :DataInicio and :DataFim'
      ' order by vendas.dataVenda, vendas.clienteId')
    Params = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptUnknown
        Value = '01/12/2020'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptUnknown
        Value = '31/12/2020'
      end>
    Left = 632
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptUnknown
        Value = '01/12/2020'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptUnknown
        Value = '31/12/2020'
      end>
    object QryVendavendaId: TIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object QryVendaclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object QryVendanome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendadataVenda: TDateTimeField
      FieldName = 'dataVenda'
    end
    object QryVendatotalVenda: TFloatField
      FieldName = 'totalVenda'
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVenda
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
