object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 571
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stpPrincipal: TStatusBar
    Left = 0
    Top = 544
    Width = 877
    Height = 27
    Panels = <
      item
        Width = 150
      end>
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 544
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = DBChart1
        Row = 0
      end
      item
        Column = 1
        Control = DBChart2
        Row = 0
      end
      item
        Column = 0
        Control = DBChart3
        Row = 1
      end
      item
        Column = 1
        Control = DBChart4
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 1
    ExplicitWidth = 872
    ExplicitHeight = 550
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 437
      Height = 271
      Title.Text.Strings = (
        'Produto em Estoque')
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 435
      ExplicitHeight = 274
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        Marks.Font.Color = clWhite
        Marks.Font.Height = -13
        Marks.Frame.Color = clWhite
        Marks.Frame.Width = 2
        Marks.Visible = False
        Marks.BackColor = clNavy
        Marks.Color = clNavy
        DataSource = dtmGrafico.QryProdutoEstoque
        Title = 'Produto em Estoque'
        XLabelsSource = 'Label'
        MultiBar = mbNone
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
    object DBChart2: TDBChart
      Left = 438
      Top = 1
      Width = 438
      Height = 271
      Title.Text.Strings = (
        'Valor de Venda por Cliente na '#218'ltima Semana')
      Legend.TextStyle = ltsXAndText
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 436
      ExplicitWidth = 435
      ExplicitHeight = 274
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series2: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Style = smsPercent
        Marks.Callout.Length = 20
        DataSource = dtmGrafico.QryValorVendaPorCliente
        Title = 'ValorDeVendaPorCliente'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
      end
    end
    object DBChart3: TDBChart
      Left = 1
      Top = 272
      Width = 437
      Height = 271
      Title.Text.Strings = (
        'Vendas da '#218'ltima Semana')
      Align = alClient
      TabOrder = 2
      ExplicitTop = 275
      ExplicitWidth = 435
      ExplicitHeight = 274
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series3: TFastLineSeries
        DataSource = dtmGrafico.QryVendasUltimaSemana
        Title = 'VendasUltimaSemana'
        XLabelsSource = 'Label'
        LinePen.Color = 10708548
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
    object DBChart4: TDBChart
      Left = 438
      Top = 272
      Width = 438
      Height = 271
      Title.Text.Strings = (
        '10 produtos mais vendidos')
      Legend.TextStyle = ltsXAndText
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 3
      ExplicitLeft = 436
      ExplicitTop = 275
      ExplicitWidth = 435
      ExplicitHeight = 274
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object PieSeries1: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Visible = False
        Marks.Style = smsPercent
        Marks.Callout.Length = 20
        DataSource = dtmGrafico.Qry10maisVendidos
        Title = '10maisVendidos'
        ValueFormat = '#,##0.00'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 792
    object CADASTRO1: TMenuItem
      Caption = '&CADASTRO'
      object Cliente1: TMenuItem
        Caption = '&CLIENTE'
        OnClick = Cliente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Categoria1: TMenuItem
        Caption = 'CATE&GORIA'
        OnClick = Categoria1Click
      end
      object Produto1: TMenuItem
        Caption = '&PRODUTO'
        OnClick = Produto1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Usuario1: TMenuItem
        Caption = 'USU'#193'RIOS'
        OnClick = Usuario1Click
      end
      object AcoesAcesso1: TMenuItem
        Caption = 'A'#199#213'ES DE ACESSO'
        OnClick = AcoesAcesso1Click
      end
      object UsuariosVsAcoes1: TMenuItem
        Caption = 'PERMISS'#195'O DE A'#199#213'ES PARA USU'#193'RIO'
        OnClick = UsuariosVsAcoes1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object AlterarSenha1: TMenuItem
        Caption = 'ALTERAR SENHA'
        OnClick = AlterarSenha1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object menuFechar: TMenuItem
        Caption = '&FECHAR'
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = '&MOVIMENTA'#199#195'O'
      object Vendas1: TMenuItem
        Caption = '&VENDA'
        OnClick = Vendas1Click
      end
    end
    object RELATRIOS1: TMenuItem
      Caption = '&RELAT'#211'RIO'
      object Categoria: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = CategoriaClick
      end
      object Cliente2: TMenuItem
        Caption = '&CLIENTE'
        OnClick = Cliente2Click
      end
      object FichadeClientes1: TMenuItem
        Caption = 'FICHA DE CLIENTE'
        OnClick = FichadeClientes1Click
      end
      object Produto2: TMenuItem
        Caption = '&PRODUTO'
        OnClick = Produto2Click
      end
      object ProdutoporCategoria1: TMenuItem
        Caption = 'PRODUTOS POR CATEGORIAS'
        OnClick = ProdutoporCategoria1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object VendaporData1: TMenuItem
        Caption = '&VENDA POR DATA'
        OnClick = VendaporData1Click
      end
    end
  end
  object tmrAtualizaDashBoard: TTimer
    Interval = 10000
    OnTimer = tmrAtualizaDashBoardTimer
    Left = 468
    Top = 11
  end
end
