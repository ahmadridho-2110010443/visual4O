object Form1: TForm1
  Left = 46
  Top = 151
  Width = 614
  Height = 450
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
  object lbl1: TLabel
    Left = 24
    Top = 152
    Width = 70
    Height = 13
    Caption = 'Nilai Kehadiran'
  end
  object lbl2: TLabel
    Left = 24
    Top = 192
    Width = 51
    Height = 13
    Caption = 'Nilai Tugas'
  end
  object lbl3: TLabel
    Left = 24
    Top = 232
    Width = 41
    Height = 13
    Caption = 'Nilai UTS'
  end
  object lbl4: TLabel
    Left = 24
    Top = 312
    Width = 42
    Height = 13
    Caption = 'Nilai UAS'
  end
  object lbl5: TLabel
    Left = 24
    Top = 272
    Width = 53
    Height = 13
    Caption = 'Nilai Harian'
  end
  object lbl6: TLabel
    Left = 408
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Total Nilai'
  end
  object lbl7: TLabel
    Left = 408
    Top = 192
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object lbl8: TLabel
    Left = 408
    Top = 240
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object pnl1: TPanel
    Left = 104
    Top = 16
    Width = 345
    Height = 49
    Caption = 'Nilai Mahasiswa'
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 128
    Top = 96
    Width = 121
    Height = 33
    Caption = 'Nilai'
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 264
    Top = 96
    Width = 121
    Height = 33
    Caption = 'Bobot'
    TabOrder = 2
  end
  object Edthadir: TEdit
    Left = 128
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edtbobotk: TEdit
    Left = 264
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edttugas: TEdit
    Left = 128
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edtbobott: TEdit
    Left = 264
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edtuts: TEdit
    Left = 128
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edtbobotu: TEdit
    Left = 264
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edtharian: TEdit
    Left = 128
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edtboboth: TEdit
    Left = 264
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edtuas: TEdit
    Left = 128
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edtbobotuas: TEdit
    Left = 264
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edttot: TEdit
    Left = 472
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Edtgrade: TEdit
    Left = 472
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object Edtket: TEdit
    Left = 472
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 15
  end
  object btnhitung: TButton
    Left = 136
    Top = 352
    Width = 105
    Height = 25
    Caption = 'Hitung'
    TabOrder = 16
    OnClick = btnhitungClick
  end
  object btnhapus: TButton
    Left = 264
    Top = 352
    Width = 105
    Height = 25
    Caption = 'Hapus'
    TabOrder = 17
    OnClick = btnhapusClick
  end
  object btnkeluar: TButton
    Left = 472
    Top = 352
    Width = 113
    Height = 25
    Caption = 'Keluar'
    TabOrder = 18
    OnClick = btnkeluarClick
  end
end
