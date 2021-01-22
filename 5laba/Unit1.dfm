object Form1: TForm1
  Left = 192
  Top = 125
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
    Left = 96
    Top = 184
    Width = 8
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 552
    Top = 96
    Width = 6
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 336
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 440
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 348
    Width = 912
    Height = 73
    Panels = <
      item
        Text = #1041#1091#1094#1072#1077#1074' '#1042#1083#1072#1076#1080#1089#1083#1072' '#1048#1075#1086#1088#1077#1074#1080#1095
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
    OnTimer = Timer1Timer
    Left = 376
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object sac1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N3: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      end
      object N4: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
      end
      object N5: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
    end
    object N1: TMenuItem
      Caption = #1050#1085#1086#1087#1082#1080
      object N11: TMenuItem
        Caption = #1047#1072#1076#1072#1095#1072' 1'
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1047#1072#1076#1072#1095#1072' 2'
        OnClick = N12Click
      end
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
end
