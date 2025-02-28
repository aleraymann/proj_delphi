unit uPrincipal;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmConexao, Enter,
  ufrmAtualizaDB, ShellApi, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, Data.DB, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, cUsuarioLogado, ZDbcIntfs, RLReport,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,cAtualizacaoBancoDeDados,cArquivoIni,uTelaHeranca, cFuncao;

type
  TfrmPrincipal = class(TForm)
    stpPrincipal: TStatusBar;
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    Usuario1: TMenuItem;
    AcoesAcesso1: TMenuItem;
    UsuariosVsAcoes1: TMenuItem;
    N5: TMenuItem;
    AlterarSenha1: TMenuItem;
    N4: TMenuItem;
    menuFechar: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    Vendas1: TMenuItem;
    RELATRIOS1: TMenuItem;
    Categoria: TMenuItem;
    Cliente2: TMenuItem;
    FichadeClientes1: TMenuItem;
    Produto2: TMenuItem;
    ProdutoporCategoria1: TMenuItem;
    N3: TMenuItem;
    VendaporData1: TMenuItem;
    GridPanel1: TGridPanel;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    DBChart2: TDBChart;
    Series2: TPieSeries;
    DBChart3: TDBChart;
    Series3: TFastLineSeries;
    DBChart4: TDBChart;
    PieSeries1: TPieSeries;
    tmrAtualizaDashBoard: TTimer;
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
    procedure FormShow(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);


    procedure Usuario1Click(Sender: TObject);
    procedure UsuariosVsAcoes1Click(Sender: TObject);
    procedure AcoesAcesso1Click(Sender: TObject);
    procedure tmrAtualizaDashBoardTimer(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
    procedure AtualizaBancoDados(aForm: TfrmAtualizaDB);
    procedure AtualizaDashboard;
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
  uLogin, uAlterarSenha, cCadUsuario, uRelCategoria, uRelCadProdutoComGrupoCategoria,
  uRelCadClienteFicha, uRelVenda, uRelVendaPorData, uSelecioanarData, cProVenda,
  uCadAcaoAcesso, cAcaoAcesso, uUsuarioVsAcoes, uDtmGrafico;


procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
   TFuncao.CriarForm(TfrmCadCategoria,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.CategoriaClick(Sender: TObject);
begin
        Tfuncao.CriarRelatorio(TfrmRelCategoria,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadCliente,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;



procedure TfrmPrincipal.Cliente2Click(Sender: TObject);
begin
    TFuncao.CriarRelatorio(TfrmRelCadCliente,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.FichadeClientes1Click(Sender: TObject);
begin
 TFuncao.CriarRelatorio(TfrmRelCadClienteFicha,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;


procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

       FreeAndNil(TeclaEnter);
       FreeAndNil(dtmPrincipal);
        FreeAndNil(DtmGrafico);

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
          TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmAlterarSenha,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmProVenda,DtmPrincipal.ConexaoDB);
           TAcaoAcesso.CriarAcoes(TfrmSelecionarData,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelVendaPorData,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadClienteFicha,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadCliente,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadProdutoComGrupoCategoria,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCadProduto,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmRelCategoria,DtmPrincipal.ConexaoDB);
          TAcaoAcesso.CriarAcoes(TfrmUsuarioVsAcoes,DtmPrincipal.ConexaoDB);

          TAcaoAcesso.PreencherUsuariosVsAcoes(DtmPrincipal.ConexaoDB);


         DtmGrafico := TDtmGrafico.Create(self);
         AtualizaDashboard;


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
   TFuncao.CriarForm(TfrmCadastroProduto,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;


procedure TfrmPrincipal.Produto2Click(Sender: TObject);
begin

   TFuncao.CriarRelatorio(TfrmRelCadProduto,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.ProdutoporCategoria1Click(Sender: TObject);
begin
 
   TFuncao.CriarRelatorio(TfrmRelCadProdutoComGrupoCategoria,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.tmrAtualizaDashBoardTimer(Sender: TObject);
begin
  AtualizaDashboard;
end;

procedure TfrmPrincipal.Usuario1Click(Sender: TObject);
begin
    TFuncao.CriarForm(TfrmCadUsuario,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;


procedure TfrmPrincipal.UsuariosVsAcoes1Click(Sender: TObject);
begin
   TFuncao.CriarForm(TfrmUsuarioVsAcoes,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;


procedure TfrmPrincipal.VendaporData1Click(Sender: TObject);
begin
Try
   frmSelecionarData:=TfrmSelecionarData.Create(self);
    if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, frmSelecionarData.Name, dtmPrincipal.ConexaoDB) then
    begin
       frmSelecionarData.ShowModal;

       frmRelVendaPorData:=TfrmRelVendaPorData.Create(self);
       frmRelVendaPorData.QryVenda.Close;
       frmRelVendaPorData.QryVenda.ParamByName('DataInicio').AsDate:=frmSelecionarData.edtDataInicio.Date;
       frmRelVendaPorData.QryVenda.ParamByName('DataFim').AsDate:=frmSelecionarData.edtDataFinal.Date;
       frmRelVendaPorData.QryVenda.Open;
       frmRelVendaPorData.Relatorio.PreviewModal;
    end
    else begin
        MessageDlg('Usu�rio: '+ oUsuarioLogado.nome + ', n�o tem permiss�o de acesso', mtWarning,[mbok], 0);
    end;

    Finally
            if Assigned(frmSelecionarData) then
          frmSelecionarData.Release;
           if Assigned(frmRelVendaPorData) then
          frmRelVendaPorData.Release;
    End;
end;

procedure TfrmPrincipal.Vendas1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmProVenda,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;


procedure TfrmPrincipal.AlterarSenha1Click(Sender: TObject);
begin
 TFuncao.CriarForm(TfrmAlterarSenha,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure TfrmPrincipal.AcoesAcesso1Click(Sender: TObject);
begin
 TFuncao.CriarForm(TfrmCadAcaoAcesso,oUsuarioLogado,dtmPrincipal.ConexaoDB);
end;

procedure   TfrmPrincipal.AtualizaBancoDados(aForm:TfrmAtualizaDB);
var oAtualizarMSSQL:TAtualizaBancoDadosMSSQL;
begin
  aForm.refresh;
  Sleep(200);

  try
    oAtualizarMSSQL:=TAtualizaBancoDadosMSSQL.Create(DtmPrincipal.ConexaoDB);
    oAtualizarMSSQL.AtualizarBancoDeDadosMSSQL;
  finally
    if Assigned(oAtualizarMSSQL) then
       FreeAndNil(oAtualizarMSSQL);
  end;
   
end;



procedure TfrmPrincipal.AtualizaDashboard;

begin


  try
  screen.cursor:=crSQLwait;

    if DtmGraFico.QryProdutoEstoque.Active then
      DtmGraFico.QryProdutoEstoque.Close;

    if DtmGraFico.QryValorVendaPorCliente.Active then
          DtmGraFico.QryValorVendaPorCliente.Close;

    if DtmGraFico.Qry10maisVendidos.Active then
          DtmGraFico.Qry10maisVendidos.Close;

    if DtmGraFico.QryVendasUltimaSemana.Active then
          DtmGraFico.QryVendasUltimaSemana.Close;

    DtmGraFico.QryProdutoEstoque.Open;
     DtmGraFico.QryValorVendaPorCliente.Open;
     DtmGraFico.Qry10maisVendidos.Open;
     DtmGraFico.QryVendasUltimaSemana.Open;
  finally
      screen.cursor:=crDefault;
  end;

end;



end.
