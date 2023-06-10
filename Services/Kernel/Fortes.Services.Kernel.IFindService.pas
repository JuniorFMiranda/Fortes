unit Fortes.Services.Kernel.IFindService;

interface

uses
  System.Generics.Collections;

type

  TAfterFindEvent = procedure(Sender: TObject;
    Values: TDictionary<string, Variant>) of object;

  IFindService = interface
    ['{4D232179-9777-40FC-94B8-06279690DA7F}']
    function AddAfterFindListener(const AListener: TAfterFindEvent): IFindService;
    function ShowModal: Boolean;
  end;

implementation

end.
