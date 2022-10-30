program pseudo_amazon;

uses
  Vcl.Forms,
  form in 'form.pas' {main},
  dmSD_u in 'dmSD_u.pas' {dmSD: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TdmSD, dmSD);
  Application.Run;
end.
