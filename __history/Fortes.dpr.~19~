program Fortes;

uses
  Vcl.Forms,
  Fortes.View.Main in 'View\Fortes.View.Main.pas' {MainForm},
  Fortes.Services.Connection.IConnectionService in 'Services\Connection\Fortes.Services.Connection.IConnectionService.pas',
  Fortes.Services.Connection.ConnectionService in 'Services\Connection\Fortes.Services.Connection.ConnectionService.pas',
  Fortes.Validations.HandleExceptionServcice in 'Services\Validations\Fortes.Validations.HandleExceptionServcice.pas',
  Fortes.View.Base.BaseFind in 'View\Base\Fortes.View.Base.BaseFind.pas' {BaseFindForm},
  Fortes.View.PesquisaCombustivel in 'View\Fortes.View.PesquisaCombustivel.pas' {FindPesquisarCombustivelForm},
  Fortes.Kernel.Messages in 'Kernel\Fortes.Kernel.Messages.pas',
  Fortes.Services.Kernel.IFindService in 'Services\Kernel\Fortes.Services.Kernel.IFindService.pas',
  Fortes.Services.Kernel.FindService in 'Services\Kernel\Fortes.Services.Kernel.FindService.pas',
  Fortes.Services.Kernel.IFormService in 'Services\Kernel\Fortes.Services.Kernel.IFormService.pas',
  Fortes.Services.Kernel.FormService in 'Services\Kernel\Fortes.Services.Kernel.FormService.pas',
  Fortes.View.Base.BaseCrud in 'View\Base\Fortes.View.Base.BaseCrud.pas' {BaseCrudForm},
  Fortes.View.Abastecimento in 'View\Fortes.View.Abastecimento.pas' {AbastecimentoForm},
  Fortes.Kernel.Databaseconst in 'Kernel\Fortes.Kernel.Databaseconst.pas',
  Fortes.Services.Kernel.ICrudService in 'Services\Kernel\Fortes.Services.Kernel.ICrudService.pas',
  Fortes.Services.Kernel.CrudService in 'Services\Kernel\Fortes.Services.Kernel.CrudService.pas' {$R *.res},
  Fortes.View.AbastecimentoItem in 'View\Fortes.View.AbastecimentoItem.pas' {AbastecimentoItemForm},
  Fortes.Abastecimento.Utils in 'Utils\Fortes.Abastecimento.Utils.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.OnException := THandleExceptionServcice.DoHandleException;                                                  ;
  Application.Run;
end.
