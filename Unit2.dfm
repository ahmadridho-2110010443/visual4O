object Form1: TForm1
  Left = 123
  Top = 152
  Width = 517
  Height = 449
  Caption = 'PRAKTEK_MANDIRI_1'
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
    Left = 40
    Top = 40
    Width = 53
    Height = 13
    Caption = 'INPUTAN 1'
  end
  object lbl2: TLabel
    Left = 40
    Top = 88
    Width = 53
    Height = 13
    Caption = 'INPUTAN 2'
  end
  object Edt1: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edt2: TEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnproses: TButton
    Left = 288
    Top = 40
    Width = 161
    Height = 73
    Caption = 'PROSES SEMUA'
    TabOrder = 2
    OnClick = btnprosesClick
  end
  object grp1: TGroupBox
    Left = 40
    Top = 152
    Width = 409
    Height = 217
    Caption = 'NILAI PROSES'
    TabOrder = 3
    object lbl3: TLabel
      Left = 16
      Top = 48
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object lbl4: TLabel
      Left = 16
      Top = 88
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object lbl5: TLabel
      Left = 16
      Top = 168
      Width = 97
      Height = 13
      Caption = 'HASIL PERMBAGIAN'
    end
    object lbl6: TLabel
      Left = 16
      Top = 128
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Edttambah: TEdit
      Left = 128
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edtkurang: TEdit
      Left = 128
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edtkali: TEdit
      Left = 128
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edtbagi: TEdit
      Left = 128
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btntambah: TButton
      Left = 280
      Top = 48
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = btntambahClick
    end
    object btnkurang: TButton
      Left = 280
      Top = 88
      Width = 75
      Height = 25
      Caption = '--'
      TabOrder = 5
      OnClick = btnkurangClick
    end
    object btnkali: TButton
      Left = 280
      Top = 128
      Width = 75
      Height = 25
      Caption = 'x'
      TabOrder = 6
      OnClick = btnkaliClick
    end
    object btnbagi: TButton
      Left = 280
      Top = 168
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = btnbagiClick
    end
  end
  object btnkeluar: TButton
    Left = 288
    Top = 120
    Width = 153
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 4
    OnClick = btnkeluarClick
  end
end
