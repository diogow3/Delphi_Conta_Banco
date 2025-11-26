program Conta_Banco;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {Form1},
  UnitContaBancaria in 'UnitContaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
