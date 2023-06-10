unit Fortes.Services.Kernel.FindService;

interface

uses
  Fortes.Services.Kernel.IFindService, Fortes.Services.Kernel.IFormService,
  Fortes.Services.Kernel.FormService, Fortes.View.Base.BaseFind;

type
 TFindService<TFind: TBaseFindForm> = class(TInterfacedObject, IFindService)
  private
    FFormService: IFormService<TFind>;
  public
    constructor Create;
    function AddAfterFindListener(const AListener: TAfterFindEvent): IFindService;
    function ShowModal: Boolean;
    class function New: IFindService;
 end;

implementation

{ TFindService<TFind> }

function TFindService<TFind>.AddAfterFindListener(
  const AListener: TAfterFindEvent): IFindService;
begin
  FFormService.GetForm.AddAfterFindListener(AListener);
  Result := Self;
end;

constructor TFindService<TFind>.Create;
begin
  FFormService := TFormService<TFind>.New;
end;

class function TFindService<TFind>.New: IFindService;
begin
  Result := Self.Create;
end;

function TFindService<TFind>.ShowModal: Boolean;
begin
  Result := FFormService.ShowModal;
end;

end.

