program praktek_mandiri_2;

uses
  Forms,
  praktik_kondisional in 'praktik_kondisional.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
