object frmUsuarioVsAcoes: TfrmUsuarioVsAcoes
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rio vc A'#231#245'es'
  ClientHeight = 407
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 273
    Top = 0
    Height = 366
    ExplicitLeft = 280
    ExplicitTop = 216
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 276
    Top = 0
    Width = 507
    Height = 366
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 600
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grdAcoes: TDBGrid
      Left = 1
      Top = 1
      Width = 505
      Height = 364
      Align = alClient
      DataSource = dtsAcoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdAcoesDrawColumnCell
      OnDblClick = grdAcoesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioId'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'acaoAcessoId'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Visible = False
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 366
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 375
    object grdUsuarios: TDBGrid
      Left = 1
      Top = 1
      Width = 271
      Height = 364
      Align = alClient
      DataSource = dtsUsuario
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 366
    Width = 783
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 272
    ExplicitTop = 288
    ExplicitWidth = 185
    DesignSize = (
      783
      41)
    object btnFechar: TBitBtn
      Left = 690
      Top = 6
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFB9B8B8BABABAB3B2B2B3B2B2BAB9B9B9B8B8FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B2B2BCBABAD8D5D5D6D2D2CE
        CACAC9C4C4C4BEBEBCB6B6B4B2B2B3B2B2FF00FFFF00FFFF00FFFF00FFFF00FF
        AAA9A9DDDCDCD8D6DF817FBD4E4DC16B6BD96A6AD25151C68582B8C0BBBBB7B2
        B2AAA9A9FF00FFFF00FFFF00FFB4B3B3EEEEEEBBB8D42B2BC55A5AED9393F6A9
        A9F8ABABF89393F75555EF302EC0B0ABB6B8B3B3B3B2B2FF00FFFF00FFC8C7C7
        E0DFE62222BD3C3CD63E3EB24848C38C8CF58D8DF54949C33F3FB23F3FD92929
        BCC4BFBFB5B3B3FF00FFCBCACAECECEC7D7CC92929D35959BCCACACAACACC73A
        3ABC3B3BBCACACC7CACACA5555B82020D57472B8C2BDBDCCCBCBC5C4C4E4E3E3
        1F1FBD2323BA2626B1ACACC7C6C6C6B0B0CAB0B0CAC6C6C6ACACC72424AE2323
        BF2A2AB7CCC8C8C2C2C2B9B8B8CFCECE1313C21212A91E1EB82020ABAFAFCACE
        CECECECECEAFAFCA2121AB1F1FBA1414AC0505B4D3CFCFB4B3B3B9B8B8CCCBCB
        7777D66868D93838CA2020ABC7C7E1E9E9E9E9E9E9C7C7E12121AB3D3DCB6E6E
        DC4747C8D9D6D6B4B3B3BBBABAD6D6D67676CA8383DF3939B6CFCFEAFEFEFECF
        CFEACFCFEAFEFEFECFCFEA3535B28B8BE17B7AC2E4E1E1BABABAB8B8B8D5D5D5
        9291C5A1A1E67F7FCAFEFEFECFCFEA4242BF4242BFCFCFEAFEFEFE7878C6A2A2
        E78382BBE6E5E5B9B8B8FF00FFBEBEBEC5C5CE8484D08484D47979C66D6DCF7E
        7EDB7E7EDB6868CC7979C68787D68181C7E5E4EDBEBEBEFF00FFFF00FFB3B2B2
        D3D3D3C4C4CB8E8ED3B4B4E8A9A9E3A2A2E1A3A3E1ACACE4B5B5E8908FCDBDBC
        D6EDEDEDB4B3B3FF00FFFF00FFFF00FFACACACD3D3D3D3D3D8B7B6D7A8A8DC9E
        9EDA9D9DDAA4A3DBAFAED6E1E1E6E7E7E7ACABABFF00FFFF00FFFF00FFFF00FF
        FF00FFB3B2B2C2C1C1D4D4D4D9D9D9DFDEDEE0E0E0E3E3E3E3E3E3C5C5C5B4B3
        B3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC2C1C1BEBDBDB4
        B3B3B4B3B3BDBCBCC2C1C1FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = btnFecharClick
      ExplicitLeft = 696
    end
  end
  object QryUsuario: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    AfterScroll = QryUsuarioAfterScroll
    SQL.Strings = (
      '       select usuarioId,'
      '              nome'
      '      from usuarios')
    Params = <>
    Left = 64
    Top = 136
    object QryUsuariousuarioId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioId'
      ReadOnly = True
    end
    object QryUsuarionome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 50
    end
  end
  object QryAcoes: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select ua.usuarioId,'
      '        ua.acaoAcessoId,'
      '        a.descricao,'
      '         ua.ativo'
      '       from usuariosAcaoAcesso as ua'
      
        '        inner join acaoAcesso As a On a.acaoAcessoId = ua.acaoAc' +
        'essoId'
      '       where ua.usuarioId=:usuarioId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuarioId'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuarioId'
        ParamType = ptUnknown
      end>
    object QryAcoesusuarioId: TIntegerField
      FieldName = 'usuarioId'
      Required = True
    end
    object QryAcoesacaoAcessoId: TIntegerField
      FieldName = 'acaoAcessoId'
      Required = True
    end
    object QryAcoesdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object QryAcoesativo: TBooleanField
      FieldName = 'ativo'
      Required = True
    end
  end
  object dtsUsuario: TDataSource
    DataSet = QryUsuario
    Left = 112
    Top = 136
  end
  object dtsAcoes: TDataSource
    DataSet = QryAcoes
    Left = 516
    Top = 80
  end
end
