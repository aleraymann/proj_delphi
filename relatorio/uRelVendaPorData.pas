unit uRelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uDtmConexao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter, RLHTMLFilter,
  RLXLSFilter;


type
  TfrmRelVendaPorData = class(TForm)
    QryVenda: TZQuery;
    dtsVenda: TDataSource;
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
    bandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel6: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel10: TRLLabel;
    QryVendavendaId: TIntegerField;
    QryVendaclienteId: TIntegerField;
    QryVendanome: TWideStringField;
    QryVendadataVenda: TDateTimeField;
    QryVendatotalVenda: TFloatField;
    RLBand5: TRLBand;
    RLLabel7: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendaPorData: TfrmRelVendaPorData;

implementation

{$R *.dfm}

procedure TfrmRelVendaPorData.FormDestroy(Sender: TObject);
begin
QryVenda.Close;
end;

end.
