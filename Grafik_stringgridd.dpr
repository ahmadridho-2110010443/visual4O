program Grafik_stringgridd;

uses
  Forms,
  grafik_stringgrid in 'grafik_stringgrid.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
