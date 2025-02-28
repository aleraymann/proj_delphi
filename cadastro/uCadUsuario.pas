unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uEnum, cCadUsuario, uDtmConexao;

type
  TfrmCadUsuario = class(TformTelaHeranca)
    QryListagemusuarioID: TIntegerField;
    QryListagemNome: TWideStringField;
    QryListagemSenha: TWideStringField;
    edtNome: TLabeledEdit;
    edtUsuarioId: TLabeledEdit;
    edtSenha: TLabeledEdit;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
    oUsuario:TUsuario;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):boolean; override;
    function Excluir: boolean; override;

  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

uses cAcaoAcesso;


{ TfrmCadUsuario }



function TfrmCadUsuario.Gravar(EstadoDoCadastro: TEstadoDoCadastro): boolean;
begin
  if EstadoDoCadastro=ecInserir then
     Result:= oUsuario.Inserir
  else if EstadoDoCadastro=ecAlterar then
     Result:= oUsuario.Atualizar;

     TAcaoAcesso.PreencherUsuariosVsAcoes(dtmPrincipal.ConexaoDB);

end;

procedure TfrmCadUsuario.btnAlterarClick(Sender: TObject);
begin
  if oUsuario.Selecionar(QryListagem.FieldByName('usuarioId').AsInteger) then begin
     edtUsuarioId.Text:=IntToStr(oUsuario.codigo);
     edtNome.Text     :=oUsuario.nome;
     edtSenha.Text    :=oUsuario.senha;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmCadUsuario.btnGravarClick(Sender: TObject);
begin
     if oUsuario.UsuarioExiste(edtNome.Text) then begin
    MessageDlg('Usu�rio j� cadastrado', mtInformation, [mbok],0);
    edtNome.SetFocus;
    abort;
  end;

  if edtUsuarioId.Text<>EmptyStr then
     oUsuario.codigo:=StrToInt(edtUsuarioId.Text)
  else
     oUsuario.codigo:=0;

  oUsuario.nome :=edtNome.Text;
  oUsuario.senha:=edtSenha.Text;

  inherited;
end;

procedure TfrmCadUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

function TfrmCadUsuario.Excluir: boolean;
begin
if oUsuario.Selecionar(QryListagem.FieldByName('usuarioId').AsInteger) then begin
     Result:=oUsuario.Apagar;
  end;
end;

procedure TfrmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oUsuario) then
     FreeAndNil(oUsuario);
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuario:=TUsuario.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual:='nome';
end;

end.
