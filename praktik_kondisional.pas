unit praktik_kondisional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Edthadir: TEdit;
    Edtbobotk: TEdit;
    Edttugas: TEdit;
    Edtbobott: TEdit;
    Edtuts: TEdit;
    Edtbobotu: TEdit;
    Edtharian: TEdit;
    Edtboboth: TEdit;
    Edtuas: TEdit;
    Edtbobotuas: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Edttot: TEdit;
    Edtgrade: TEdit;
    Edtket: TEdit;
    btnhitung: TButton;
    btnhapus: TButton;
    btnkeluar: TButton;
    procedure btnhitungClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnhitungClick(Sender: TObject);
var
  nil1, nil2, nil3, nil4, nil5, total : real;
  b1, b2, b3, b4, b5 : Real;
  grade, ket : string;
begin
//berfungsi mengambil data nilai
  nil1 := StrToFloat(Edthadir.Text);
  nil2 := StrToFloat(Edttugas.Text);
  nil3 := StrToFloat(Edtuts.Text);
  nil4 := StrToFloat(Edtharian.Text);
  nil5 := StrToFloat(Edtuas.Text);
//berfungsi mengambil data bobot
  b1 := StrToFloat(Edtbobotk.Text)/100;
  b2 := StrToFloat(Edtbobott.Text)/100;
  b3 := StrToFloat(Edtbobotu.Text)/100;
  b4 := StrToFloat(Edtboboth.Text)/100;
  b5 := StrToFloat(Edtbobotuas.Text)/100;
//berfungsi mengambil data total
  total := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
//berfungsi mengambil data grade
  if (total >= 80)then
  grade := 'A'
  else
  if (total >=70)then
  grade := 'B'
  else
  if (total >=60)then
  grade := 'C'
  else
  if (total >=50)then
  grade := 'D'
  else
  grade := 'E';
//berfungsi mengambil data lulus/tidak lulus
  if (grade = 'A')then
  ket := 'LULUS'
  else
  if (grade = 'B')then
  ket := 'LULUS'
  else
  if (grade = 'C')then
  ket := 'LULUS'
  else
  ket := 'TIDAK LULUS';

//berfungsi mengambil data hasil proses
  Edttot.Text := FloatToStr(total);
  Edtgrade.Text := grade;
  Edtket.Text := ket;

end;

procedure TForm1.btnhapusClick(Sender: TObject);
begin
  Edthadir.Text := '0';
  Edttugas.Text := '0';
  Edtuts.Text := '0';
  Edtharian.Text := '0';
  Edtuas.Text := '0';
  Edttot.Text := '';
  Edtgrade.Text := '';
  Edtket.Text := '';
end;

procedure TForm1.btnkeluarClick(Sender: TObject);
begin
Application.Terminate;
end;

end.
