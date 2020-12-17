unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  RxToolEdit, RxCurrEdit, cCadProduto, uEnum, uDtmConexao,cFuncao;

type
  TfrmCadastroProduto = class(TformTelaHeranca)
    qryListagemprodutoId: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemdescricao: TWideStringField;
    qryListagemvalor: TFloatField;
    qryListagemquantidade: TFloatField;
    qryListagemcategoriaId: TIntegerField;
    qryListagemDescricaoCategoria: TWideStringField;
    edtProdutoId: TLabeledEdit;
    edtNome: TLabeledEdit;
    lkpCategoria: TDBLookupComboBox;
    Label2: TLabel;
    QryCategoria: TZQuery;
    dtsCategoria: TDataSource;
    QryCategoriacategoriaID: TIntegerField;
    QryCategoriadescricao: TWideStringField;
    Descrição: TLabel;
    Valor: TLabel;
    Label1: TLabel;
    edtDescricao: TMemo;
    edtValor: TCurrencyEdit;
    edtQuantidade: TCurrencyEdit;
    btnIncluirCategoria: TSpeedButton;
    btnPesquisarCategoria: TSpeedButton;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirCategoriaClick(Sender: TObject);
    procedure btnPesquisarCategoriaClick(Sender: TObject);
  private
    { Private declarations }

     oProduto:TProduto;

    function Excluir:Boolean; override; //possibilita reescrita
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses cCadUsuario, uConCategoria, uPrincipal, uCadCategoria;

{$region 'override'}





function TfrmCadastroProduto.Excluir: Boolean;
begin
     if oProduto.Selecionar(qryListagem.FieldByName('produtoId').AsInteger) then begin
  Result:=oProduto.Apagar;
end;
end;


procedure TfrmCadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QryCategoria.Close;
  if Assigned(oProduto) then
  FreeAndNil(oProduto);
end;

procedure TfrmCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
  oProduto:=TProduto.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='nome';

end;

procedure TfrmCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
       QryCategoria.Open;
end;

function TfrmCadastroProduto.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
       if edtProdutoId.Text<>EmptyStr then
     oProduto.codigo:=StrToInt(edtProdutoId.Text)
  else
     oProduto.codigo:=0;

  oProduto.nome:=edtNome.Text;
  oProduto.descricao:=edtDescricao.Text;
  oProduto.categoriaId:=lkpCategoria.keyValue;
  oProduto.valor:=edtValor.Value;
  oProduto.quantidade:=edtQuantidade.Value;


  if EstadoDoCadastro=ecInserir then
     Result:= oProduto.Inserir
  else if EstadoDoCadastro=ecAlterar then
     Result:= oProduto.Atualizar;
end;
      procedure TfrmCadastroProduto.btnIncluirCategoriaClick(Sender: TObject);
begin
  inherited;
  TFuncao.CriarForm(TfrmCadCategoria, oUsuarioLogado, dtmPrincipal.ConexaoDB);
  QryCategoria.Refresh;
end;

{$endregion}


procedure TfrmCadastroProduto.btnAlterarClick(Sender: TObject);
begin

if oProduto.Selecionar(qryListagem.FieldByName('produtoId').AsInteger) then begin
    edtProdutoId.Text:=IntToStr(oProduto.codigo);
    edtNome.Text:=oProduto.nome;
    edtDescricao.Text:=oProduto.descricao;
    lkpCategoria.keyvalue:=oProduto.categoriaId;
    edtValor.Value:=oProduto.valor;
    edtQuantidade.Value:=oProduto.quantidade;

  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

end;


procedure TfrmCadastroProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;

end;

procedure TfrmCadastroProduto.btnPesquisarCategoriaClick(Sender: TObject);
begin
  inherited;
       try
          frmConCategoria:=TfrmConCategoria.Create(Self);

  if lkpCategoria.KeyValue<>Null then
     frmConCategoria.aIniciarPesquisaId:=lkpCategoria.KeyValue;

  frmConCategoria.ShowModal;

  if frmConCategoria.aRetornarIdSelecionado<>UnAssigned then  //Não Atribuido
     lkpCategoria.KeyValue:=frmConCategoria.aRetornarIdSelecionado;
       finally
          frmConCategoria.Release;
       end;

end;

end.
