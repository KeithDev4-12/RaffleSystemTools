object UMemberConsumer: TUMemberConsumer
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Search Member Consumer'
  ClientHeight = 488
  ClientWidth = 1438
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 97
  TextHeight = 13
  object Panel1: TPanel
    Left = 545
    Top = 0
    Width = 893
    Height = 488
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 61
      Width = 891
      Height = 402
      Align = alClient
      Caption = 'List of Available Member Consumers  for Selected Municipalities'
      TabOrder = 0
      DesignSize = (
        891
        402)
      object DBGridEh2: TDBGridEh
        Left = 7
        Top = 21
        Width = 878
        Height = 374
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DSDataEntries
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccountNumber'
            Footers = <>
            Width = 98
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Width = 245
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Area'
            Footers = <>
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Address'
            Footers = <>
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 463
      Width = 891
      Height = 24
      Align = alBottom
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 124
        Height = 20
        Align = alLeft
        Caption = 'Number of Entries :'
        ExplicitHeight = 16
      end
      object lblNoOfEntry: TLabel
        Left = 124
        Top = 0
        Width = 100
        Height = 20
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '1,000'
        ExplicitLeft = 126
      end
      object Label9: TLabel
        Left = 763
        Top = 0
        Width = 124
        Height = 20
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        Caption = '1,000'
        ExplicitLeft = 336
        ExplicitTop = -3
      end
      object Label10: TLabel
        Left = 593
        Top = 0
        Width = 170
        Height = 20
        Align = alRight
        AutoSize = False
        Caption = 'Data Need To Be Posted:'
        ExplicitLeft = 289
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 891
      Height = 60
      Align = alTop
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        887
        56)
      object GroupBox2: TGroupBox
        Left = 3
        Top = 2
        Width = 877
        Height = 50
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Color Legend'
        TabOrder = 0
        object Label4: TLabel
          Left = 31
          Top = 17
          Width = 39
          Height = 26
          Caption = 'Normal '#13'Records'
        end
        object Label5: TLabel
          Left = 106
          Top = 17
          Width = 67
          Height = 26
          Caption = 'Disconnected '#13'Accounts'
        end
        object Label6: TLabel
          Left = 208
          Top = 17
          Width = 65
          Height = 26
          Caption = 'Disco-Vacant '#13'Accounts'
        end
        object SpeedButton1: TSpeedButton
          Left = 768
          Top = 15
          Width = 107
          Height = 33
          Align = alRight
          Caption = 'Post Entry'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF848484FF848484FF0000000000000000848484FF848484FF848484FF8484
            84FF0000000000000000848484FF848484FF848484FF00000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000008484
            84FF848484FF848484FF0000000000000000848484FF848484FF848484FF8484
            84FF0000000000000000848484FF848484FF848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Shape2: TShape
          Left = 767
          Top = 15
          Width = 1
          Height = 33
          Align = alRight
          Pen.Color = clMedGray
          ExplicitLeft = 601
          ExplicitTop = 10
          ExplicitHeight = 35
        end
        object SpeedButton3: TSpeedButton
          Left = 624
          Top = 15
          Width = 143
          Height = 33
          Align = alRight
          Caption = 'Export As CSV File'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF848484FF848484FF0000000000000000848484FF848484FF848484FF8484
            84FF0000000000000000848484FF848484FF848484FF00000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000008484
            84FF0000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF0000000000000000848484FF00000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
            00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF00000000000000000000000000000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000008484
            84FF848484FF848484FF0000000000000000848484FF848484FF848484FF8484
            84FF0000000000000000848484FF848484FF848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentFont = False
          OnClick = SpeedButton3Click
          ExplicitLeft = 656
        end
        object Shape1: TShape
          Left = 623
          Top = 15
          Width = 1
          Height = 33
          Align = alRight
          Pen.Color = clMedGray
          ExplicitLeft = 462
          ExplicitTop = 3
        end
        object Label12: TLabel
          Left = 482
          Top = 17
          Width = 56
          Height = 26
          Caption = 'Need to be '#13'Posted!'
        end
        object Shape3: TShape
          Left = 449
          Top = 15
          Width = 1
          Height = 33
          Pen.Color = clMedGray
        end
        object Label13: TLabel
          Left = 309
          Top = 17
          Width = 41
          Height = 26
          Caption = 'Special '#13'Remarks'
        end
        object Label14: TLabel
          Left = 382
          Top = 23
          Width = 62
          Height = 13
          Caption = 'No Signature'
        end
        object Panel6: TPanel
          Left = 8
          Top = 20
          Width = 20
          Height = 20
          BevelKind = bkTile
          BevelOuter = bvNone
          Color = clBtnHighlight
          ParentBackground = False
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 82
          Top = 20
          Width = 20
          Height = 20
          BevelOuter = bvNone
          Color = clMedGray
          ParentBackground = False
          TabOrder = 1
        end
        object Panel8: TPanel
          Left = 184
          Top = 20
          Width = 20
          Height = 20
          BevelOuter = bvNone
          Color = clHighlight
          ParentBackground = False
          TabOrder = 2
        end
        object Panel11: TPanel
          Left = 457
          Top = 20
          Width = 20
          Height = 20
          BevelOuter = bvNone
          Color = clGray
          ParentBackground = False
          TabOrder = 3
        end
        object Panel12: TPanel
          Left = 283
          Top = 20
          Width = 20
          Height = 20
          BevelOuter = bvNone
          Color = clYellow
          ParentBackground = False
          TabOrder = 4
        end
        object Panel13: TPanel
          Left = 358
          Top = 20
          Width = 20
          Height = 20
          BevelOuter = bvNone
          Color = clRed
          ParentBackground = False
          TabOrder = 5
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 488
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      545
      488)
    object Label1: TLabel
      Left = 9
      Top = 41
      Width = 141
      Height = 26
      Caption = 'Search Account Number :'#13'Account Name                   :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 14
      Width = 184
      Height = 13
      Caption = 'Search By Municipalities :             :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 9
      Top = 77
      Width = 85
      Height = 13
      Caption = 'Search Option :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGridEh1: TDBGridEh
      Left = 8
      Top = 96
      Width = 528
      Height = 360
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSMemberConsumer
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SearchPanel.FilterOnTyping = True
      SearchPanel.WholeWords = True
      TabOrder = 0
      OnDblClick = DBGridEh1DblClick
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccountNumber'
          Footers = <>
          Width = 98
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Name'
          Footers = <>
          Width = 245
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Area'
          Footers = <>
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Address'
          Footers = <>
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Status'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object SearchBox1: TSearchBox
      Left = 156
      Top = 41
      Width = 381
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Search Here'
      OnChange = SearchBox1Change
      OnDblClick = SearchBox1DblClick
    end
    object Panel3: TPanel
      Left = 156
      Top = 5
      Width = 381
      Height = 33
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        381
        33)
      object ComboBox1: TComboBox
        Left = -1
        Top = -1
        Width = 341
        Height = 32
        Anchors = [akLeft, akTop, akRight]
        DropDownCount = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = '<ALL MUNICIPALITIES>'
        OnChange = ComboBox1Change
        Items.Strings = (
          '<ALL MUNICIPALITIES>'
          'BULAN'
          'MATNOG'
          'STA. MAGDALENA'
          'IROSIN'
          'BULUSAN'
          'JUBAN'
          'CASIGURAN'
          'MAGALLANES')
      end
      object Panel10: TPanel
        Left = 339
        Top = 0
        Width = 42
        Height = 33
        Align = alRight
        BevelOuter = bvNone
        Color = clBtnHighlight
        ParentBackground = False
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 0
          Top = 0
          Width = 42
          Height = 33
          Align = alClient
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000000000000000000000000000000000007E5446B9B074
            62FFAF7461FFAF7460FFAF7460FFAE735FFFAE725FFFAD715EFFAD715EFFAC70
            5CFFAC705CFFAC6F5BFFAC6F5BFFAB6F5BFFAB6E5AFF7B5041BAB67E6CFFFBF6
            F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF4F1FFFAF4F1FFF9F4
            F0FFF9F4F0FFF9F3F0FFF8F3EFFFF9F3EFFFF8F2EEFFB37968FFB77F6FFFFBF7
            F4FF2CB8FFFF38BBFEFF38BBFEFF47C0FDFF5AC5FBFF6FCCFAFF86D2F8FF9DD9
            F6FFB4DFF4FFC9E5F3FFDDEBF1FFECEFF0FFF9F4F0FFB47B6AFFB88171FFFBF8
            F5FF2EB9FFFF39BCFEFF39BCFEFF48C1FDFF5BC6FBFF71CCFAFF86D2F8FF9ED9
            F6FFB4DFF4FFCAE6F3FFDDEBF1FFECF0F0FFFAF4F2FFB47C6BFFB98472FFFCF9
            F7FFF8F0ECFFF8F1ECFFF8F1ECFFF7F0ECFFF7F0EBFFF8F0EBFFF7F0EBFFF7F0
            EAFFF7EFEAFFF7EFE9FFF7EFE9FFF6EFEAFFFAF6F3FFB67F6DFFBB8674FFBB85
            73FFBA8473FFBA8473FFBA8473FFB98472FFB98472FFB98472FFB98472FFB983
            72FFB98371FFB98371FFB98371FFB88371FFB98271FFB7806FFFBB8674FFFDFA
            F8FFF8F1EDFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EDFFF7F1EDFFF8F0ECFFF8F0
            ECFFF8F0EBFFF7F0EBFFF7EFEAFFF7F0EAFFFAF7F5FFB7806FFFBB8674FFFDFA
            F8FF34BCFFFF43C1FEFF43C1FEFF5BC7FCFF77CFF9FF95D8F7FFB4E0F5FFD0E8
            F2FFE8EEF0FFF8F0ECFFF7F0ECFFF7F0EAFFFAF7F5FFB7806FFFBF8C7AFFFEFC
            FBFF35BDFFFF45C1FEFF45C1FEFF5DC8FCFF78D0F9FF96D8F7FFB4E0F5FFD0E8
            F2FFE8EEF0FFF8F3EFFFF8F3EEFFF9F2EEFFFCFAF9FFBB8675FFC08D7DFFFEFD
            FCFFFAF5F2FFFAF6F3FFFAF6F3FFFAF6F2FFFAF5F2FFFAF5F1FFF9F4F1FFF9F4
            F0FFF9F3F0FFF8F3EFFFF8F3EFFFF9F3F0FFFDFBFAFFBC8877FFC28F7EFFBE8B
            7AFFBE8A79FFBE8B79FFBE8B79FFBD8A78FFBD8A78FFBE8978FFBE8978FFBC89
            78FFBC8977FFBD8977FFBD8977FFBC8877FFBC8876FFBE8A79FFC39281FFFEFE
            FDFFFBF7F4FFFBF7F4FFFBF7F4FFFAF7F5FFFBF7F4FFFAF6F4FFFAF6F4FFFAF6
            F3FFFAF6F2FFF9F5F2FFF9F5F2FFF9F6F2FFFDFCFCFFBF8D7BFFC49483FFFFFE
            FEFF3CC1FFFF59C9FDFF59C9FDFF82D4F9FFB1E0F5FFDBEBF1FFFBF7F5FFFAF6
            F4FFFBF6F3FFFAF6F3FFF9F6F3FFFAF6F3FFFEFDFCFFC08F7EFFC59584FFFFFE
            FEFF3DC2FFFF5AC9FDFF5AC9FDFF83D4F9FFB1E0F5FFDBEBF1FFFBF8F5FFFCF8
            F5FFFBF8F5FFFBF7F4FFFBF7F4FFFBF7F4FFFEFDFDFFC2907FFFC69786FFFFFF
            FEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
            FEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFEFDFFFEFEFDFFC39281FF9A796EC0CFA4
            94FFCFA393FFCEA393FFCEA393FFCEA393FFCEA292FFCEA292FFCDA292FFCDA1
            91FFCDA090FFCCA090FFCC9F8FFFCB9E8EFFCB9E8EFF967468C2}
          OnClick = SpeedButton2Click
          ExplicitLeft = 16
          ExplicitWidth = 26
        end
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 463
      Width = 543
      Height = 24
      Align = alBottom
      BevelKind = bkTile
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label7: TLabel
        Left = 0
        Top = 0
        Width = 201
        Height = 20
        Align = alLeft
        Caption = 'Number of Member Consumer'#39's'
        ExplicitHeight = 16
      end
      object Label8: TLabel
        Left = 201
        Top = 0
        Width = 100
        Height = 20
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '1,000'
        ExplicitLeft = 126
      end
      object Label15: TLabel
        Left = 320
        Top = 0
        Width = 219
        Height = 20
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        Caption = 'CODE SCANNER DISCONNECTED'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        OnClick = Label15Click
      end
    end
    object RadioButton1: TRadioButton
      Left = 156
      Top = 73
      Width = 148
      Height = 17
      Caption = 'Account Number Only'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 373
      Top = 74
      Width = 164
      Height = 17
      Caption = 'Account Name Only'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 64
      Top = 73
      Width = 75
      Height = 21
      Caption = 'BitBtn1'
      TabOrder = 6
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object DSMemberConsumer: TDataSource
    DataSet = vtMemberConsumer
    OnDataChange = DSMemberConsumerDataChange
    Left = 256
    Top = 144
  end
  object DSDataEntries: TDataSource
    DataSet = UMainModule.qryMCQualified
    OnDataChange = DSDataEntriesDataChange
    Left = 658
    Top = 233
  end
  object vtMemberConsumer: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'AccountNumber'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 99
      end
      item
        Name = 'Area'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Address'
        DataType = ftString
        Size = 99
      end
      item
        Name = 'Status'
        DataType = ftInteger
      end
      item
        Name = 'ShuffleOrder'
        DataType = ftInteger
      end
      item
        Name = 'ConnectionStatus'
        DataType = ftLongWord
      end
      item
        Name = 'EntryMode'
        Attributes = [faRequired]
        DataType = ftString
        Size = 45
      end
      item
        Name = 'Year'
        Attributes = [faRequired]
        DataType = ftLongWord
      end
      item
        Name = 'Gender'
        Attributes = [faRequired]
        DataType = ftString
        Size = 45
      end
      item
        Name = 'isPosted'
        Attributes = [faRequired]
        DataType = ftLongWord
      end
      item
        Name = 'RateCode'
        Attributes = [faRequired]
        DataType = ftString
        Size = 45
      end
      item
        Name = 'IsQualifiedForRaffle'
        DataType = ftShortint
      end
      item
        Name = 'IsSignatureAvailable'
        Attributes = [faRequired]
        DataType = ftShortint
      end>
    Left = 192
    Top = 248
    Data = {
      04000F00020069640E000000000000000D004163636F756E744E756D62657201
      000B000000000004004E616D6501006300000000000400417265610100030000
      0000000700416464726573730100630000000000060053746174757303000000
      000000000C0053687566666C654F7264657203000000000000001000436F6E6E
      656374696F6E5374617475732A000000000000000900456E7472794D6F646501
      002D00000000000400596561722A00000000000000060047656E64657201002D
      000000000008006973506F737465642A00000000000000080052617465436F64
      6501002D0000000000140049735175616C6966696564466F72526166666C652B
      00000000000000140049735369676E6174757265417661696C61626C652B0000
      0000000000000000000000}
    object vtMemberConsumerid: TVirtualAutoIncField
      FieldName = 'id'
    end
    object vtMemberConsumerAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 11
    end
    object vtMemberConsumerName: TStringField
      FieldName = 'Name'
      Size = 99
    end
    object vtMemberConsumerArea: TStringField
      FieldName = 'Area'
      Size = 3
    end
    object vtMemberConsumerAddress: TStringField
      FieldName = 'Address'
      Size = 99
    end
    object vtMemberConsumerStatus: TIntegerField
      FieldName = 'Status'
    end
    object vtMemberConsumerShuffleOrder: TIntegerField
      FieldName = 'ShuffleOrder'
    end
    object vtMemberConsumerConnectionStatus: TLongWordField
      FieldName = 'ConnectionStatus'
    end
    object vtMemberConsumerEntryMode: TStringField
      FieldName = 'EntryMode'
      Required = True
      Size = 45
    end
    object vtMemberConsumerYear: TLongWordField
      FieldName = 'Year'
      Required = True
    end
    object vtMemberConsumerGender: TStringField
      FieldName = 'Gender'
      Required = True
      Size = 45
    end
    object vtMemberConsumerisPosted: TLongWordField
      FieldName = 'isPosted'
      Required = True
    end
    object vtMemberConsumerRateCode: TStringField
      FieldName = 'RateCode'
      Required = True
      Size = 45
    end
    object vtMemberConsumerIsQualifiedForRaffle: TShortintField
      FieldName = 'IsQualifiedForRaffle'
    end
    object vtMemberConsumerIsSignatureAvailable: TShortintField
      FieldName = 'IsSignatureAvailable'
      Required = True
    end
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <
      item
        SourceFieldName = 'id'
        DestinationFieldName = 'id'
      end
      item
        SourceFieldName = 'AccountNumber'
        DestinationFieldName = 'AccountNumber'
      end
      item
        SourceFieldName = 'Name'
        DestinationFieldName = 'Name'
      end
      item
        SourceFieldName = 'Area'
        DestinationFieldName = 'Area'
      end
      item
        SourceFieldName = 'Address'
        DestinationFieldName = 'Address'
      end
      item
        SourceFieldName = 'Status'
        DestinationFieldName = 'Status'
      end
      item
        SourceFieldName = 'ShuffleOrder'
        DestinationFieldName = 'ShuffleOrder'
      end
      item
        SourceFieldName = 'ConnectionStatus'
        DestinationFieldName = 'ConnectionStatus'
      end
      item
        SourceFieldName = 'EntryMode'
        DestinationFieldName = 'EntryMode'
      end
      item
        SourceFieldName = 'Year'
        DestinationFieldName = 'Year'
      end
      item
        SourceFieldName = 'Gender'
        DestinationFieldName = 'Gender'
      end
      item
        SourceFieldName = 'isPosted'
        DestinationFieldName = 'isPosted'
      end
      item
        SourceFieldName = 'RateCode'
        DestinationFieldName = 'RateCode'
      end
      item
        SourceFieldName = 'IsQualifiedForRaffle'
        DestinationFieldName = 'IsQualifiedForRaffle'
      end
      item
        SourceFieldName = 'IsSignatureAvailable'
        DestinationFieldName = 'IsSignatureAvailable'
      end>
    LogFileName = 'Data.log'
    Left = 440
    Top = 272
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = UMainModule.tblSearchMemberConsumer
    Left = 496
    Top = 224
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = vtMemberConsumer
    Left = 360
    Top = 344
  end
  object qryCountDisconnected: TFDQuery
    Connection = UMainModule.FDConnSQLite
    SQL.Strings = (
      'select COUNT(ACCOUNTNUMBER) as CountDisco'
      ' FROM MEMBERCONSUMERS WHERE'
      'Year = :AYear'
      'AND'
      ' STATUS IN (3)')
    Left = 914
    Top = 173
    ParamData = <
      item
        Name = 'AYEAR'
        DataType = ftWideString
        ParamType = ptInput
        Value = '2023'
      end>
    object qryCountDisconnectedCountDisco: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'CountDisco'
      Origin = 'CountDisco'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDBatchMove2: TFDBatchMove
    Reader = FDBatchMoveDataSetReader2
    Writer = FDBatchMoveTextWriter1
    Mappings = <
      item
        SourceFieldName = 'AccountNumber'
        DestinationFieldName = 'AccountNumber'
      end>
    LogFileName = 'Data.log'
    Left = 1154
    Top = 165
  end
  object FDBatchMoveDataSetReader2: TFDBatchMoveDataSetReader
    DataSet = UMainModule.tblNeedToBePosted
    Left = 1122
    Top = 293
  end
  object FDBatchMoveTextWriter1: TFDBatchMoveTextWriter
    FileName = 'F:\2023\RaffleSystemTools\Win32\Debug\AGMA_AREACODE.csv'
    DataDef.Fields = <
      item
        FieldName = 'AccountNumber'
        FieldSize = 11
      end>
    Left = 1242
    Top = 229
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1800000
    OnTimer = Timer1Timer
    Left = 440
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 770
    Top = 181
    object DeleteSelectedRecord1: TMenuItem
      Caption = 'Delete Selected Record!'
      OnClick = DeleteSelectedRecord1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportAsCSVFile1: TMenuItem
      Caption = 'Export As CSV File'
    end
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 312
    Top = 256
  end
  object UsbRemovalTimer: TTimer
    Enabled = False
    OnTimer = UsbRemovalTimerTimer
    Left = 112
    Top = 176
  end
  object UsbArrivalTimer: TTimer
    Enabled = False
    OnTimer = UsbArrivalTimerTimer
    Left = 56
    Top = 176
  end
end
