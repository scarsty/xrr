object Form3: TForm3
  Left = 646
  Top = 455
  BorderStyle = bsDialog
  Caption = #26354#32447#24494#35843
  ClientHeight = 214
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 15
    Top = 16
    Width = 154
    Height = 97
    Caption = 'x'#21521#35843#33410
    TabOrder = 0
    object ScrollBarx: TScrollBar
      Left = 16
      Top = 33
      Width = 121
      Height = 16
      Max = 1000
      PageSize = 0
      TabOrder = 0
      OnChange = ScrollBarxChange
    end
    object ScrollBar2: TScrollBar
      Left = 16
      Top = 65
      Width = 121
      Height = 16
      Max = 1000
      Min = 1
      PageSize = 0
      Position = 100
      TabOrder = 1
      OnChange = ScrollBar2Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 176
    Top = 16
    Width = 153
    Height = 97
    Caption = 'y'#21521#35843#33410
    TabOrder = 1
    object ScrollBar1: TScrollBar
      Left = 16
      Top = 65
      Width = 121
      Height = 16
      Max = 1000
      Min = 1
      PageSize = 0
      Position = 350
      TabOrder = 0
      OnChange = ScrollBar1Change
    end
    object ScrollBary: TScrollBar
      Left = 16
      Top = 33
      Width = 121
      Height = 16
      Max = 1000
      Min = 1
      PageSize = 0
      Position = 100
      TabOrder = 1
      OnChange = ScrollBaryChange
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 128
    Width = 153
    Height = 65
    Caption = #27599#24230#21462#28857#25968
    TabOrder = 2
    object Edit1: TEdit
      Left = 40
      Top = 24
      Width = 65
      Height = 21
      TabOrder = 0
      Text = '1000'
      OnChange = Edit1Change
    end
  end
  object GroupBox4: TGroupBox
    Left = 176
    Top = 128
    Width = 153
    Height = 65
    Caption = #25511#21046
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 80
      Top = 24
      Width = 57
      Height = 25
      Caption = #20851#38381
      TabOrder = 0
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 24
      Width = 57
      Height = 25
      Caption = #22797#20301
      TabOrder = 1
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
  end
end
