unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, scGPControls, scControls,
  Vcl.StdCtrls, Vcl.Mask, scGPExtControls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Threading;

type
  TRecData = record
    AccountNumber: String;
    Name: String;
    Area: String;
    Address: String;
    procedure Clear;
  end;

  TForm2 = class(TForm)
    FlowPanel1: TFlowPanel;
    Image1: TImage;
    scGPPanel1: TscGPPanel;
    Panel1: TPanel;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    scGPButton1: TscGPButton;
    Panel2: TPanel;
    Panel3: TPanel;
    scGPLabel3: TscGPLabel;
    FDConnection1: TFDConnection;
    qryDataRecord: TFDQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure scGPPanel6Click(Sender: TObject);
  private
    { Private declarations }
    FRecordData: TRecData;
    FInputBuffer: string;
    procedure HandleAccountInput(const AccNum: string);
    procedure AddAccountPanel(const AccNum, AccName: string);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AddAccountPanel(const AccNum, AccName: string);
var
  NewPanel: TscGPPanel;
  NewInner: TPanel;
  NewAccountNumber, NewName: TscGPLabel;
  NewButton: TscGPButton;
begin
  // Create the main outer styled panel
  NewPanel := TscGPPanel.Create(Self);
  NewPanel.Parent := FlowPanel1;
  NewPanel.Width := scGPPanel1.Width;
  NewPanel.Height := scGPPanel1.Height;
  NewPanel.Color := scGPPanel1.Color;
  NewPanel.FillColor := scGPPanel1.FillColor;
  NewPanel.FillColor2 := scGPPanel1.FillColor2;
  NewPanel.CaptionGlowEffect := scGPPanel1.CaptionGlowEffect;
  NewPanel.FrameColor := scGPPanel1.FrameColor;
  NewPanel.FrameColorAlpha := scGPPanel1.FrameColorAlpha;
  NewPanel.FrameRadius := scGPPanel1.FrameRadius;
  NewPanel.FrameSides := scGPPanel1.FrameSides;
  NewPanel.FrameWidth := scGPPanel1.FrameWidth;
  NewPanel.BackgroundStyle := scGPPanel1.BackgroundStyle;
  NewPanel.BlurBackground := scGPPanel1.BlurBackground;
  NewPanel.Color := scGPPanel1.Color;
  NewPanel.ContentMarginLeft := scGPPanel1.ContentMarginLeft;
  NewPanel.ContentMarginRight := scGPPanel1.ContentMarginRight;
  NewPanel.ContentMarginTop := scGPPanel1.ContentMarginTop;
  NewPanel.ContentMarginBottom := scGPPanel1.ContentMarginBottom;

  NewPanel.FillColorAlpha := scGPPanel1.FillColorAlpha;
  NewPanel.FillGradientAngle := scGPPanel1.FillGradientAngle;
  NewPanel.FillGradientBeginAlpha := scGPPanel1.FillGradientBeginAlpha;
  NewPanel.FillGradientBeginColorOffset := scGPPanel1.FillGradientBeginColorOffset;
  NewPanel.FillGradientEndAlpha := scGPPanel1.FillGradientEndAlpha;
  NewPanel.FillGradientEndColorOffset := scGPPanel1.FillGradientEndColorOffset;

  NewPanel.Padding.Assign(scGPPanel1.Padding);
  NewPanel.Margins.Assign(scGPPanel1.Margins);
  NewPanel.AlignWithMargins := scGPPanel1.AlignWithMargins;
  NewPanel.ShowCaption := False;


  NewInner := TPanel.Create(Self);
  NewInner.Parent := NewPanel;
  NewInner.Align := Panel1.Align;
  NewInner.AlignWithMargins := Panel1.AlignWithMargins;
  NewInner.Margins.Assign(Panel1.Margins);
  NewInner.Padding.Assign(Panel1.Padding);
  NewInner.Font.Assign(Panel1.Font);
  NewInner.BevelOuter := Panel1.BevelOuter;

  // Account Number Label
  NewAccountNumber := TscGPLabel.Create(Self);
  NewAccountNumber.Parent := NewInner;
  NewAccountNumber.Caption := AccNum;
  NewAccountNumber.Alignment := scGPLabel1.Alignment;
  NewAccountNumber.AutoSize := scGPLabel1.AutoSize;
  NewAccountNumber.ContentMarginBottom := scGPLabel1.ContentMarginBottom;
  NewAccountNumber.ContentMarginLeft := scGPLabel1.ContentMarginLeft;
  NewAccountNumber.ContentMarginRight := scGPLabel1.ContentMarginRight;
  NewAccountNumber.ContentMarginTop := scGPLabel1.ContentMarginTop;
  NewAccountNumber.FrameColor := scGPLabel1.FrameColor;
  NewAccountNumber.GlowEffect := scGPLabel1.GlowEffect;
  NewAccountNumber.VertAlignment := scGPLabel1.VertAlignment;
  NewAccountNumber.Align := scGPLabel1.Align;
  NewAccountNumber.Font.Assign(scGPLabel1.Font);
  NewAccountNumber.Margins.Assign(scGPLabel1.Margins);


  // Name Label
  NewName := TscGPLabel.Create(Self);
  NewName.Parent := NewInner;
  NewName.Caption := AccName;
  NewName.Alignment := scGPLabel2.Alignment;
  NewName.AutoSize := scGPLabel2.AutoSize;
  NewName.ContentMarginBottom := scGPLabel2.ContentMarginBottom;
  NewName.ContentMarginLeft := scGPLabel2.ContentMarginLeft;
  NewName.ContentMarginRight := scGPLabel2.ContentMarginRight;
  NewName.ContentMarginTop := scGPLabel2.ContentMarginTop;
  NewName.FrameColor := scGPLabel2.FrameColor;
  NewName.GlowEffect := scGPLabel2.GlowEffect;
  NewName.VertAlignment := scGPLabel2.VertAlignment;
  NewName.Align := scGPLabel2.Align;
  NewName.Font.Assign(scGPLabel2.Font);
  NewName.Margins.Assign(scGPLabel2.Margins);


  // Close Button
  NewButton := TscGPButton.Create(Self);
  NewButton.Parent := NewInner;
  NewButton.Caption := scGPButton1.Caption;
  NewButton.Align := scGPButton1.Align;
  NewButton.Width := scGPButton1.Width;
  NewButton.Height := scGPButton1.Height;
  NewButton.Font.Assign(scGPButton1.Font);
  NewButton.Margins.Assign(scGPButton1.Margins);
