﻿object frmRelCadCliente: TfrmRelCadCliente
  Left = 0
  Top = 0
  Caption = 'Rel. Cliente'
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
    DataSource = dtsCliente
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
        Width = 202
        Height = 23
        Caption = 'Listagem de Clientes'
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
      Top = 177
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
    object RLBand1: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 3
        Top = 10
        Width = 30
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 39
        Top = 10
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 227
        Top = 10
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 608
        Top = 10
        Width = 49
        Height = 16
        DataField = 'telefone'
        DataSource = dtsCliente
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
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
      end
      object RLLabel5: TRLLabel
        Left = 55
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
        Left = 0
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
      object RLLabel6: TRLLabel
        Left = 227
        Top = 10
        Width = 40
        Height = 16
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 608
        Top = 10
        Width = 60
        Height = 16
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object QryClientes: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select clientes.clienteId,'
      '      clientes.nome,'
      '      clientes.email,'
      '      clientes.telefone'
      'from clientes'
      'order by clientes.nome')
    Params = <>
    Left = 544
    Top = 8
    object QryClientesclienteId: TIntegerField
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryClientesemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QryClientestelefone: TWideStringField
      FieldName = 'telefone'
      Size = 14
    end
  end
  object dtsCliente: TDataSource
    DataSet = QryClientes
    Left = 608
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
