program praktek_mandiri_3;

uses
  Forms,
  mandiri3 in 'mandiri3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
