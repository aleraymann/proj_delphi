inherited frmCadAcaoAcesso: TfrmCadAcaoAcesso
  Caption = 'Cadastro de Acesso'
  ClientWidth = 726
  ExplicitWidth = 732
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Width = 726
    ExplicitWidth = 726
    inherited btnFechar: TBitBtn
      Left = 645
      ExplicitLeft = 645
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pgcPrincipal: TPageControl
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
            FieldName = 'acaoAcessoId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 482
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chave'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      object edtAcaoAcessoId: TLabeledEdit
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
      object edtDescricao: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 96
        Width = 689
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 100
        TabOrder = 1
      end
      object edtChave: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 152
        Width = 689
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave'
        MaxLength = 60
        TabOrder = 2
      end
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'select acaoAcessoId,'
      '       descricao,'
      '       chave'
      'from acaoAcesso')
    Left = 428
    Top = 32
    object qryListagemacaoAcessoId: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'acaoAcessoId'
      ReadOnly = True
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qryListagemchave: TWideStringField
      DisplayLabel = 'Chave'
      FieldName = 'chave'
      Required = True
      Size = 60
    end
  end
  inherited dtsListagem: TDataSource
    Left = 492
    Top = 32
  end
end
