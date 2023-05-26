object Form1: TForm1
  Left = 49
  Top = 140
  Width = 490
  Height = 390
  Caption = 'Latihan_02_kondisional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 128
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object lbl2: TLabel
    Left = 16
    Top = 160
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object lbl3: TLabel
    Left = 16
    Top = 192
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object lbl4: TLabel
    Left = 280
    Top = 128
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object lbl5: TLabel
    Left = 280
    Top = 168
    Width = 34
    Height = 13
    Caption = 'GRADE'
  end
  object pnl1: TPanel
    Left = 32
    Top = 24
    Width = 393
    Height = 41
    Caption = 'Contoh Kondisional'
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 80
    Top = 88
    Width = 89
    Height = 25
    Caption = 'Nilai'
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 184
    Top = 88
    Width = 89
    Height = 25
    Caption = 'Bobot'
    TabOrder = 2
  end
  object Edtnilai1: TEdit
    Left = 80
    Top = 128
    Width = 89
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Edtnilai2: TEdit
    Left = 80
    Top = 160
    Width = 89
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object Edtnilai3: TEdit
    Left = 80
    Top = 192
    Width = 89
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object Edtbobot1: TEdit
    Left = 184
    Top = 128
    Width = 89
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object Edtbobot2: TEdit
    Left = 184
    Top = 160
    Width = 89
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object Edtbobot3: TEdit
    Left = 184
    Top = 192
    Width = 89
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object Edttotal: TEdit
    Left = 336
    Top = 128
    Width = 89
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object Edtgrade: TEdit
    Left = 336
    Top = 168
    Width = 89
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object btnHitung: TButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = btnHitungClick
  end
  object btnhapus: TButton
    Left = 184
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = btnhapusClick
  end
  object btnkeluar: TButton
    Left = 336
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 13
    OnClick = btnkeluarClick
  end
end
