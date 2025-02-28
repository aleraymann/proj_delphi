unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,
  uDtmConexao, ZAbstractRODataset, ZAbstractDataset, ZDataset,uEnum, RxToolEdit,
  RxCurrEdit, ZAbstractConnection, ZConnection;

type
  TformTelaHeranca = class(TForm)
    qryListagem: TZQuery;
    dtsListagem: TDataSource;
    pnlRodape: TPanel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagemTopo: TPanel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisarChange(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    SelectOriginal:String;

    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar:TBitBtn;
              Navegador:TDBNavigator; pgcPrincipal:TPageControl;  Flag:Boolean);
    procedure ControlarIndiceTab(pgcPrincipal: TPageControl; Indice: Integer);
    function RetornarCampoTraduzido(Campo: String): String;
    procedure ExibirLabelIndice(Campo: string; aLabel: TLabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure DesabilitarEditPK;
    procedure LimparEdits;


  public
    { Public declarations }
    EstadoDoCadastro:TEstadoDoCadastro;
    IndiceAtual:string;

    function Excluir:Boolean; virtual; //possibilita reescrita
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; virtual;

    procedure BloqueiaCTRL_DEL_DBGrid(var key: Word; Shift: TShiftState);



  end;

var
  formTelaHeranca: TformTelaHeranca;

implementation

{$R *.dfm}

uses UPrincipal, cUsuarioLogado;
{$region 'Observa��es'}
//TAG 1 = Chave primaria
//TAG 2 = Campo Obrigat�rio
{$endregion}

{$region 'FUN�OES E PROCEDURES'}
//procedimento de controle de tela
procedure TformTelaHeranca.ControlarBotoes(btnNovo,btnAlterar,btnCancelar,btnGravar,btnApagar:TBitBtn;
          Navegador:TDBNavigator;pgcPrincipal:TPageControl;Flag:Boolean);
begin
        btnNovo.Enabled       :=Flag;
        btnApagar.Enabled     :=Flag;
        btnAlterar.Enabled    :=Flag;
        Navegador.Enabled     :=Flag;
        pgcPrincipal.Pages[0].TabVisible  :=Flag;
        btnCancelar.Enabled :=not(Flag);
        btnGravar.Enabled :=not(Flag);
end;

 procedure TformTelaHeranca.ControlarIndiceTab(pgcPrincipal:TPageControl; Indice: Integer);
 begin
    if(pgcPrincipal.Pages[Indice].TabVisible) then
    pgcPrincipal.TabIndex:=Indice;
 end;


 function TformTelaHeranca.RetornarCampoTraduzido(Campo:String):String;
 var i:integer;
 begin
   for i := 0 to qryListagem.Fields.Count-1 do begin
     if LowerCase(qryListagem.Fields[i].FieldName)= LowerCase(Campo) then begin
       Result:= qryListagem.Fields[i].DisplayLabel;
       Break;
     end;

   end;

 end;



procedure TformTelaHeranca.ExibirLabelIndice(Campo:string; aLabel:TLabel);
 begin
  aLabel.Caption:=RetornarCampoTraduzido(Campo);
 end;

 function  TformTelaHeranca.ExisteCampoObrigatorio:Boolean;
 var i: Integer;
 begin
    Result:=False;
    for i := 0 to ComponentCount -1 do  begin
        if (Components[i] is TLabeledEdit) then begin
          if (TLabeledEdit(Components[i]).Tag = 2) and
          (TLabeledEdit(Components[i]).Text = EmptyStr)then begin
            MessageDlg(TLabeledEdit(Components[i]).EditLabel.Caption +
            ' � um campo obrigat�rio!', mtInformation,[mbOK],0);
            TLabeledEdit(Components[i]).SetFocus;
            Result:=true;
            Break;
          end;

        end;

    end;

 end;

 procedure TformTelaHeranca.DesabilitarEditPK;
 var i: Integer;
 begin
    for i := 0 to ComponentCount -1 do  begin
        if (Components[i] is TLabeledEdit) then begin
          if (TLabeledEdit(Components[i]).Tag = 1) then begin
                TLabeledEdit(Components[i]).Enabled:=false;
                Break;
          end;
        end;
    end;
 end;

 procedure TformTelaHeranca.LimparEdits;
 var i: Integer;
 begin
    for i := 0 to ComponentCount -1 do  begin
        if (Components[i] is TLabeledEdit) then
                TLabeledEdit(Components[i]).Text:=EmptyStr
        else if (Components[i] is TEdit) then
               TEdit(Components[i]).Text:=EmptyStr
                else if (Components[i] is TMemo) then
               TMemo(Components[i]).Text:=EmptyStr
                 else if (Components[i] is TMaskEdit) then
               TMaskEdit(Components[i]).Text:=EmptyStr
                else if (Components[i] is TDBLookupComboBox) then
               TDBLookupComboBox(Components[i]).keyValue:=Null
                else if (Components[i] is TCurrencyEdit) then
               TCurrencyEdit(Components[i]).Value:=0
                else if (Components[i] is TDateEdit) then
               TDateEdit(Components[i]).Date:=0

    end;
 end;

{$endregion}

 {$region 'METODOS VIRTUAIS'}
  function TformTelaHeranca.Excluir: Boolean;
begin
      ShowMessage('Deletado');
end;

function TformTelaHeranca.Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean;
begin
    if(EstadoDoCadastro=ecInserir)then
        ShowMessage('Inserido')
    else if (EstadoDoCadastro=ecAlterar) then
        ShowMessage('Alterado');

    Result:= True;
end;
{$endregion}



{$region 'BOT�ES'}
procedure TformTelaHeranca.btnNovoClick(Sender: TObject);
begin

  if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, self.Name + '_' +TBitBtn(sender).Name, dtmPrincipal.ConexaoDB) then
  begin
    MessageDlg('Usu�rio: '+ oUsuarioLogado.nome + ', n�o tem permiss�o de acesso', mtWarning,[mbok], 0);
    abort;
  end;
      ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
      btnNavigator, pgcPrincipal,false);
      EstadoDoCadastro:=ecInserir;
      LimparEdits;
