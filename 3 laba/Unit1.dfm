object Form1: TForm1
  Left = 218
  Top = 157
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 120
    Top = 24
    Width = 73
    Height = 19
    Caption = #1042#1074#1077#1076#1080#1090#1077' d'
  end
  object Label2: TLabel
    Left = 120
    Top = 64
    Width = 71
    Height = 19
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089
  end
  object Label3: TLabel
    Left = 536
    Top = 24
    Width = 46
    Height = 19
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 536
    Top = 56
    Width = 5
    Height = 19
  end
  object Edit1: TEdit
    Left = 208
    Top = 24
    Width = 121
    Height = 27
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 208
    Top = 64
    Width = 121
    Height = 27
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 368
    Top = 24
    Width = 75
    Height = 25
    Caption = #1055#1059#1057#1050
    TabOrder = 2
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 348
    Width = 912
    Height = 73
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
    OnTimer = Timer1Timer
    Left = 360
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 632
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object Save1: TMenuItem
        Caption = 'Save'
      end
      object Open1: TMenuItem
        Caption = 'open'
      end
    end
    object Obrabotka1: TMenuItem
      Caption = 'Obrabotkd'
      object Lvl11: TMenuItem
        Caption = 'lvl 1'
      end
      object lvl21: TMenuItem
        Caption = 'lvl2'
      end
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
