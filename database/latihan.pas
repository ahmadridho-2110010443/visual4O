unit latihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    Edt1: TEdit;
    btn1: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    Edt2: TEdit;
    Edt3: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    cbb1: TComboBox;
    btn2: TButton;
    dtp1: TDateTimePicker;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn3: TButton;
    lbl10: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.btn1Click(Sender: TObject);
begin
Edt1.Text := '';
Edt2.Text := '';
Edt3.Text := '';
cbb1.Text := '';
dtp1.Format := '_/_/___/';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Edt1.Text := '2110010443';
Edt2.Text := 'Ridho';
Edt3.Text := '09873486';
cbb1.Text := 'Laki-laki';
dtp1.Format := '02/NOV/2002';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
cbb1.Items.Add('Laki-laki');
cbb1.Items.Add('Perempuan');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
lbl6.Caption := Edt1.Text;
lbl7.Caption := Edt2.Text;
lbl8.Caption := Edt3.Text;
lbl9.Caption := cbb1.Text;
lbl10.Caption := FormatDateTime('dddddd',dtp1.Date);
end;

end.
