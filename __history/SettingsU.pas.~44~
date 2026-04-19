unit SettingsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, scControls, scGPControls,
  Vcl.ExtCtrls, CPort,Registry;

type
  TUSettings = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel1: TPanel;
    scGPButton1: TscGPButton;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Edit3: TEdit;
    Panel7: TPanel;
    GroupBox5: TGroupBox;
    Panel8: TPanel;
    Label6: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Panel9: TPanel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    CheckBox4: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    function IntToBool(const AnInt: Integer): Boolean;
    function BoolToInt(const AnBool: Boolean): Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  USettings: TUSettings;

implementation

{$R *.dfm}
Uses MainModuleU,MainU;

function TUSettings.BoolToInt(const AnBool: Boolean): Integer;
begin
   if AnBool = False then Result := 0
                else Result := 1;
end;

function TUSettings.IntToBool(const AnInt: Integer): Boolean;
begin
   if AnInt = 0 then Result := False
                else Result := True;
end;

procedure TUSettings.FormCreate(Sender: TObject);
var
  PortNames: TStringList;
  i: Integer;
  PortCount: Integer;
  PortName: string;
begin
  With UMainModule do begin
    qrySettings.Close;
    qrySettings.Open;
    qrySettings.First;
    if qrySettingsTheme.AsString.Contains('1') then begin
      RadioButton1.Checked := True;
    end else if qrySettingsTheme.AsString.Contains('2') then begin
      RadioButton2.Checked := True;
    end;

    Edit1.Text := IntToStr(qrySettingsSecMin.AsInteger);
    Edit2.Text := IntToStr(qrySettingsSecMax.AsInteger);
    Edit3.Text := IntToStr(qrySettingsCloseConfettiTimer.AsInteger);


    CheckBox1.Checked := IntToBool(qrySettingsIsVenueRegistration.AsInteger);
    CheckBox2.Checked := IntToBool(qrySettingsIsOnlineRegistration.AsInteger);
    CheckBox3.Checked := IntToBool(qrySettingsIsPreRegistration.AsInteger);
    Combobox1.ItemIndex :=  ComboBox1.Items.IndexOf(qrySettingsCOMPort.AsString);

  end;


end;


procedure TUSettings.scGPButton1Click(Sender: TObject);
begin
  With UMainModule do begin
    qrySettings.Edit;
    if RadioButton1.Checked then begin
      qrySettingsTheme.AsString := 'RadioButton1';
    end else if RadioButton2.Checked then begin
      qrySettingsTheme.AsString := 'RadioButton2';
    end;

    qrySettingsSecMin.AsInteger := StrToInt(Edit1.Text);
    qrySettingsSecMax.AsInteger := StrToInt(Edit2.Text);
    qrySettingsCloseConfettiTimer.AsInteger := StrToInt(Edit3.Text);

    qrySettingsIsVenueRegistration.AsInteger := BoolToInt(CheckBox1.Checked);
    qrySettingsIsOnlineRegistration.AsInteger := BoolToInt(CheckBox2.Checked);
    qrySettingsIsPreRegistration.AsInteger := BoolToInt(CheckBox3.Checked);
    qrySettingsCOMPort.AsString := ComboBox1.Text;

    MessageDlg('Settings is Upto date!',mtInformation,[mbOk],0);
    qrySettings.Post;
    CallSettings;
    UMainForm.SpeedButton6Click(Sender);
    Self.Close;

  end;


end;

end.
