object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 153
  Width = 292
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    HostName = '.\SQLDELPHI'
    Port = 1433
    Database = 'vendas'
    User = 'sa'
    Password = '132028'
    Protocol = 'mssql'
    LibraryLocation = 'C:\Delphi\ntwdblib.dll'
    Left = 112
    Top = 56
  end
end
