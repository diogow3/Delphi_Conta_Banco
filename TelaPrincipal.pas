unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitContaBancaria;

type
  TfrmTelaPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edtNumero: TEdit;
    edtTitular: TEdit;
    btnCriarConta: TButton;
    edtDepositar: TEdit;
    edtSacar: TEdit;
    btnDepositar: TButton;
    btnSacar: TButton;
    edtSaldo: TEdit;
    lblSaldo: TLabel;
    procedure btnCriarContaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;
  Conta: TContaBancaria;

implementation

{$R *.dfm}

procedure TfrmTelaPrincipal.btnCriarContaClick(Sender: TObject);
begin
  Conta:= TContaBancaria.Create;
  Conta.Numero:= StrToInt(edtNumero.Text);
  Conta.Titular:= edtTitular.Text;
  edtSaldo.Text := Conta.Saldo.ToString;
  ShowMessage('Conta - Titular: ' + Conta.Titular + ' Numero: ' + Conta.Numero.ToString + ' Criada');
end;

procedure TfrmTelaPrincipal.btnDepositarClick(Sender: TObject);
begin
  try
    Conta.Depositar(StrToFloat(edtDepositar.Text));
    edtSaldo.Text := Conta.Saldo.ToString;
  except
    on E: EConvertError do
      ShowMessage('Digite um valor numérico');
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfrmTelaPrincipal.btnSacarClick(Sender: TObject);
begin
    try
    Conta.Sacar(StrToFloat(edtSacar.Text));
    edtSaldo.Text := Conta.Saldo.ToString;
  except
    on E: EConvertError do
      ShowMessage('Digite um valor numérico');
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TfrmTelaPrincipal.FormDestroy(Sender: TObject);
begin
  Conta.Free;
end;

end.
