unit WinnerDisplayU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  scControls, scGPControls;

type
  TWinnderDisplay = class(TForm)
    Image6: TImage;
    FlowPanel1: TFlowPanel;
    scGPPanel1: TscGPPanel;
    Panel1: TPanel;
    Shape1: TShape;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    scGPButton1: TscGPButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WinnderDisplay: TWinnderDisplay;

implementation

{$R *.dfm}

end.
