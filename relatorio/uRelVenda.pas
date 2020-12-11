unit uRelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uDtmConexao, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter, RLHTMLFilter,
  RLXLSFilter;


type
  TfrmRelVenda = class(TForm)
    QryVenda: TZQuery;
    dtsVenda: TDataSource;
    Relatorio: TRLReport;
    Cabeçalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    Rodapé: TRLBand;
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
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel7: TRLLabel;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLLabel8: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand7: TRLBand;
    RLDraw5: TRLDraw;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand8: TRLBand;
    RLDBText4: TRLDBText;
    RLBand9: TRLBand;
    RLPanel2: TRLPanel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLBand10: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand11: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDraw6: TRLDraw;
    RLLabel15: TRLLabel;
    RLBand12: TRLBand;
    RLDBResult4: TRLDBResult;
    RLLabel16: TRLLabel;
    QryVendasItens: TZQuery;
    dtsVendasItens: TDataSource;
    QryVendavendaId: TIntegerField;
    QryVendaclienteId: TIntegerField;
    QryVendanome: TWideStringField;
    QryVendadataVenda: TDateTimeField;
    QryVendatotalVenda: TFloatField;
    QryVendasItensvendaId: TIntegerField;
    QryVendasItensprodutoId: TIntegerField;
    QryVendasItensnome: TWideStringField;
    QryVendasItensquantidade: TFloatField;
    QryVendasItensvalorUnitario: TFloatField;
    QryVendasItenstotalProduto: TFloatField;
    RLLabel17: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVenda: TfrmRelVenda;

implementation

{$R *.dfm}

procedure TfrmRelVenda.FormDestroy(Sender: TObject);
begin
QryVenda.Close;
QryVendasItens.Close;
end;

end.
