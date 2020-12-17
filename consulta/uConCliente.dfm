inherited frmConCliente: TfrmConCliente
  Caption = 'Consulta de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited mskPesquisa: TMaskEdit
      ExplicitTop = 24
    end
  end
  inherited Panel2: TPanel
    ExplicitLeft = 0
    ExplicitTop = 49
    ExplicitWidth = 648
    ExplicitHeight = 246
    inherited grdPesquisa: TDBGrid
      OnKeyDown = nil
      Columns = <
        item
          Expanded = False
          FieldName = 'clienteId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataNascimento'
          Visible = True
        end>
    end
  end
  inherited Panel3: TPanel
    ExplicitLeft = 0
    ExplicitTop = 295
    ExplicitWidth = 648
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'select clienteId,'
      #9#9'nome,'
      #9#9'endereco,'
      #9#9'cidade,'
      #9#9'bairro,'
      #9#9'estado,'
      #9#9'cep,'
      #9#9'telefone,  '
      #9#9'email,'
      #9#9'dataNascimento'
      #9'from clientes')
    object qryListagemclienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object qryListagemcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 50
    end
    object qryListagembairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object qryListagemestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object qryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 10
    end
    object qryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object qryListagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object qryListagemdataNascimento: TDateTimeField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'dataNascimento'
    end
  end
end
