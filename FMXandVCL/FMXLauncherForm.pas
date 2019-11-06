unit FMXLauncherForm;

interface

uses
  {$WARNINGS OFF}
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;
  {$WARNINGS ON}

type
  TForm1 = class(TForm)
    btnFMX: TButton;
    btnVCL: TButton;
    btnHostVCLforFMX: TButton;
    procedure btnVCLClick(Sender: TObject);
    procedure btnFMXClick(Sender: TObject);
    procedure btnHostVCLforFMXClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses VCLForm, FMXForm, VCLHostForm;

procedure TForm1.btnFMXClick(Sender: TObject);
begin
    var frmFMX: TfrmFMX;
    frmFMX := TfrmFMX.Create(nil);
    try
        frmFMX.ShowModal;
    finally
        FreeAndNil(frmFMX);
    end;
end;

procedure TForm1.btnHostVCLforFMXClick(Sender: TObject);
begin
    var frmVCLHost: TfrmVCLHostForm;
    frmVCLHost := TfrmVCLHostForm.Create(nil);
    try
        frmVCLHost.ShowModal;
    finally
        FreeAndNil(frmVCLHost);
    end;
end;

procedure TForm1.btnVCLClick(Sender: TObject);
begin
    var frmVCL: TfrmVCL;
    frmVCL := TfrmVCL.Create(nil);
    try
        frmVCL.ShowModal;
    finally
        FreeAndNil(frmVCL);
    end;
end;

end.
