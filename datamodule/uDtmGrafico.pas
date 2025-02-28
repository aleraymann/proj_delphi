unit uDtmGrafico;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdtmGrafico = class(TDataModule)
    QryProdutoEstoque: TZQuery;
    QryProdutoEstoqueLabel: TWideStringField;
    QryProdutoEstoqueValue: TFloatField;
    dtsProdutoEstoque: TDataSource;
    QryValorVendaPorCliente: TZQuery;
    QryValorVendaPorClienteLabel: TWideStringField;
    QryValorVendaPorClienteValue: TFloatField;
    Qry10maisVendidos: TZQuery;
    Qry10maisVendidosLabel: TWideStringField;
    Qry10maisVendidosValue: TFloatField;
    QryVendasUltimaSemana: TZQuery;
    QryVendasUltimaSemanaLabel: TDateTimeField;
    QryVendasUltimaSemanaValue: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmGrafico: TdtmGrafico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
