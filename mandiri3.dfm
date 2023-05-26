object Form1: TForm1
  Left = 137
  Top = 144
  Width = 613
  Height = 450
  Caption = 'Form1'
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
  object lbl1: TLabel
    Left = 16
    Top = 24
    Width = 19
    Height = 13
    Caption = 'NIM'
  end
  object lbl2: TLabel
    Left = 16
    Top = 56
    Width = 94
    Height = 13
    Caption = 'NAMA MAHASISWA'
  end
  object lbl3: TLabel
    Left = 16
    Top = 88
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Edt1: TEdit
    Left = 136
    Top = 16
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object Edt2: TEdit
    Left = 136
    Top = 48
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object cbb1: TComboBox
    Left = 136
    Top = 80
    Width = 129
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object btn1: TButton
    Left = 48
    Top = 112
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 112
    Width = 75
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 4
    OnClick = btn2Click
  end
  object StringGrid1: TStringGrid
    Left = 272
    Top = 0
    Width = 297
    Height = 120
    TabOrder = 5
    ColWidths = (
      64
      119
      113
      64
      64)
  end
  object cht1: TChart
    Left = 40
    Top = 144
    Width = 545
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 6
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
