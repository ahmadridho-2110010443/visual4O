unit Ujadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TForm2 = class(TForm)
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    Edt1: TEdit;
    Edt2: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    Edt3: TEdit;
    Edt4: TEdit;
    Edt5: TEdit;
    Edt6: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  upd : string;

implementation
uses Uviewjadwal, DB;

{$R *.dfm}

procedure TForm2.bersih;
begin
Edt1.Text :='00:00';
Edt2.Text :='00:00';
cbb1.Text :='---PILIH HARI---';
Edt3.Text :='-';
Edt4.Text :='-';
Edt5.Text :='-';
Edt6.Text :='0';

Form1.qry1.SQL.Clear;
Form1.qry1.SQL.Add('select * from jadwal_table');
Form1.qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
end;

procedure TForm2.btn1Click(Sender: TObject);
var a:Integer;
begin
  if (Edt1.Text='') or (Edt1.Text='00:00') or (Edt2.Text='') or (Edt2.Text='00:00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR !!!');
  end else
  if (cbb1.Text='') or (cbb1.Text='---PILIH HARI---') then
  begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR !!!');
  end else
  if (Edt3.Text='') or (Edt3.Text='-') or (Edt4.Text='') or (Edt4.Text='-') then
  begin
      ShowMessage('Inputan Ruangan atau Matakuliah masih belum sesuai');
  end else
  if (Edt5.Text='') or (Edt5.Text='-') or (Edt6.Text='') or (Edt6.Text='0') then
  begin
      ShowMessage('Inputan Kelas atau Total Hadir masih belum sesuai');
  end else
  if (Form1.qry1.Locate('hari',cbb1.Text,[])) and (Form1.qry1.Locate('jam_mulai',Edt1.Text,[])) then   // validasi pembandingkan data inputan dengan data di tabel
  begin
      ShowMessage('Data Sudah Ada di Dalam Sistem');
      Edt1.SetFocus;
  end else

  begin     // kode simpan
    a:=Form1.qry1.RecordCount+1;
  with Form1.qry1 do
  begin
  SQL.Clear;
  SQL.Add('insert into jadwal_table values("'+IntToStr(a)+'","'+Edt1.Text+'","'+Edt2.Text+'","'+cbb1.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+Edt3.Text+'","'+Edt4.Text+'","'+Edt5.Text+'","'+Edt6.Text+'")');
  ExecSQL;
  bersih; //procedure bersih
  ShowMessage('DATA BERHASIL DI SIMPAN');

  end;
  end;

end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
try
 upd:=Form1.qry1.Fields[0].AsString;
 Edt1.Text:= Form1.qry1.Fields[1].AsString;
 Edt2.Text:= Form1.qry1.Fields[2].AsString;
 cbb1.Text:= Form1.qry1.Fields[3].AsString;
 dtp1.Date:= Form1.qry1.Fields[4].AsDateTime;
 Edt3.Text:= Form1.qry1.Fields[5].AsString;
 Edt4.Text:= Form1.qry1.Fields[6].AsString;
 Edt5.Text:= Form1.qry1.Fields[7].AsString;
 Edt6.Text:= Form1.qry1.Fields[8].AsString;
 btn1.Enabled:=False;
 btn2.Enabled:=True;
 btn3.Enabled:=True;
except
 // kosong
end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  if (Edt1.Text='') or (Edt1.Text='00:00') or (Edt2.Text='') or (Edt2.Text='00:00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR !!!');
  end else
  if (cbb1.Text='') or (cbb1.Text='---PILIH HARI---') then
  begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR !!!');
  end else
  if (Edt3.Text='') or (Edt3.Text='-') or (Edt4.Text='') or (Edt4.Text='-') then
  begin
      ShowMessage('Inputan Ruangan atau Matakuliah masih belum sesuai');
  end else
  if (Edt5.Text='') or (Edt5.Text='-') or (Edt6.Text='') or (Edt6.Text='0') then
  begin
      ShowMessage('Inputan Kelas atau Total Hadir masih belum sesuai');
  end else
  if (Edt1.Text=Form1.qry1.Fields[1].AsString) and (cbb1.Text=Form1.qry1.Fields[3].AsString) then
  begin
      ShowMessage('DATA TIDAK ADA PERUBAHAN !!!');
  end else
  begin
    //kode update
    with Form1.qry1 do
    begin
      SQL.Clear;
      SQL.Add('update jadwal_table set jam_mulai="'+Edt1.Text+'",jam_akhir="'+edt2.Text+'" where no="'+upd+'"');
      ExecSQL;

      bersih; //procedure bersih
      ShowMessage('DATA BERHASIL DI UPDATE...');
      
    end;
  end
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  if (Edt1.Text='') or (Edt1.Text='00:00') or (Edt2.Text='') or (Edt2.Text='00:00')then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR !!!');
  end else
  if (cbb1.Text='') or (cbb1.Text='---PILIH HARI---') then
  begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR !!!');
  end else
  if (Edt3.Text='') or (Edt3.Text='-') or (Edt4.Text='') or (Edt4.Text='-') then
  begin
      ShowMessage('Inputan Ruangan atau Matakuliah masih belum sesuai');
  end else
  if (Edt5.Text='') or (Edt5.Text='-') or (Edt6.Text='') or (Edt6.Text='0') then
  begin
      ShowMessage('Inputan Kelas atau Total Hadir masih belum sesuai');
  end else
  begin
    //kode delete
    if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)=mryes then
    begin
       with Form1.qry1 do
       begin
         SQL.Clear;
         SQL.Add('delete from jadwal_table where no="'+upd+'"');
         ExecSQL;
         bersih; //procedure bersih
         ShowMessage('DATA BERHASIL DIHAPUS');
       end;
    end else
    begin
      ShowMessage('DATA BATAL DIHAPUS');
    end;
  end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
bersih;
end;

end.
