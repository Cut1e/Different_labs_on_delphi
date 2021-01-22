object Form1: TForm1
  Left = 102
  Top = 163
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 248
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 384
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 392
    Width = 912
    Height = 49
    Panels = <
      item
        Text = #1041#1091#1094#1072#1077#1074' '#1042#1083#1072#1076#1080#1089#1083#1072#1074' '#1048#1075#1086#1088#1077#1074#1080#1095
        Width = 180
      end
      item
        Width = 150
      end
      item
        Width = 120
      end>
  end
  object Timer1: TTimer
    Left = 352
    Top = 408
  end
end
