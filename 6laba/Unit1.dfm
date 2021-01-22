object Form1: TForm1
  Left = 475
  Top = 123
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 6
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 64
    Width = 6
    Height = 24
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 340
    Width = 912
    Height = 81
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
  object Edit1: TEdit
    Left = 104
    Top = 8
    Width = 641
    Height = 32
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 24
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object N5: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N6: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
      end
    end
    object N2: TMenuItem
      Caption = #1050#1085#1086#1087#1082#1080' '#1087#1091#1089#1082#1072
      object N11: TMenuItem
        Caption = #1050#1085#1086#1087#1082#1072' 1'
        ShortCut = 112
        OnClick = N11Click
      end
      object N21: TMenuItem
        Caption = #1050#1085#1086#1087#1082#1072' 2'
        ShortCut = 113
      end
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 122
      OnClick = N3Click
    end
  end
end
