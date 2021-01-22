object Form1: TForm1
  Left = 200
  Top = 149
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
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 336
    Top = 56
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
  end
  object StringGrid2: TStringGrid
    Left = 336
    Top = 200
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 4
  end
  object Button2: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 152
    Width = 185
    Height = 105
    Caption = #1042#1099#1073#1086#1088' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
    TabOrder = 6
    object CheckBox1: TCheckBox
      Left = 32
      Top = 16
      Width = 97
      Height = 17
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 32
      Top = 40
      Width = 97
      Height = 17
      Caption = #1042#1099#1074#1086#1076
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 364
    Width = 912
    Height = 57
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
    Left = 344
    Top = 400
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 40
    object A1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open'
      end
      object Save1: TMenuItem
        Caption = 'Save'
      end
      object Saveass1: TMenuItem
        Caption = 'Save ass'
      end
    end
    object Pusk1: TMenuItem
      Caption = 'Pusk'
      object First1: TMenuItem
        Caption = 'First'
        ShortCut = 112
        OnClick = First1Click
      end
      object Second1: TMenuItem
        Caption = 'Second'
        ShortCut = 113
        OnClick = Second1Click
      end
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      ShortCut = 123
      OnClick = Exit1Click
    end
  end
end
