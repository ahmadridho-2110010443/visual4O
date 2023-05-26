object Form1: TForm1
  Left = 248
  Top = 133
  Width = 842
  Height = 331
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
    Left = 16
    Top = 32
    Width = 48
    Height = 13
    Caption = 'PENYAKIT'
  end
  object lbl2: TLabel
    Left = 16
    Top = 64
    Width = 90
    Height = 13
    Caption = 'JUMLAH PENYAKIT'
  end
  object Edt2: TEdit
    Left = 120
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 56
    Top = 88
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btn1Click
  end
  object cht1: TChart
    Left = 360
    Top = 8
    Width = 400
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
    TabOrder = 2
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
  object StringGrid1: TStringGrid
    Left = 16
    Top = 128
    Width = 320
    Height = 120
    TabOrder = 3
  end
  object btn2: TBitBtn
    Left = 40
    Top = 256
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 136
    Top = 256
    Width = 75
    Height = 25
    Caption = 'ABORT'
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 120
    Top = 24
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object btn4: TButton
    Left = 232
    Top = 256
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 7
  end
end
