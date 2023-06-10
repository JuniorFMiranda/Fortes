unit Fortes.Services.Kernel.CrudService;

interface

uses
  Vcl.Controls, Data.Db, Vcl.Forms,  System.Generics.Collections,
  Fortes.Services.Kernel.IFormService, Fortes.Services.Kernel.FormService,
  Fortes.Services.Kernel.ICrudService;

type
  TCrudService<TCrud: TBaseCrudForm> = class(TInterfacedObject, ICrudService)
  private
    FFormService: IFormService<TCrud>;
  public
    constructor Create;
    function GetDataSet: TDataSet;
    function GetTableName: string;
    function InsertRecord(ARecordValues: TDictionary<string, Variant>): Boolean; overload;
    function ShowModal: Boolean;
    class function New: ICrudService;

  end;

implementation

{ TCrudService<TCrud> }

constructor TCrudService<TCrud>.Create;
begin
  FFormService := TFormService<TCrud>.New;
end;

function TCrudService<TCrud>.GetDataSet: TDataSet;
begin
  Result := FFormService.GetForm.GetDataSet;
end;

function TCrudService<TCrud>.GetForm: TCrud;
begin
  Result := FFormService.GetForm;
end;

function TCrudService<TCrud>.GetTableName: string;
begin
  Result := FFormService.GetForm.GetTableName;
end;

function TCrudService<TCrud>.InsertRecord(
  ARecordValues: TDictionary<string, Variant>): Boolean;
begin
  Result := FFormService.GetForm.InsertRecord(ARecordValues);
end;

class function TCrudService<TCrud>.New: ICrudService;
begin
  Result := Self.Create;
end;

function TCrudService<TCrud>.ShowModal: Boolean;
begin
  Result := FFormService.ShowModal;
end;

end.
