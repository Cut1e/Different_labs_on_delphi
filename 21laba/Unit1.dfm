object Form1: TForm1
  Left = 203
  Top = 130
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 16
    Top = 8
    Width = 881
    Height = 433
    ActivePage = TabSheet4
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1080#1089#1082' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1080' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1075#1086
      object Label1: TLabel
        Left = 8
        Top = 120
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Label2: TLabel
        Left = 8
        Top = 136
        Width = 31
        Height = 13
        Caption = 'Label2'
      end
      object StringGrid1: TStringGrid
        Left = 424
        Top = 0
        Width = 393
        Height = 153
        ColCount = 6
        RowCount = 6
        TabOrder = 0
      end
      object Button1: TButton
        Left = 8
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 8
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1076#1080#1089#1082' '
      ImageIndex = 1
      object Button3: TButton
        Left = 0
        Top = 16
        Width = 337
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1076#1080#1089#1082' '#1084#1080#1085#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1095#1080#1089#1083#1072
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 0
        Top = 48
        Width = 337
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1085#1072' '#1076#1080#1089#1082' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1095#1080#1089#1083#1072
        TabOrder = 1
        OnClick = Button4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1063#1090#1077#1085#1080#1077' '#1089' '#1076#1080#1089#1082#1072' '
      ImageIndex = 2
      object Label3: TLabel
        Left = 184
        Top = 40
        Width = 31
        Height = 13
        Caption = 'Label3'
      end
      object Label4: TLabel
        Left = 184
        Top = 72
        Width = 31
        Height = 13
        Caption = 'Label4'
      end
      object Button5: TButton
        Left = 16
        Top = 32
        Width = 145
        Height = 25
        Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1095#1080#1089#1083#1086
        TabOrder = 0
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 16
        Top = 64
        Width = 145
        Height = 25
        Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1095#1080#1089#1083#1086
        TabOrder = 1
        OnClick = Button6Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1077#1082#1090#1086#1088
      ImageIndex = 3
      object Edit1: TEdit
        Left = 8
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Button7: TButton
        Left = 8
        Top = 64
        Width = 89
        Height = 41
        Caption = #1055#1086#1080#1089#1082' '#1074#1077#1082#1090#1086#1088#1072
        TabOrder = 1
        OnClick = Button7Click
      end
      object StringGrid2: TStringGrid
        Left = 416
        Top = 32
        Width = 393
        Height = 153
        ColCount = 6
        RowCount = 6
        TabOrder = 2
      end
    end
  end
end
