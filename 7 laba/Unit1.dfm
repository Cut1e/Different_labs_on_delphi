object Form1: TForm1
  Left = 287
  Top = 449
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 288
    Width = 49
    Height = 24
    Caption = 'Panel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
  object StringGrid1: TStringGrid
    Left = 368
    Top = 8
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
  end
  object StringGrid2: TStringGrid
    Left = 368
    Top = 152
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 40
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
      end
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
    end
    object N5: TMenuItem
      Caption = #1050#1085#1086#1087#1082#1080' '#1055#1091#1089#1082#1072
      object N11: TMenuItem
        Caption = #1055#1059#1057#1050' 1'
        ShortCut = 112
        OnClick = N11Click
      end
      object N21: TMenuItem
        Caption = #1055#1059#1057#1050' 2'
        ShortCut = 113
        OnClick = N21Click
      end
    end
    object N6: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 123
      OnClick = N6Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 352
    Top = 368
  end
end
