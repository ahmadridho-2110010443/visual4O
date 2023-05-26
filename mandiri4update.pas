unit mandiri4update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb1: TComboBox;
    Edt1: TEdit;
    cbb2: TComboBox;
    StringGrid1: TStringGrid;
    btn1: TButton;
    cht1: TChart;
    Series1: TPieSeries;
    btn2: TButton;
    btn3: TButton;
    procedure charadd;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
StringGrid1.RowCount:=1;
StringGrid1.ColCount:=4;
StringGrid1.Cells[0,0]:='NO';
StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
StringGrid1.Cells[2,0]:='FAKULTAS';
StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=70;
StringGrid1.ColWidths[2]:=170;
StringGrid1.ColWidths[3]:=100;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -
1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := edt1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := cbb2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := cbb1.Text;
charadd;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  a, b : Integer;
begin
  a:=StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
  for b:=StringGrid1.Selection.Bottom +1 to StringGrid1.RowCount-1 do
  StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];
  StringGrid1.RowCount:=StringGrid1.RowCount-1;
  charadd; //procedure
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
StringGrid1.RowCount:=StringGrid1.RowCount-
MAX_PATH; //hapus isi data stringgrid all
charadd; //procedure
end;

procedure TForm1.charadd;
var
  i : Integer;
begin
  cht1.Series[0].Clear; //membersihkan tampilan char
  for i:=1 to StringGrid1.RowCount-1 do
  begin
    cht1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
  end;
end;

end.
