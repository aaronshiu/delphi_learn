program pseudo_amazon;

uses
  Vcl.Forms,
  form_unit in 'form_unit.pas' {formOne},
  data_module_unit in 'data_module_unit.pas' {data_module: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformOne, formOne);
  Application.CreateForm(Tdata_module, data_module);
  Application.Run;
end.
