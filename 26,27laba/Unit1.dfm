object Form1: TForm1
  Left = 216
  Top = 121
  Width = 914
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 372
    Width = 898
    Height = 49
    Panels = <
      item
        Text = #1041#1091#1094#1072#1077#1074' '#1042#1083#1072#1076#1080#1089#1083#1072#1074' '#1048#1075#1086#1088#1077#1074#1080#1095
        Width = 170
      end
      item
        Width = 120
      end
      item
        Width = 100
      end>
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 96
    Width = 377
    Height = 129
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 1
    ColWidths = (
      93
      103
      83
      85)
  end
  object StringGrid2: TStringGrid
    Left = 520
    Top = 96
    Width = 377
    Height = 129
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 2
    ColWidths = (
      93
      103
      83
      85)
  end
  object Edit1: TEdit
    Left = 384
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 384
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 880
    Top = 408
  end
  object MainMenu1: TMainMenu
    Left = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        ShortCut = 112
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        ShortCut = 113
        OnClick = N3Click
      end
      object N5: TMenuItem
        Caption = #1053#1072#1081#1090#1080
        ShortCut = 114
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
        ShortCut = 115
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1100
        ShortCut = 116
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1055#1077#1088#1077#1080#1084#1077#1085#1086#1074#1072#1090#1100
        ShortCut = 117
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1059#1076#1072#1083#1077#1085#1080#1077
        ShortCut = 118
        OnClick = N9Click
      end
      object N12: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ShortCut = 119
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' 1 '#1096#1072#1075
        ShortCut = 120
        OnClick = N13Click
      end
      object N21: TMenuItem
        Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' 2 '#1096#1072#1075
        OnClick = N21Click
      end
    end
    object N4: TMenuItem
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1090#1072#1073#1083#1080#1094#1086#1081
      ShortCut = 123
      object N11: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
        ShortCut = 121
        OnClick = N11Click
      end
    end
    object N10: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 123
      OnClick = N10Click
    end
  end
  object od1: TOpenDialog
    Left = 40
  end
  object sd1: TSaveDialog
    Left = 72
  end
end
