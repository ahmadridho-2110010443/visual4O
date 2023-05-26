unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Edtnilai1: TEdit;
    Edtnilai2: TEdit;
    Edthasil: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
Edthasil.Text:=IntToStr(StrToInt(Edtnilai1.text)+strtoint(Edtnilai2.Text));
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
close;
//application.Terminate;
end;

end.
