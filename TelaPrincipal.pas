unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnitContaBancaria;

type
  TForm1 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Conta: TContaBancaria;

implementation

{$R *.dfm}

procedure TForm1.btnCriarContaClick(Sender: TObject);
begin
  Conta:= TContaBancaria.Create;

  try
    Conta.Numero:= StrToInt(edtNumero.Text);
    Conta.Titular:= edtTitular.Text;
  finally
    Conta.Free;
  end;
end;

procedure TForm1.btnSaldoClick(Sender: TObject);
begin
  edtSaldo.Text:= FloatToStr(Conta.Saldo);
end;

end.
