unit Uviewjadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, StdCtrls, Buttons, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    qry1: TADOQuery;
    qry2: TADOQuery;
    cht1: TChart;
    Series1: TBarSeries;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    frxDBjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    frxdetailjadwal: TfrxReport;
    frxDBdetailjadwal: TfrxDBDataset;
    btn4: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Ujadwal;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM');
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  i : Integer;
begin
qry2.SQL.Clear;
qry2.SQL.Add('select count(no)as jumlah_kelas,sum(kehadiran_total)as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
qry2.Open;
cht1.Series[0].Clear; //clear grafik
for i := 1 to qry2.RecordCount do
begin
  cht1.Series[0].Add(StrToInt(qry2.fieldbyname('total_siswa').AsString),qry2.fieldbyname('nama_kelas').AsString);
  qry2.Next;
end;

end;
procedure TForm1.btn2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;

dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TForm1.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
 if View.Name ='Memo 7' then
 begin
   qry2.SQL.Clear;
   qry2.SQL.Add('select * from jadwal_table where kelas="'+view.TagStr+'"');
   qry2.Open;

   frxdetailjadwal.ShowReport();
 end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
 form2.ShowModal;
end;

end.
