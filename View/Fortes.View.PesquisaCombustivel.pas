unit Fortes.View.PesquisaCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fortes.View.Base.BaseFind, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TFindPesquisarCombustivelForm = class(TBaseFindForm)
    qryFindID_COMBUSTIVEL: TIntegerField;
    qryFindDESCRICAO: TWideStringField;
    qryFindVALOR: TBCDField;
    qryFindPERCENTUAL_ICMS: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindPesquisarCombustivelForm: TFindPesquisarCombustivelForm;

implementation

{$R *.dfm}

end.
