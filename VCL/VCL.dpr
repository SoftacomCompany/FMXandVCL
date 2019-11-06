program VCL;

uses
  Vcl.Forms,
  VCLForm in 'VCLForm.pas' {frmVCL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCL, frmVCL);
  Application.Run;
end.
