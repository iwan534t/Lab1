object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1052#1072#1075#1072#1079#1080#1085
  ClientHeight = 88
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 121
    Height = 13
    Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1090#1086#1074#1072#1088#1072
  end
  object Label2: TLabel
    Left = 63
    Top = 40
    Width = 66
    Height = 13
    Caption = #1050#1086#1083#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Edit1: TEdit
    Left = 135
    Top = 5
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 135
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object Button1: TButton
    Left = 30
    Top = 59
    Width = 75
    Height = 25
    Caption = #1042#1074#1086#1076' '#1090#1086#1074#1072#1088#1072
    TabOrder = 2
    OnClick = actionPerformed
  end
  object Button2: TButton
    Left = 165
    Top = 59
    Width = 75
    Height = 25
    Caption = #1054#1087#1083#1072#1090#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
