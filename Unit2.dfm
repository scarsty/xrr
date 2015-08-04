object Form2: TForm2
  Left = 146
  Top = 99
  Width = 696
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 528
    Top = 232
    Width = 18
    Height = 13
    Caption = 'd=?'
  end
  object Panel1: TPanel
    Left = 32
    Top = 24
    Width = 465
    Height = 345
    BevelInner = bvLowered
    Caption = 'Panel1'
    Color = clWhite
    TabOrder = 0
    object Image1: TImage
      Left = 8
      Top = 8
      Width = 449
      Height = 329
    end
  end
  object BitBtn1: TBitBtn
    Left = 528
    Top = 80
    Width = 113
    Height = 25
    Caption = #25171#24320#25968#25454#25991#20214
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 528
    Top = 144
    Width = 113
    Height = 25
    Caption = #23547#25214#26497#22823#28857#20272#31639'd'
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.dat|*.dat'
    Left = 536
    Top = 24
  end
end
