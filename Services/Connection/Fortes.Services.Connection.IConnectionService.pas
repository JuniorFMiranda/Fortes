unit Fortes.Services.Connection.IConnectionService;

interface

uses
  Firedac.Comp.Client,
  Firedac.Stan.Def;
type
 IConnectionService = interface
    function GetConnection: TFDConnection;
    function NextSequenceValue(const ASequenceName: string): Variant;
 end;

implementation

end.
