unit grafik_stringgrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, Buttons, Grids, ExtCtrls, TeeProcs,
  Chart;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    Edt2: TEdit;
    btn1: TButton;
    cht1: TChart;
    StringGrid1: TStringGrid;
    btn2: TBitBtn;
    btn3: TBitBtn;
    cbb1: TComboBox;
    btn4: TButton;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0]:='JENIS PENYAKIT';
  StringGrid1.Cells[0,1]:='COVID 19';
  StringGrid1.Cells[0,2]:='FLU BIASA';
  StringGrid1.Cells[0,3]:='DEMAM';
  StringGrid1.Cells[0,4]:='RINDU';
  StringGrid1.Cells[1,0]:='JUMLAH';
  cht1.Title.Text.add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i : Integer;
begin
for i:=1 to stringgrid1.rowcount-1 do
cht1.Series[0].Add(strtofloat(stringgrid1.cells[1,i]),stringgrid1.cells[0,i]);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
stringgrid1.Cells[1,cbb1.ItemIndex+1]:=Edt2.Text;
end;

end.
