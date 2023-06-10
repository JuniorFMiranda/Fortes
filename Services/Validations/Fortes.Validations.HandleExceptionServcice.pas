unit Fortes.Validations.HandleExceptionServcice;

interface

uses
  System.SysUtils,
  Vcl.Dialogs;

type
  THandleExceptionServcice = class
  private

  public
    class procedure DoHandleException(Sender: TObject; E: Exception);
  end;


implementation

{ THandleExceptionServcice }

class procedure THandleExceptionServcice.DoHandleException(Sender: TObject;
  E: Exception);
begin
  Showmessage(Format('Ocorreu o seguinte erro no sistema: %s.',[E.Message]));
end;

end.