end;

procedure TformTelaHeranca.btnPesquisarClick(Sender: TObject);
var I: Integer;
    TipoCampo : TFieldType;
    NomeCampo: String;
    WhereOrAnd: String;
    CondicaoSql:String;


begin
 if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, self.Name + '_' +TBitBtn(sender).Name, dtmPrincipal.ConexaoDB) then
  begin
    MessageDlg('Usu�rio: '+ oUsuarioLogado.nome + ', n�o tem permiss�o de acesso', mtWarning,[mbok], 0);
    abort;
  end;

  if mskPesquisar.Text= '' then
  begin
    qryListagem.Close;
    qryListagem.SQL.Clear;
    qryListagem.SQL.Add(SelectOriginal);
    qryListagem.Open;
    Abort;
  end;

  for I := 0 to QryListagem.FieldCount-1 do
  begin
    if QryListagem.Fields[i].FieldName=IndiceAtual then
    begin
      TipoCampo := QryListagem.Fields[i].DataType;
      if QryListagem.Fields[i].Origin<>'' then
      begin
        if Pos('.', QryListagem.Fields[i].Origin) > 0 then
          NomeCampo := QryListagem.Fields[i].Origin
        else
          NomeCampo := QryListagem.Fields[i].Origin+'.'+QryListagem.Fields[i].FieldName
      end
      else
        NomeCampo := QryListagem.Fields[i].FieldName;

      Break;
    end;
  end;

  if Pos('where', LowerCase(SelectOriginal))> 1 then
  begin
    WhereOrAnd := ' and '
  end
  else
  begin
    WhereOrAnd := ' where '
  end;

   if (TipoCampo=ftString) or (TipoCampo=ftWideString) then
  begin
     CondicaoSQL := WhereOrAnd+' '+ NomeCampo + ' LIKE '+QuotedStr('%'+mskPesquisar.Text+'%');
  end
  else if (TipoCampo = ftInteger) or (TipoCampo = ftSmallint) then
  begin
     CondicaoSQL := WhereOrAnd+' '+NomeCampo + '='+mskPesquisar.Text
  end
  else if (TipoCampo = ftFloat) or (TipoCampo=ftCurrency) then
  begin
     CondicaoSQL := WhereOrAnd+' '+NomeCampo + '='+StringReplace(mskPesquisar.Text,',','.',[rfReplaceAll]);
  end
  else if (TipoCampo = ftDate) or (TipoCampo = ftDateTime) then
  begin
     CondicaoSQL := WhereOrAnd+' '+NomeCampo + '='+QuotedStr(mskPesquisar.Text)
  end;

  qryListagem.Close;
  QryListagem.SQL.Clear;
  QryListagem.SQL.Add(SelectOriginal);
  QryListagem.SQL.Add(CondicaoSQL);
  QryListagem.Open;

  mskPesquisar.Text := '';

end;

