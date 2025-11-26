program Conta_Banco;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {frmTelaPrincipal},
  UnitContaBancaria in 'UnitContaBancaria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.Run;
end.
