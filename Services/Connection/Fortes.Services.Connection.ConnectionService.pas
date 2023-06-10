unit Fortes.Services.Connection.ConnectionService;

interface

uses
  System.Classes,
  System.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  Fortes.Services.Connection.IConnectionService;

type
 TConnectionService = class(TInterfacedObject, IConnectionService)
 private
   FLocalConnection: TFDConnection;

   function GetDatabase: string;
 protected
   procedure MakeLocal;
   procedure UndoLocal;

   function GetConnection: TFDConnection;
   function NextSequenceValue(const ASequenceName: string): Variant;
 public
   constructor Create;
   destructor Destroy; override;
   class function New: IConnectionService;

 end;

implementation

{ ConnectionService }

constructor TConnectionService.Create;
begin
  MakeLocal;
end;

destructor TConnectionService.Destroy;
begin
  UndoLocal;
  inherited;
end;

function TConnectionService.GetConnection: TFDConnection;
begin
  Result :=  FLocalConnection;
end;

function TConnectionService.GetDatabase: string;
begin
  Result := IncludeTrailingPathDelimiter(ExtractFileDrive(ParamStr(0))) +
    'Fortes\Db\banco.fdb';
end;

procedure TConnectionService.MakeLocal;
begin
  FLocalConnection := TFDConnection.Create(Nil);
  FLocalConnection.DriverName := 'FB';
  FLocalConnection.Params.Add('Database=' + GetDatabase);
  FLocalConnection.Params.Add('User_Name=SYSDBA');
  FLocalConnection.Params.Add('Password=masterkey');
  FLocalConnection.Params.Add('Server=localhost');
  FLocalConnection.Params.Add('Port=3050');
  //FLocalConnection.Open;
end;

class function TConnectionService.New: IConnectionService;
begin
  Result := Self.Create;
end;

function TConnectionService.NextSequenceValue(
  const ASequenceName: string): Variant;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(Nil);
  try
    Query.Connection := GetConnection;
    Query.SQL.Text := Format('SELECT GEN_ID(%s, 1) FROM RDB$DATABASE', [ASequenceName]);
    Query.Open;
    Result := Query.Fields[0].Value;
  finally
    Query.Free;
  end;
end;

procedure TConnectionService.UndoLocal;
begin
  FLocalConnection.Free;
end;

end.
