unit RaffleTemplate2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, scControls, scGPControls,
  Vcl.StdCtrls, dxGDIPlusClasses;

type
  TURaffleTemplate = class(TForm)
    scGPArea1: TscGPPanel;
    scGPButton1: TscGPButton;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    lblName: TLabel;
    lblAccountNumber: TLabel;
    Panel2: TPanel;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    Image3: TImage;
    Label5: TLabel;
    lblAddress: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  URaffleTemplate: TURaffleTemplate;

implementation

{$R *.dfm}

end.
