object UTemplateSelector: TUTemplateSelector
  Left = 0
  Top = 0
  Caption = 'UTemplateSelector'
  ClientHeight = 362
  ClientWidth = 593
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 177
    Height = 362
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object ListBox1: TListBox
      Left = 0
      Top = 0
      Width = 177
      Height = 362
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 24
      Items.Strings = (
        'Wheel of Names'
        'Name Picker')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 177
    Top = 0
    Width = 416
    Height = 362
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitWidth = 177
  end
end