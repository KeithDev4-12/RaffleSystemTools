unit WinnerForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TUWinnerForm = class(TForm)
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    function DistrictToArea(ADistrict:String):String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UWinnerForm: TUWinnerForm;

implementation

uses MainModuleU,ReportU;

{$R *.dfm}

procedure TUWinnerForm.BitBtn1Click(Sender: TObject);
begin
  with UMainModule do begin
    if RadioGroup1.ItemIndex = 0 then begin
      if RadioButton1.Checked then begin
        with UReport do begin
          qryReportWinners.Close;
          qryReportWinners.ParamByName('AYear').AsString := IntToStr(CurrentYear);
          qryReportWinners.ParamByName('APrizeCategory').AsString := 'Consolation';
          qryReportWinners.Open;
          qryReportWinners.First;
          qryReportWinners.Filtered := False;
          qryReportWinners.Filter := 'AREA = ' + DistrictToArea(ComboBox1.Text);
          qryReportWinners.Filtered := True;
          qryReportWinners.First;
          QRPLabel13.Caption := 'Y.R. ' + IntToStr(CurrentYear);
          qrWinner.Preview;
        end;



      end else begin
        with UReport do begin
          qryReportWinners.Close;
          qryReportWinners.ParamByName('AYear').AsString := IntToStr(CurrentYear);
          qryReportWinners.ParamByName('APrizeCategory').AsString := 'Consolation';
          qryReportWinners.Open;
          qryReportWinners.First;

          QRPLabel13.Caption := 'Y.R. ' + IntToStr(CurrentYear);
          qrWinner.Preview;
        end;
      end;

    end else begin
      if RadioButton1.Checked then begin
        with UReport do begin
          qryReportWinners.Close;
          qryReportWinners.ParamByName('AYear').AsString := IntToStr(CurrentYear);
          qryReportWinners.ParamByName('APrizeCategory').AsString := 'Grand';
          qryReportWinners.Open;
          qryReportWinners.First;
          qryReportWinners.Filtered := False;
          qryReportWinners.Filter := 'AREA = ' + DistrictToArea(ComboBox1.Text);
          qryReportWinners.Filtered := True;
          qryReportWinners.First;
          QRPLabel13.Caption := 'Y.R. ' + IntToStr(CurrentYear);
          qrWinner.Preview;
        end;



      end else begin
        with UReport do begin
          qryReportWinners.Close;
          qryReportWinners.ParamByName('AYear').AsString := IntToStr(CurrentYear);
          qryReportWinners.ParamByName('APrizeCategory').AsString := 'Grand';
          qryReportWinners.Open;
          qryReportWinners.First;
          
          QRPLabel13.Caption := 'Y.R. ' + IntToStr(CurrentYear);
          qrWinner.Preview;
        end;
      end;
    end;
  end;
end;

function TUWinnerForm.DistrictToArea(ADistrict: String): String;
begin


  if ADistrict.Contains('BULAN') then begin
    Result := '001';
  end else if ADistrict.Contains('MATNOG') then begin
    Result := '002';
  end else if ADistrict.Contains('STA. MAGDALENA') then begin
    Result := '003';
  end else if ADistrict.Contains('IROSIN') then begin
    Result := '004';
  end else if ADistrict.Contains('BULUSAN') then begin
    Result := '005';
  end else if ADistrict.Contains('JUBAN') then begin
    Result := '006';
  end else if ADistrict.Contains('CASIGURAN') then begin
    Result := '007';
  end else if ADistrict.Contains('MAGALLANES') then begin
    Result := '008';
  end;


end;

end.