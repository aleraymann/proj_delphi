unit uDtmVenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDtmConexao, uPrincipal, Datasnap.DBClient;

type
  TdtmVendas = class(TDataModule)
    QryCliente: TZQuery;
    QryClienteclienteId: TIntegerField;
    QryClientenome: TWideStringField;
    QryProduto: TZQuery;
    QryProdutoprodutoId: TIntegerField;
    QryProdutovalor: TFloatField;
    QryProdutoquantidade: TFloatField;
    QryProdutonome: TWideStringField;
    cdsItensVenda: TClientDataSet;
    dtsCliente: TDataSource;
    dtsProduto: TDataSource;
    dtsItensVenda: TDataSource;
    cdsItensVendaprodutoId: TIntegerField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendanomeProduto: TStringField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotalProduto: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVendas: TdtmVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}

procedure TdtmVendas.DataModuleCreate(Sender: TObject);
begin
cdsItensVenda.CreateDataSet;
QryCliente.Open;
QryProduto.Open;
end;

procedure TdtmVendas.DataModuleDestroy(Sender: TObject);
begin
cdsItensVenda.close;
QryCliente.close;
QryProduto.close;
end;

end.
