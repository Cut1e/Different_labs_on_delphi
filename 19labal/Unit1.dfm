object Form1: TForm1
  Left = 206
  Top = 142
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
    Left = 504
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object StringGrid1: TStringGrid
    Left = 504
    Top = 64
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 0
    Top = 56
    Width = 209
    Height = 33
    Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1084#1072#1090#1088#1080#1094#1099' '#1080' '#1079#1072#1087#1080#1089#1100' '#1085#1072' '#1076#1080#1089#1082
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 0
    Top = 96
    Width = 201
    Height = 33
    Caption = #1055#1086#1080#1089#1082' '#1087#1086#1083#1086#1078#1080#1090#1077#1083#1100#1085#1086#1075#1086
    TabOrder = 2
  end
  object StringGrid2: TStringGrid
    Left = 504
    Top = 208
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
  end
  object CheckBox3: TCheckBox
    Left = 0
    Top = 136
    Width = 201
    Height = 33
    Caption = #1063#1090#1077#1085#1080#1077' '#1092#1072#1081#1083#1072
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N4: TMenuItem
        Caption = 'C'#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
      end
    end
    object N5: TMenuItem
      Caption = #1050#1085#1086#1087#1082#1080' '#1079#1072#1087#1091#1089#1082#1072' '
      object N11: TMenuItem
        Caption = #1055#1091#1089#1082' 1'
        ShortCut = 112
        OnClick = N11Click
      end
      object N21: TMenuItem
        Caption = #1055#1091#1089#1082' 2'
        ShortCut = 113
        OnClick = N21Click
      end
      object N31: TMenuItem
        Caption = #1055#1091#1089#1082' 3'
        ShortCut = 114
        OnClick = N31Click
      end
    end
    object N6: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N6Click
    end
  end
end
