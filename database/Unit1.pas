unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, DbChart, Grids, DBGrids;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    dbcht1: TDBChart;
    Series1: TBarSeries;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn4Click(Sender: TObject);
var
i:Integer;
begin
qry1.SQL.Clear;
qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');qry1.Open;
dbcht1.Series[0].Clear;
for i:=1 to qry1.RecordCount do
begin
dbcht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
qry1.Next;
end;
dbgrd1.Columns[2].Width:=90;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select * from jadwal_table');
  qry1.Open;
  dbgrd1.columns[0].Width:=30;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[5].Width:=50;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  dbcht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
  dbgrd1.columns[0].Width:=30;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[5].Width:=50;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;
end;

end.
