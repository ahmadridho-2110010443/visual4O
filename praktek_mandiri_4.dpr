program praktek_mandiri_4;

uses
  Forms,
  mandiri4 in 'mandiri4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
