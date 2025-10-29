program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  md5 in 'md5.pas' {md5Form};

// RouteService in 'RouteService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tmd5Form, md5Form);
  Application.Run;
end.
