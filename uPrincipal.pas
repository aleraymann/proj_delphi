unit uPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmConexao, Enter,
  ufrmAtualizaDB, ShellApi, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, Data.DB, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, cUsuarioLogado, ZDbcIntfs, RLReport,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,cAtualizacaoBancoDeDados,cArquivoIni;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    menuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    N3: TMenuItem;
    Produto2: TMenuItem;
    N4: TMenuItem;
    VendaporData1: TMenuItem;
    Categoria: TMenuItem;
    FichadeClientes1: TMenuItem;
    ProdutoporCategoria1: TMenuItem;
    Usurio1: TMenuItem;
    N5: TMenuItem;
    AlterarSenha1: TMenuItem;
    stpPrincipal: TStatusBar;
    AoeAcesso1: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure CategoriaClick(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure FichadeClientes1Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure ProdutoporCategoria1Click(Sender: TObject);
    procedure VendaporData1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure AoeAcesso1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
    procedure AtualizaBancoDados(aForm: TfrmAtualizaDB);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  oUsuarioLogado: TUsuarioLogado;

implementation

{$R *.dfm}

uses uCadCategoria, uCadCliente, uCadProduto, uProVendas,
  uRelCadProduto, uRelCadCliente, uCadUsuario,
  uLogin, uAlterarSenha, cCadUsuario, uTelaHeranca, uRelCategoria, uRelCadProdutoComGrupoCategoria,
  uRelCadClienteFicha, uRelVenda, uRelVendaPorData, uSelecioanarData, cProVenda,
  uCadAcaoAcesso, cAcaoAcesso;


procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
   frmCadCategoria:=TfrmCadCategoria.Create(Self);
   frmCadCategoria.ShowModal;
   frmCadCategoria.Release;
end;

procedure TfrmPrincipal.CategoriaClick(Sender: TObject);
begin
        frmRelCategoria:=TfrmRelCategoria.Create(Self);
        frmRelCategoria.Relatorio.PreviewModal;
        frmRelCategoria.Release;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
   frmCadCliente:=TfrmCadCliente.Create(Self);
   frmCadCliente.ShowModal;
   frmCadCliente.Release;
end;



procedure TfrmPrincipal.Cliente2Click(Sender: TObject);
begin
        frmRelCadCliente:=TfrmRelCadCliente.Create(Self);
         frmRelCadCliente.Relatorio.PreviewModal;
         frmRelCadCliente.Release;
end;

procedure TfrmPrincipal.FichadeClientes1Click(Sender: TObject);
begin

        frmRelCadClienteFicha:=TfrmRelCadClienteFicha.Create(Self);
         frmRelCadClienteFicha.Relatorio.PreviewModal;
         frmRelCadClienteFicha.Release;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

       FreeAndNil(TeclaEnter);
       FreeAndNil(dtmPrincipal);

       if Assigned(oUsuarioLogado) then
       FreeAndNil(oUsuarioLogado);

end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

    if not FileExists(TArquivoIni.ArquivoIni) then
      begin
        TArquivoIni.AtualizarIni('SERVER', 'TipoDataBase', 'MSSQL');
        TArquivoIni.AtualizarIni('SERVER', 'HostName', '.\');
        TArquivoIni.AtualizarIni('SERVER', 'Port', '1433');
        TArquivoIni.AtualizarIni('SERVER', 'User', 'sa');
        TArquivoIni.AtualizarIni('SERVER', 'Password', '132028');
        TArquivoIni.AtualizarIni('SERVER', 'Database', 'vendas');
        MessageDlg('Arquivo '+ TArquivoIni.ArquivoIni +' Criado com sucesso' +#13+
                   'Configure o arquivo antes de inicializar aplica��o',MtInformation,[mbok],0);
        Application.Terminate;
      end
      else
      begin
        frmAtualizaDB:=TfrmAtualizaDB.Create(self);
        frmAtualizaDB.Show;
        frmAtualizaDB.refresh;

        dtmPrincipal :=   TdtmPrincipal.Create(Self);
          with dtmPrincipal.ConexaoDB do
        begin
        //cria conexao no formPrincipal
          SQLHourGlass:=True;
          if TArquivoIni.LerIni('SERVER','TipoDataBase')='MSSQL' then
          Protocol:='mssql'; //protocolo do banco de dados

          LibraryLocation:='C:\Delphi\ntwdblib.dll';
          HostName:= TArquivoIni.LerIni('SERVER','Hostname');//hostname
          Port:=StrToInt(TArquivoIni.LerIni('SERVER','Port'));//porta
          User:= TArquivoIni.LerIni('SERVER','User');//user
          Password:= TArquivoIni.LerIni('SERVER','Password');//senha
          DataBase:= TArquivoIni.LerIni('SERVER','Database');//database

          //Protocol:= 'mssql';
          //HostName:='.\SQLDELPHI';
          //Port:=1433;
          //User:='sa';
          //Password:='132028';
          //Database:='vendas';
          AutoCommit := True;
          TransactIsolationLevel:= tiReadCommitted;
          Connected :=true;
        end;
         AtualizaBancoDados(frmAtualizaDB);

         TAcaoAcesso.CriarAcoes(TfrmCadCategoria, dtmPrincipal.ConexaoDB);
         TAcaoAcesso.CriarAcoes(TfrmCadCliente,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmCadastroProduto,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmCadUsuario,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmAlterarSenha,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmProVenda,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelVendaPorData,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadClienteFicha,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadCliente,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadProdutoComGrupoCategoria,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadProduto,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCategoria,DtmPrincipal.ConexaoDB);

        frmAtualizaDB.Free;

        TeclaEnter:=TMREnter.Create(Self);
        TeclaEnter.FocusEnabled:=true;
        TeclaEnter.FocusColor:=clInfoBk;
      end;


end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
      try
         oUsuarioLogado :=TUsuarioLogado.Create;
         frmLogin:=TfrmLogin.Create(Self);
          frmLogin.ShowModal;
      finally
        frmLogin.Release;
       stpPrincipal.Panels[0].Text:='Usu�rio: ' + oUsuarioLogado.nome;
      end;


end;

procedure TfrmPrincipal.menuFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
    frmCadastroProduto:=TfrmCadastroProduto.Create(Self);
   frmCadastroProduto.ShowModal;
   frmCadastroProduto.Release;
end;


procedure TfrmPrincipal.Produto2Click(Sender: TObject);
begin

    frmRelCadProduto:=TfrmRelCadProduto.Create(Self);
   frmRelCadProduto.Relatorio.PreviewModal;
   frmRelCadProduto.Release;
end;

procedure TfrmPrincipal.ProdutoporCategoria1Click(Sender: TObject);
begin
   frmRelCadProdutoComGrupoCategoria:=TfrmRelCadProdutoComGrupoCategoria.Create(Self);
   frmRelCadProdutoComGrupoCategoria.Relatorio.PreviewModal;
   frmRelCadProdutoComGrupoCategoria.Release;
end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
    frmCadUsuario := TfrmCadUsuario.create(self);
    frmCadUsuario.showModal;
    frmCadUsuario.release;
end;

procedure TfrmPrincipal.VendaporData1Click(Sender: TObject);
begin
Try
   frmSelecionarData:=TfrmSelecionarData.Create(self);
   frmSelecionarData.ShowModal;

   frmRelVendaPorData:=TfrmRelVendaPorData.Create(self);
   frmRelVendaPorData.QryVenda.Close;
   frmRelVendaPorData.QryVenda.ParamByName('DataInicio').AsDate:=frmSelecionarData.edtDataInicio.Date;
   frmRelVendaPorData.QryVenda.ParamByName('DataFim').AsDate:=frmSelecionarData.edtDataFinal.Date;
   frmRelVendaPorData.QryVenda.Open;
   frmRelVendaPorData.Relatorio.PreviewModal;
Finally
      frmSelecionarData.Release;
End;
end;

procedure TfrmPrincipal.Vendas1Click(Sender: TObject);
begin
 frmProVenda := TfrmProVenda.create(self);
 frmProVenda.showModal;
 frmProVenda.release;
end;

procedure TfrmPrincipal.AlterarSenha1Click(Sender: TObject);
begin
  frmAlterarSenha := TfrmAlterarSenha.create(self);
 frmAlterarSenha.showModal;
 frmAlterarSenha.release;
end;

procedure TfrmPrincipal.AoeAcesso1Click(Sender: TObject);
begin
 frmCadAcaoAcesso := TfrmCadAcaoAcesso.create(self);
 frmCadAcaoAcesso.showModal;
 frmCadAcaoAcesso.release;
end;

procedure   TfrmPrincipal.AtualizaBancoDados(aForm:TfrmAtualizaDB);
var oAtualizarMSSQL:TAtualizaBancoDadosMSSQL;
begin
  aForm.refresh;
  Sleep(400);

  try
    oAtualizarMSSQL:=TAtualizaBancoDadosMSSQL.Create(DtmPrincipal.ConexaoDB);
    oAtualizarMSSQL.AtualizarBancoDeDadosMSSQL;
  finally
    if Assigned(oAtualizarMSSQL) then
       FreeAndNil(oAtualizarMSSQL);
  end;
   
end;

end.
