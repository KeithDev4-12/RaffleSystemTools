object UpdateDatabaseU: TUpdateDatabaseU
  Left = 0
  Top = 0
  Caption = 'Update'
  ClientHeight = 514
  ClientWidth = 271
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 30
    Height = 13
    Caption = 'Area :'
  end
  object Label2: TLabel
    Left = 8
    Top = 43
    Width = 29
    Height = 13
    Caption = 'Year :'
  end
  object Label3: TLabel
    Left = 47
    Top = 35
    Width = 216
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = '2024'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object imgApplicant: TImage
    Left = 8
    Top = 200
    Width = 105
    Height = 105
  end
  object imgSignature: TImage
    Left = 136
    Top = 200
    Width = 105
    Height = 105
  end
  object ComboBox1: TComboBox
    Left = 47
    Top = 8
    Width = 216
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = '001'
    Items.Strings = (
      '001'
      '002'
      '003'
      '004'
      '005'
      '006'
      '007'
      '008')
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 73
    Width = 255
    Height = 49
    Caption = 'Update Database'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 363
    Width = 265
    Height = 148
    Align = alBottom
    DataSource = DataSource1
    DynProps = <>
    TabOrder = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AccountNumber'
        Footers = <>
        Title.Caption = 'Acct. Number'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 152
    Width = 137
    Height = 25
    Caption = 'Try'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object VirtualTable1: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'AccountNumber'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 99
      end>
    Left = 176
    Top = 168
    Data = {
      040002000D004163636F756E744E756D62657201000C000000000004004E616D
      650100630000000000000000000000}
    object VirtualTable1AccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 12
    end
    object VirtualTable1Name: TStringField
      FieldName = 'Name'
      Size = 99
    end
  end
  object DataSource1: TDataSource
    DataSet = VirtualTable1
    Left = 112
    Top = 160
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 152
    Top = 152
  end
end