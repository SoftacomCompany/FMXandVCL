unit VCLHostForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmVCLHostForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLHostForm: TfrmVCLHostForm;

implementation

{$R *.dfm}

uses FMXForm;

procedure TfrmVCLHostForm.Button1Click(Sender: TObject);
begin
    var frmFMX: TfrmFMX;
    frmFMX := TfrmFMX.Create(nil);
    try
        frmFMX.ShowModal;
    finally
        FreeAndNil(frmFMX);
    end;
end;

end.
