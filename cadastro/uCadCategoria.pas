unit uCadCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  cCadCategoria,uDtmConexao,uEnum;

type
  TfrmCadCategoria = class(TformTelaHeranca)
    qryListagemcategoriaID: TIntegerField;
    qryListagemdescricao: TWideStringField;
    edtCategoriaID: TLabeledEdit;
    edtdescricao: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    oCategoria:TCategoria;

    function Excluir:Boolean; override; //possibilita reescrita
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}
{$region 'override'}
function TfrmCadCategoria.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
   if edtCategoriaId.Text<>EmptyStr then
     oCategoria.codigo:=StrToInt(edtCategoriaId.Text)
  else
     oCategoria.codigo:=0;

  oCategoria.descricao:=edtDescricao.Text;

  if EstadoDoCadastro=ecInserir then
     Result:= oCategoria.Inserir
  else if EstadoDoCadastro=ecAlterar then
     Result:= oCategoria.Atualizar;
end;


procedure TfrmCadCategoria.btnAlterarClick(Sender: TObject);
begin
  if oCategoria.Selecionar(qryListagem.FieldByName('categoriaID').AsInteger) then begin
    edtCategoriaID.Text:= IntToStr(oCategoria.codigo);
    edtdescricao.Text:=oCategoria.descricao;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

function TfrmCadCategoria.Excluir: Boolean;
begin
if oCategoria.Selecionar(qryListagem.FieldByName('categoriaID').AsInteger) then begin
  Result:=oCategoria.Apagar;
end;

end;
{$endregion}


procedure TfrmCadCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oCategoria) then
  FreeAndNil(oCategoria);
end;

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited; //heran�a
  oCategoria:=TCategoria.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='descricao';
end;


end.
