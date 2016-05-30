object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'LAB6Comobj'
  ClientHeight = 180
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 21
    Width = 6
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 159
    Top = 21
    Width = 6
    Height = 13
    Caption = 'Y'
  end
  object Label3: TLabel
    Left = 304
    Top = 21
    Width = 6
    Height = 13
    Caption = 'Z'
  end
  object Label4: TLabel
    Left = 16
    Top = 117
    Width = 15
    Height = 13
    Caption = 'A='
  end
  object Label5: TLabel
    Left = 16
    Top = 149
    Width = 14
    Height = 13
    Caption = 'B='
  end
  object Edit1: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 159
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 304
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 350
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 3
    OnClick = Button1Click
  end
end
