object Form2: TForm2
  Left = 221
  Top = 218
  Width = 898
  Height = 574
  Caption = 'FORM TAMBAH DATA JADWAL'
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
  object grp1: TGroupBox
    Left = 16
    Top = 8
    Width = 825
    Height = 265
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 24
      Width = 54
      Height = 13
      Caption = 'JAM MULAI'
    end
    object lbl2: TLabel
      Left = 224
      Top = 24
      Width = 54
      Height = 13
      Caption = 'JAM AKHIR'
    end
    object lbl3: TLabel
      Left = 8
      Top = 64
      Width = 99
      Height = 13
      Caption = 'HARI PELAKSANAAN'
    end
    object lbl4: TLabel
      Left = 8
      Top = 96
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object lbl5: TLabel
      Left = 8
      Top = 136
      Width = 49
      Height = 13
      Caption = 'RUANGAN'
    end
    object lbl6: TLabel
      Left = 8
      Top = 176
      Width = 64
      Height = 13
      Caption = 'MATAKULIAH'
    end
    object lbl7: TLabel
      Left = 8
      Top = 208
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object lbl8: TLabel
      Left = 8
      Top = 240
      Width = 67
      Height = 13
      Caption = 'TOTAL HADIR'
    end
    object Edt1: TEdit
      Left = 128
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 0
      Text = '00:00'
    end
    object Edt2: TEdit
      Left = 296
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 1
      Text = '00:00'
    end
    object cbb1: TComboBox
      Left = 128
      Top = 64
      Width = 249
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '---PILIH HARI---'
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUM'#39'AT'
        'SABTU'
        'MINGGU')
    end
    object dtp1: TDateTimePicker
      Left = 128
      Top = 104
      Width = 249
      Height = 21
      Date = 45074.566848969910000000
      Time = 45074.566848969910000000
      TabOrder = 3
    end
    object Edt3: TEdit
      Left = 128
      Top = 136
      Width = 249
      Height = 21
      TabOrder = 4
      Text = '-'
    end
    object Edt4: TEdit
      Left = 128
      Top = 168
      Width = 249
      Height = 21
      TabOrder = 5
      Text = '-'
    end
    object Edt5: TEdit
      Left = 128
      Top = 200
      Width = 249
      Height = 21
      TabOrder = 6
      Text = '-'
    end
    object Edt6: TEdit
      Left = 128
      Top = 232
      Width = 249
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object btn1: TBitBtn
      Left = 680
      Top = 24
      Width = 121
      Height = 49
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 680
      Top = 80
      Width = 121
      Height = 49
      Caption = 'EDIT'
      TabOrder = 9
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 680
      Top = 136
      Width = 121
      Height = 49
      Caption = 'HAPUS'
      TabOrder = 10
      OnClick = btn3Click
    end
    object btn4: TBitBtn
      Left = 680
      Top = 192
      Width = 121
      Height = 49
      Caption = 'BATAL'
      TabOrder = 11
      OnClick = btn4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 280
    Width = 825
    Height = 241
    DataSource = Form1.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
