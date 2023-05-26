unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    Edt1: TEdit;
    Edt2: TEdit;
    btnproses: TButton;
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    Edttambah: TEdit;
    Edtkurang: TEdit;
    Edtkali: TEdit;
    Edtbagi: TEdit;
    btntambah: TButton;
    btnkurang: TButton;
    btnkali: TButton;
    btnbagi: TButton;
    btnkeluar: TButton;
    procedure btnprosesClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnkurangClick(Sender: TObject);
    procedure btnkaliClick(Sender: TObject);
    procedure btnbagiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnprosesClick(Sender: TObject);
var
  nil1, nil2 : real;
  tambah, kurang, kali, bagi : Real;

begin
  nil1 :=StrToInt(Edt1.Text);
  nil2 :=StrToInt(Edt2.Text);

  tambah := nil1+nil2;
  kurang := nil1-nil2;
  kali := nil1*nil2;
  bagi := nil1/nil2;

  Edttambah.Text := floattostr(tambah);
  Edtkurang.Text := floattostr(kurang);
  Edtkali.Text := floattostr(kali);
  Edtbagi.Text := floattostr(bagi);

end;

procedure TForm1.btntambahClick(Sender: TObject);
var
  nil1, nil2 : Real;
  tambah : Real;

begin
 nil1 := StrToInt(Edt1.Text);
 nil2 := StrToInt(Edt2.Text);
 tambah := nil1+nil2;
 Edttambah.Text := floattostr(tambah);
end;

procedure TForm1.btnkeluarClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.btnkurangClick(Sender: TObject);
var
  nil1, nil2 : Real;
  kurang : Real;

begin
 nil1 := StrToInt(Edt1.Text);
 nil2 := StrToInt(Edt2.Text);
 kurang := nil1-nil2;
 Edtkurang.Text := floattostr(kurang);
end;

procedure TForm1.btnkaliClick(Sender: TObject);
var
  nil1, nil2 : Real;
  kali : Real;

begin
 nil1 := StrToInt(Edt1.Text);
 nil2 := StrToInt(Edt2.Text);
 kali := nil1*nil2;
 Edtkali.Text := floattostr(kali);
end;

procedure TForm1.btnbagiClick(Sender: TObject);
var
  nil1, nil2 : Real;
  bagi : Real;

begin
 nil1 := StrToInt(Edt1.Text);
 nil2 := StrToInt(Edt2.Text);
 bagi := nil1/nil2;
 Edtbagi.Text := floattostr(bagi);
end;

end.
