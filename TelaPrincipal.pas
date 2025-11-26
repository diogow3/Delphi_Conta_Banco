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
    btnSaldo: TButton;
    procedure btnCriarContaClick(Sender: TObject);
    procedure btnSaldoClick(Sender: TObject);
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
end;

procedure TfrmTelaPrincipal.btnDepositarClick(Sender: TObject);
begin
  Conta.Depositar(StrToFloat(edtDepositar.Text));
end;

procedure TfrmTelaPrincipal.btnSacarClick(Sender: TObject);
begin
  Conta.Sacar(StrToFloat(edtSacar.Text));
end;

procedure TfrmTelaPrincipal.btnSaldoClick(Sender: TObject);
begin
  edtSaldo.Text := Conta.Saldo.ToString;
end;

procedure TfrmTelaPrincipal.FormDestroy(Sender: TObject);
begin
  Conta.Free;
end;

end.
