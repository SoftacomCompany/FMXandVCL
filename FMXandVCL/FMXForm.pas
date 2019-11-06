unit FMXForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCKanbanBoard, FMX.TMSFNCListBox, FMX.TMSFNCCustomScrollControl,
  FMX.TMSFNCGridData, FMX.TMSFNCCustomGrid, FMX.TMSFNCGrid,
  FMX.Controls.Presentation, FMX.Edit, FMX.TMSFNCEdit, FMX.TMSFNCCustomControl,
  FMX.TMSFNCScrollBar, FMX.StdCtrls;

type
  TfrmFMX = class(TForm)
    TMSFNCScrollBar1: TTMSFNCScrollBar;
    TMSFNCEdit1: TTMSFNCEdit;
    TMSFNCGrid1: TTMSFNCGrid;
    TMSFNCListBox1: TTMSFNCListBox;
    TMSFNCKanbanBoard1: TTMSFNCKanbanBoard;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFMX: TfrmFMX;

implementation

{$R *.fmx}

uses VCLForm;

procedure TfrmFMX.Button1Click(Sender: TObject);
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
