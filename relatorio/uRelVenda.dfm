object frmRelVenda: TfrmRelVenda
  Left = 0
  Top = 0
  Caption = 'Rel. Venda'
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
        Width = 64
        Height = 23
        Caption = 'Venda'
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
      object RLReport1: TRLReport
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        DataSource = dtsVendasItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand6: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 75
          BandType = btHeader
          object RLLabel8: TRLLabel
            Left = 3
            Top = 16
            Width = 64
            Height = 23
            Caption = 'Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 49
            Width = 718
            Height = 26
            Align = faBottom
            DrawKind = dkLine
            Pen.Width = 2
          end
        end
        object RLBand7: TRLBand
          Left = 38
          Top = 305
          Width = 718
          Height = 64
          BandType = btFooter
          object RLDraw5: TRLDraw
            Left = 0
            Top = 0
            Width = 718
            Height = 49
            Align = faTop
            DrawKind = dkLine
            Pen.Width = 2
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 16
            Top = 32
            Width = 60
            Height = 16
            Info = itFullDate
            Text = ''
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 648
            Top = 32
            Width = 25
            Height = 16
            Info = itPageNumber
            Text = ''
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 679
            Top = 32
            Width = 26
            Height = 16
            Info = itLastPageNumber
            Text = ''
          end
          object RLLabel9: TRLLabel
            Left = 664
            Top = 32
            Width = 9
            Height = 16
            Caption = '/'
          end
          object RLLabel11: TRLLabel
            Left = 594
            Top = 32
            Width = 48
            Height = 16
            Caption = 'P'#225'gina:'
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 113
          Width = 718
          Height = 192
          DataFields = 'dataVenda'
          object RLBand8: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 24
            BandType = btColumnHeader
            Color = clMedGray
            ParentColor = False
            Transparent = False
            object RLDBText4: TRLDBText
              Left = 3
              Top = 6
              Width = 66
              Height = 16
              DataField = 'dataVenda'
              DataSource = dtsVendasItens
              Text = ''
            end
          end
          object RLBand9: TRLBand
            Left = 0
            Top = 24
            Width = 718
            Height = 32
            BandType = btColumnHeader
            object RLPanel2: TRLPanel
              Left = 0
              Top = 0
              Width = 718
              Height = 32
              Align = faClient
              Color = clMoneyGreen
              ParentColor = False
              Transparent = False
              object RLLabel12: TRLLabel
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
            object RLLabel13: TRLLabel
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
            object RLLabel14: TRLLabel
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
          object RLBand10: TRLBand
            Left = 0
            Top = 56
            Width = 718
            Height = 32
            object RLDBText5: TRLDBText
              Left = 3
              Top = 10
              Width = 52
              Height = 16
              DataField = 'clienteId'
              DataSource = dtsVendasItens
              Text = ''
            end
            object RLDBText7: TRLDBText
              Left = 75
              Top = 10
              Width = 36
              Height = 16
              DataField = 'nome'
              DataSource = dtsVendasItens
              Text = ''
            end
            object RLDBText8: TRLDBText
              Left = 648
              Top = 10
              Width = 66
              Height = 16
              DataField = 'totalVenda'
              DataSource = dtsVendasItens
              DisplayMask = '0.00'
              Text = ''
            end
          end
          object RLBand11: TRLBand
            Left = 0
            Top = 88
            Width = 718
            Height = 73
            BandType = btSummary
            object RLDBResult3: TRLDBResult
              Left = 560
              Top = 32
              Width = 105
              Height = 16
              Alignment = taRightJustify
              DataField = 'totalVenda'
              DataSource = dtsVendasItens
              Info = riSum
              Text = ''
            end
            object RLDraw6: TRLDraw
              Left = 0
              Top = 0
              Width = 718
              Height = 26
              Align = faTop
              DrawKind = dkLine
              Pen.Width = 2
            end
            object RLLabel15: TRLLabel
              Left = 453
              Top = 32
              Width = 101
              Height = 16
              Caption = 'Total da Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object RLBand12: TRLBand
            Left = 0
            Top = 161
            Width = 718
            Height = 27
            BandType = btFooter
            object RLDBResult4: TRLDBResult
              Left = 560
              Top = 11
              Width = 105
              Height = 16
              Alignment = taRightJustify
              DataField = 'totalVenda'
              DataSource = dtsVendasItens
              Info = riSum
              Text = ''
            end
            object RLLabel16: TRLLabel
              Left = 453
              Top = 11
              Width = 75
              Height = 16
              Caption = 'Total Geral'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
    object Rodapé: TRLBand
      Left = 38
      Top = 305
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
      Height = 192
      DataFields = 'vendaId'
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
          Left = 132
          Top = 5
          Width = 47
          Height = 16
          DataField = 'vendaId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel17: TRLLabel
          Left = 3
          Top = 6
          Width = 123
          Height = 16
          Caption = 'Numero da Venda:'
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
        Top = 24
        Width = 718
        Height = 32
        object RLDBText1: TRLDBText
          Left = 59
          Top = 10
          Width = 34
          Height = 16
          DataField = 'clienteId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 113
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
          DataField = 'dataVenda'
          DataSource = dtsVenda
          DisplayMask = '0.00'
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 4
          Top = 10
          Width = 53
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 99
          Top = 10
          Width = 8
          Height = 16
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 605
          Top = 10
          Width = 37
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 120
        Width = 718
        Height = 27
        BandType = btFooter
        object RLDBResult2: TRLDBResult
          Left = 598
          Top = 12
          Width = 105
          Height = 16
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Info = riSum
          Text = ''
        end
        object RLLabel7: TRLLabel
          Left = 487
          Top = 12
          Width = 105
          Height = 16
          Caption = 'Total da Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 56
        Width = 718
        Height = 64
        DataSource = dtsVendasItens
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 25
          BandType = btHeader
          Color = clMoneyGreen
          ParentColor = False
          Transparent = False
          object RLLabel18: TRLLabel
            Left = 38
            Top = 6
            Width = 54
            Height = 16
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel19: TRLLabel
            Left = 366
            Top = 3
            Width = 78
            Height = 16
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel20: TRLLabel
            Left = 466
            Top = 3
            Width = 92
            Height = 16
            Caption = 'Valor Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel21: TRLLabel
            Left = 574
            Top = 3
            Width = 110
            Height = 16
            Caption = 'Total do Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 25
          Width = 718
          Height = 24
          object RLDBText10: TRLDBText
            Left = 113
            Top = 6
            Width = 36
            Height = 16
            DataField = 'nome'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 36
            Top = 5
            Width = 57
            Height = 16
            DataField = 'produtoId'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLLabel10: TRLLabel
            Left = 99
            Top = 5
            Width = 8
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 366
            Top = 5
            Width = 67
            Height = 16
            DataField = 'quantidade'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLDBText12: TRLDBText
            Left = 474
            Top = 5
            Width = 74
            Height = 16
            DataField = 'valorUnitario'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLDBText13: TRLDBText
            Left = 594
            Top = 5
            Width = 74
            Height = 16
            DataField = 'totalProduto'
            DataSource = dtsVendasItens
            Text = ''
          end
        end
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
      '      where vendas.vendaId =:vendaId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 10
      end>
    Left = 632
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 10
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
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryVendatotalVenda: TFloatField
      FieldName = 'totalVenda'
      DisplayFormat = '0.00'
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
  object QryVendasItens: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select vendasItens.vendaId,'
      '       vendasitens.produtoId,'
      '       produtos.nome,'
      '       vendasItens.quantidade,'
      '       vendasItens.valorUnitario,'
      '       vendasItens.totalProduto'
      ' from vendasItens'
      
        '      inner join produtos on produtos.produtoId = vendasItens.pr' +
        'odutoId'
      '      where vendasItens.vendaId =:vendaId'
      '      order by vendasItens.produtoId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 8
      end>
    Left = 632
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 8
      end>
    object QryVendasItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Required = True
    end
    object QryVendasItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Required = True
    end
    object QryVendasItensnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendasItensquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object QryVendasItensvalorUnitario: TFloatField
      FieldName = 'valorUnitario'
    end
    object QryVendasItenstotalProduto: TFloatField
      FieldName = 'totalProduto'
    end
  end
  object dtsVendasItens: TDataSource
    DataSet = QryVendasItens
    Left = 696
    Top = 72
  end
end
