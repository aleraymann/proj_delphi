unit uRelCadProdutoComGrupoCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uDtmConexao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter, RLHTMLFilter,
  RLXLSFilter;


type
  TfrmRelCadProdutoComGrupoCategoria = class(TForm)
    QryProdutosComGrupoCategoria: TZQuery;
    dtsProdutosComGrupoCategoria: TDataSource;
    Relatorio: TRLReport;
    Cabe�alho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    Rodap�: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    QryProdutosComGrupoCategoriaprodutoId: TIntegerField;
    QryProdutosComGrupoCategorianome: TWideStringField;
    QryProdutosComGrupoCategoriavalor: TFloatField;
    QryProdutosComGrupoCategoriaquantidade: TFloatField;
    bandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    QryProdutosComGrupoCategoriacategoriaId: TIntegerField;
    QryProdutosComGrupoCategoriaDescricaoCategoria: TWideStringField;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDraw4: TRLDraw;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria;

implementation

{$R *.dfm}

procedure TfrmRelCadProdutoComGrupoCategoria.FormCreate(Sender: TObject);
begin
  QryProdutosComGrupoCategoria.Open;
end;

procedure TfrmRelCadProdutoComGrupoCategoria.FormDestroy(Sender: TObject);
begin
QryProdutosComGrupoCategoria.Close;
end;

end.
