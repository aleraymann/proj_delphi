inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 500
  ClientWidth = 764
  ExplicitWidth = 770
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlRodape: TPanel
    Top = 447
    Width = 764
    Height = 53
    ExplicitTop = 447
    ExplicitWidth = 764
    ExplicitHeight = 53
    inherited btnNovo: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    inherited btnAlterar: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    inherited btnCancelar: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    inherited btnGravar: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    inherited btnApagar: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    inherited btnFechar: TBitBtn
      Left = 683
      ExplicitLeft = 683
    end
    inherited btnNavigator: TDBNavigator
      Top = 4
      Hints.Strings = ()
      ExplicitTop = 4
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
            FieldName = 'usuarioId'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 7
      ExplicitTop = 27
      ExplicitWidth = 781
      ExplicitHeight = 403
      object edtUsuarioId: TLabeledEdit
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
        Width = 729
        Height = 21
        EditLabel.Tag = 2
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 30
        TabOrder = 1
      end
      object edtSenha: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 136
        Width = 729
        Height = 21
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = 'Senha'
        MaxLength = 50
        PasswordChar = '*'
        TabOrder = 2
      end
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'select usuarioId,'
      ' nome,'
      ' senha'
      'from usuarios')
    object qryListagemusuarioId: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'usuarioId'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qryListagemsenha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Required = True
      Size = 50
    end
  end
end
