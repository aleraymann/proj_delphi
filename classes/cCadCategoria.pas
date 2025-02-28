unit cCadCategoria;

interface

uses  System.Classes,
      Vcl.Controls,
      Vcl.ExtCtrls,
      Vcl.Dialogs,
      System.SysUtils,
      ZAbstractConnection,
      ZConnection,
      ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TCategoria = class //declaracao de classe
  private
      //variaveis privadas pra essa classe
    ConexaoDB:TZConnection;
    F_categoriaID:Integer;
    F_descricao:String;
    function getCodigo: Integer;
    function getDescricao: String;
    procedure setCodigo(const Value: Integer);
    procedure setDescricao(const Value: String);

  public
     //variaveis publicas
      constructor Create(aConexao:TZConnection); //construtor da classe
      destructor Destroy; override; //destroi a classe, sobrescrever
      function Inserir:Boolean;
      function Atualizar:Boolean;
      function Apagar:Boolean;
      function Selecionar(id:Integer):Boolean;


  published
      //variaveis publicas para propriedades da classe
      //fornecer informacoes em runtime
      property codigo:Integer read  getCodigo write setCodigo;
      property descricao:String read  getDescricao write setDescricao;

  end;
implementation


{ TCategoria }

{$region 'contructor e desctructor'}
constructor TCategoria.Create(aConexao:TZConnection);
begin
      ConexaoDB:=aConexao;
end;

destructor TCategoria.Destroy;
begin

  inherited;
end;


{$endregion}

{$region 'cruds'}
function TCategoria.Apagar: Boolean;
var Qry:TZQuery;
begin
if MessageDlg('Apagar o Registro: '+#13+#13+
                'C�digo: '+IntToStr(F_categoriaId)+#13+
                'Descri��o: '+F_descricao,mtConfirmation,[mbYes, mbNo],0)=mrNo then begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM categorias '+
                ' WHERE categoriaID=:categoriaID ');
    Qry.ParamByName('categoriaID').AsInteger :=F_categoriaID;
    Try
     ConexaoDB.StartTransaction;
     Qry.ExecSQL;
     ConexaoDB.Commit;
    Except
    ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TCategoria.Atualizar: Boolean;
    var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE categorias '+
                ' SET descricao=:descricao '+
                ' WHERE categoriaID=:categoriaID ');
    Qry.ParamByName('categoriaID').AsInteger:= Self.F_categoriaID;
    Qry.ParamByName('descricao').AsString:= Self.F_descricao;
    Try
     ConexaoDB.StartTransaction;
     Qry.ExecSQL;
     ConexaoDB.Commit;
    Except
    ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;



function TCategoria.Inserir: Boolean;
   var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;

    Qry.SQL.Add('INSERT INTO categorias (descricao) values (:descricao)');
    Qry.ParamByName('descricao').AsString:=Self.F_descricao;
    Try
     ConexaoDB.StartTransaction;
     Qry.ExecSQL;
     ConexaoDB.Commit;
    Except
    ConexaoDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TCategoria.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT categoriaID, '+
                '       descricao '+
                '  FROM categorias '+
                ' WHERE categoriaID=:categoriaID ');
    Qry.ParamByName('categoriaID').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_categoriaID := Qry.FieldByName('categoriaID').AsInteger;
      Self.F_descricao   := Qry.FieldByName('descricao').AsString;
    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;
 {$endregion}

{$region 'gets e sets'}
function TCategoria.getCodigo: Integer;
begin
    Result := Self.F_categoriaID;
end;

function TCategoria.getDescricao: String;
begin
  Result := Self.F_descricao;
end;


procedure TCategoria.setCodigo(const Value: Integer);
begin
     Self.F_categoriaID := Value;
end;

procedure TCategoria.setDescricao(const Value: String);
begin
     Self.F_descricao := Value;
end;
   {$endregion}
end.
