program xrr;

{$MODE Delphi}

uses
  Forms, Interfaces,
  mainform {Form1},
  modify in 'modify.pas' {Form3},
  hiddensetting {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'X';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
