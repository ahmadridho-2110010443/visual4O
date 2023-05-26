program praktek_mandiri_4update;

uses
  Forms,
  mandiri4update in 'mandiri4update.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
