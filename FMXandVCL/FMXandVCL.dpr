program FMXandVCL;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMXLauncherForm in 'FMXLauncherForm.pas' {Form1},
  VCLForm in '..\VCL\VCLForm.pas' {frmVCL},
  FMXForm in 'FMXForm.pas' {frmFMX},
  VCLHostForm in '..\VCL\VCLHostForm.pas' {frmVCLHostForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmVCLHostForm, frmVCLHostForm);
  Application.Run;
end.
