object UWinnerForm: TUWinnerForm
  Left = 0
  Top = 0
  Caption = 'Winner Form'
  ClientHeight = 260
  ClientWidth = 290
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 270
    Height = 71
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    Caption = 'Winner Category'
    Color = clWhite
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Consolation Prize'
      'Grand Prize')
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 101
    Width = 270
    Height = 108
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    Caption = 'Area Category'
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Per District'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 79
      Width = 113
      Height = 17
      Caption = 'All District'
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 48
      Width = 238
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'BULAN'
      Items.Strings = (
        'BULAN'
        'MATNOG'
        'STA. MAGDALENA'
        'IROSIN'
        'BULUSAN'
        'JUBAN'
        'CASIGURAN'
        'MAGALLANES')
    end
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 222
    Width = 122
    Height = 25
    Caption = 'Show Winner'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 10
    Top = 222
    Width = 122
    Height = 25
    Caption = 'Close'
    TabOrder = 3
  end
end
