object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 72
    Width = 25
    Height = 16
    Caption = 'NPM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 112
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 144
    Width = 28
    Height = 16
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 176
    Width = 12
    Height = 16
    Caption = 'JK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 224
    Width = 92
    Height = 16
    Caption = 'TANGGAL LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 344
    Top = 80
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl7: TLabel
    Left = 344
    Top = 120
    Width = 28
    Height = 13
    Caption = ':'
  end
  object lbl8: TLabel
    Left = 344
    Top = 152
    Width = 41
    Height = 13
    Caption = ':'
  end
  object lbl9: TLabel
    Left = 344
    Top = 184
    Width = 41
    Height = 13
    Caption = ':'
  end
  object lbl10: TLabel
    Left = 344
    Top = 232
    Width = 49
    Height = 13
    Caption = ':'
  end
  object Edt1: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btn1: TButton
    Left = 40
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BERSIHKAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object Edt2: TEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edt3: TEdit
    Left = 136
    Top = 144
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object cbb1: TComboBox
    Left = 136
    Top = 176
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
  end
  object btn2: TButton
    Left = 128
    Top = 272
    Width = 105
    Height = 25
    Caption = 'TAMPILKAN DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn2Click
  end
  object dtp1: TDateTimePicker
    Left = 136
    Top = 224
    Width = 186
    Height = 21
    Date = 45058.691870138890000000
    Time = 45058.691870138890000000
    TabOrder = 6
  end
  object btn3: TButton
    Left = 240
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Copy Data'
    TabOrder = 7
    OnClick = btn3Click
  end
end
