unit Fortes.Services.Kernel.IFormService;

interface

uses
  Vcl.Controls, Vcl.Forms;

type
  IFormService<T: TForm> = interface
    ['{CD37B661-79C6-46C5-937F-CCAFBB3F70C1}']
    function GetForm: T;
    function ShowModal: Boolean;
  end;

implementation

end.