procedure TformTelaHeranca.btnAlterarClick(Sender: TObject);
begin

 if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, self.Name + '_' +TBitBtn(sender).Name, dtmPrincipal.ConexaoDB) then
  begin
    MessageDlg('Usu�rio: '+ oUsuarioLogado.nome + ', n�o tem permiss�o de acesso', mtWarning,[mbok], 0);
    abort;
  end;
  
      ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
          btnNavigator, pgcPrincipal,false);
        EstadoDoCadastro:=ecAlterar;
end;

procedure TformTelaHeranca.btnApagarClick(Sender: TObject);
begin

 if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, self.Name + '_' +TBitBtn(sender).Name, dtmPrincipal.ConexaoDB) then
  begin
    MessageDlg('Usu�rio: '+ oUsuarioLogado.nome + ', n�o tem permiss�o de acesso', mtWarning,[mbok], 0);
    abort;
  end;
  Try
      if (Excluir) then begin
            ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                            btnNavigator, pgcPrincipal,true);
            ControlarIndiceTab(pgcPrincipal,0);
            LimparEdits;
             qryListagem.Refresh;
      end
      else begin
             MessageDlg('Erro na Exclus�o', mtError, [mbOK], 0);
      end;
  Finally
      EstadoDoCadastro:=ecNenhum;
  End;
end;

procedure TformTelaHeranca.btnCancelarClick(Sender: TObject);
begin
      ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                      btnNavigator, pgcPrincipal,true);
      ControlarIndiceTab(pgcPrincipal,0);
       EstadoDoCadastro:=ecNenhum;
       LimparEdits;
end;

procedure TformTelaHeranca.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TformTelaHeranca.btnGravarClick(Sender: TObject);
begin

 if not TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, self.Name + '_' +TBitBtn(sender).Name, dtmPrincipal.ConexaoDB) then
  begin
    MessageDlg('Usu�rio: '+ oUsuarioLogado.nome + ', n�o tem permiss�o de acesso', mtWarning,[mbok], 0);
    abort;
  end;
  
      if (ExisteCampoObrigatorio) then
      begin
        Abort;
      end;
    Try
      if Gravar(EstadoDoCadastro) then begin
          ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                          btnNavigator, pgcPrincipal,true);
          ControlarIndiceTab(pgcPrincipal,0);
           EstadoDoCadastro:=ecNenhum;
           LimparEdits;
           qryListagem.Refresh;
      end
      else begin
         MessageDlg('Erro na Grava��o', mtError, [mbOK], 0);
      end;
    Finally
    End;
end;

{$endregion}
procedure TformTelaHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryListagem.Close;
end;

procedure TformTelaHeranca.FormCreate(Sender: TObject);
begin
   qryListagem.Connection:= dtmPrincipal.ConexaoDB ;
   dtsListagem.DataSet:=qryListagem;
   grdListagem.DataSource:=dtsListagem;
   grdListagem.Options:=[dgTitles,dgIndicator,dgColumnResize,
                          dgColLines,dgRowLines,dgTabs,dgRowSelect,
                          dgAlwaysShowSelection,dgCancelOnExit,dgTitleClick,dgTitleHotTrack];
end;

procedure TformTelaHeranca.FormShow(Sender: TObject);
begin
  if(qryListagem.SQL.Text <> EmptyStr) then begin
    qryListagem.IndexFieldNames:=IndiceAtual;
    ExibirLabelIndice(IndiceAtual,lblIndice);
    SelectOriginal:=qryListagem.SQL.Text; // select original
    QryListagem.Open;
  end;
   ControlarIndiceTab(pgcPrincipal,0);
   DesabilitarEditPK;
   ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                  btnNavigator, pgcPrincipal,true);
end;

procedure TformTelaHeranca.grdListagemDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TformTelaHeranca.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
BloqueiaCTRL_DEL_DBGrid(key,Shift);
end;

procedure TformTelaHeranca.grdListagemTitleClick(Column: TColumn);
begin
 IndiceAtual := Column.FieldName;
 QryListagem.IndexFieldNames:=IndiceAtual;
 ExibirLabelIndice(IndiceAtual,lblIndice);

end;

procedure TformTelaHeranca.mskPesquisarChange(Sender: TObject);
begin
  qryListagem.Locate(IndiceAtual, TMaskEdit(Sender).Text, [loPartialKey]);
end;

procedure TformTelaHeranca.BloqueiaCTRL_DEL_DBGrid(var key:Word; Shift:TShiftState);
begin
  //bloqueia o ctrl+del
  if(Shift = [ssCtrl]) and (key = 46) then
  key :=0;
end;

end.
