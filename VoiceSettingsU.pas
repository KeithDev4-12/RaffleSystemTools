unit VoiceSettingsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TUVoiceSettings = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    SpeedButton2: TSpeedButton;
    Shape2: TShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UVoiceSettings: TUVoiceSettings;

implementation

{$R *.dfm}

end.
