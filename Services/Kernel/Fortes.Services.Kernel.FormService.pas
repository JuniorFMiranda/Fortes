unit Fortes.Services.Kernel.FormService;

interface
uses
  Vcl.Controls, Vcl.Forms, Fortes.Services.Kernel.IFormService;

type
  TFormService<T: TForm> = class(TInterfacedObject, IFormService<T>)
  private
    class var FForm: T;
    function GetForm: T;
  public
    constructor Create;
    destructor Destroy; override;
    function ShowModal: Boolean;
    class function New: IFormService<T>;
  end;

implementation

{ TFormService<T> }
constructor TFormService<T>.Create;
begin
  FForm := T.Create(Nil);
end;

destructor TFormService<T>.Destroy;
begin
  FForm.Free;
  inherited;
end;

function TFormService<T>.GetForm: T;
begin
  Result := FForm;
end;

class function TFormService<T>.New: IFormService<T>;
begin
  Result := Self.Create;
end;

function TFormService<T>.ShowModal: Boolean;
begin
  Result := FForm.ShowModal = mrOk;
end;

end.
