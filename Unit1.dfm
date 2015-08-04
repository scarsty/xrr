object Form1: TForm1
  Left = 192
  Top = 110
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #30899#33180#22312#30789#29255#19978#30340'X'#20809#21453#23556#28436#31034
  ClientHeight = 472
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Labelths: TLabel
    Left = 216
    Top = 424
    Width = 3
    Height = 13
  end
  object Labelthe: TLabel
    Left = 712
    Top = 424
    Width = 3
    Height = 13
  end
  object LabelRU: TLabel
    Left = 736
    Top = 48
    Width = 3
    Height = 13
  end
  object LabelRD: TLabel
    Left = 736
    Top = 392
    Width = 3
    Height = 13
  end
  object LabelRM: TLabel
    Left = 736
    Top = 216
    Width = 3
    Height = 13
  end
  object Panel1: TPanel
    Left = 208
    Top = 48
    Width = 521
    Height = 369
    BevelInner = bvLowered
    Caption = 'Panel1'
    Color = clWhite
    TabOrder = 0
    object Image1: TImage
      Left = 8
      Top = 8
      Width = 505
      Height = 353
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 416
    Width = 75
    Height = 25
    Caption = #36873#39033
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333003333300
      33333337733333773F33330333333333033333733FFFFFFF73F3303300000003
      303337F37777777337F3303330CCC0333033373337777733373F0333330C0333
      33037F33337773FFF37F03333330300033037F3FFFF73777FF7F0300000307B7
      03037F77777F77777F7F030999030BBB03037F77777F77777F7F0309990307B7
      03037377777F7777737330099903300030333777777F377737F3300000033333
      3033377777733333373333033333333303333373FF33333F7333333003333300
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 40
    Width = 161
    Height = 225
    Caption = #21442#37327
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 12
      Height = 13
      Caption = 'n2'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 12
      Height = 13
      Caption = 'n3'
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 32
      Height = 13
      Caption = 'Rough'
    end
    object Label4: TLabel
      Left = 16
      Top = 176
      Width = 12
      Height = 13
      Caption = 'd2'
    end
    object Edit1: TEdit
      Left = 40
      Top = 32
      Width = 41
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '7.0787E-06'
    end
    object Edit2: TEdit
      Left = 96
      Top = 32
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '1.131E-08'
    end
    object Edit3: TEdit
      Left = 40
      Top = 72
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '7.5934E-06'
    end
    object Edit4: TEdit
      Left = 96
      Top = 72
      Width = 41
      Height = 21
      TabOrder = 3
      Text = '1.7333E-07'
    end
    object Edit5: TEdit
      Left = 40
      Top = 136
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '0'
      OnChange = Edit5Change
    end
    object Edit6: TEdit
      Left = 96
      Top = 136
      Width = 41
      Height = 21
      TabOrder = 5
      Text = '0'
      OnChange = Edit6Change
    end
    object Edit7: TEdit
      Left = 40
      Top = 176
      Width = 97
      Height = 21
      TabOrder = 6
      Text = '80'
      OnChange = Edit7Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 280
    Width = 161
    Height = 73
    Caption = #36215#27490#35282#24230
    TabOrder = 3
    object Edit9: TEdit
      Left = 88
      Top = 28
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '0.5'
      OnChange = Edit9Change
    end
    object Edit10: TEdit
      Left = 24
      Top = 28
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '0'
      OnChange = Edit10Change
    end
  end
  object BitBtn2: TBitBtn
    Left = 16
    Top = 376
    Width = 75
    Height = 25
    Caption = #30011#22270
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
      3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
      000077777777777777773303333333333333337FF333333F33333709333333C3
      333337773F3FF373F333330393993C3C33333F7F7F77F7F7FFFF77079797977C
      77777777777777777777330339339333C333337FF73373F37F33370C333C3933
      933337773F3737F37FF33303C3C33939C9333F7F7F7FF7F777FF7707C7C77797
      7C97777777777777777733033C3333333C33337F37F33333373F37033C333333
      33C3377F37333333337333033333333333333F7FFFFFFFFFFFFF770777777777
      7777777777777777777733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 104
    Top = 376
    Width = 75
    Height = 25
    Caption = #24494#35843
    TabOrder = 5
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
      33003377333337F33377333333333C333300333F333337F33377339333333C33
      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
      3000333333333377377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn4: TBitBtn
    Left = 104
    Top = 416
    Width = 75
    Height = 25
    Caption = #23548#20986
    TabOrder = 6
    OnClick = BitBtn4Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'dat'
    FileName = '*.dat'
    Filter = '*.dat|'#25968#25454#25991#20214'|*.*|'#25152#26377#25991#20214
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 616
    Top = 8
  end
end