//  NewButton.OnClick := procedure(Sender: TObject)
//  begin
//    NewPanel.Free;
//  end;
end;




procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;

  if Key = #13 then
  begin
    HandleAccountInput(FInputBuffer);
    FInputBuffer := '';
  end
  else
    FInputBuffer := FInputBuffer + Key;
end;

procedure TForm2.HandleAccountInput(const AccNum: string);
begin
  TTask.Run(procedure
  var
    LRecordData: TRecData;
  begin
    qryDataRecord.Close;
    qryDataRecord.ParamByName('AAccountNumber').AsString := AccNum;
    qryDataRecord.Open;
    qryDataRecord.First;

    if not qryDataRecord.IsEmpty then
    begin
      LRecordData.AccountNumber := qryDataRecord.FieldByName('AccountNumber').AsString;
      LRecordData.Name := qryDataRecord.FieldByName('Name').AsString;
      LRecordData.Area := qryDataRecord.FieldByName('Area').AsString;
      LRecordData.Address := qryDataRecord.FieldByName('Address').AsString;
    end
    else
      LRecordData.Clear;

    TThread.Synchronize(nil, procedure
    begin
      // Show in a label or dynamic panel
//      scGPLabel2.Caption := LRecordData.Name;
      AddAccountPanel(LRecordData.AccountNumber, LRecordData.Name);
    end);
  end);
end;

procedure TForm2.scGPPanel6Click(Sender: TObject);
begin

end;

{ TRecData }

procedure TRecData.Clear;
begin
  AccountNumber := 'Account not found';
  Name := 'Account not found';
  Area := 'Account not found';
  Address := 'Account not found';
end;

end.
