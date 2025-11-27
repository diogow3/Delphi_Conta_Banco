unit UnitContaBancaria;

interface

uses
  System.SysUtils;

type
  TContaBancaria = class
    private
      FNumero: integer;
      FTitular: String;
      FSaldo: Double;

      // getters setters
      procedure SetNumero(numero: integer);
      function GetNumero: integer;

      procedure SetTitular(titular: String);
      function GetTitular: String;

      function GetSaldo: Double;

    public
      // properties
      property Numero: integer read GetNumero write SetNumero;
      property Titular: String read GetTitular write SetTitular;
      property Saldo: Double read GetSaldo;

      // métodos
      procedure Depositar(Valor: Double);
      procedure Sacar(Valor: Double);
      function ExibirSaldo: Double;

      constructor Create;

  end;

implementation

{ TContaBancaria }

constructor TContaBancaria.Create;
begin
  inherited;
  FSaldo:= 0;
end;

procedure TContaBancaria.Depositar(Valor: Double);
begin
  if Valor >= 0 then
    FSaldo:= FSaldo + Valor
  else
    raise Exception.Create('O Valor deve ser positivo');
end;

function TContaBancaria.ExibirSaldo: Double;
begin
  result:= Saldo;
end;

function TContaBancaria.GetNumero: integer;
begin
  result:= FNumero;
end;

function TContaBancaria.GetSaldo: Double;
begin
  result:= FSaldo;
end;

function TContaBancaria.GetTitular: String;
begin
  result:= FTitular;
end;

procedure TContaBancaria.Sacar(Valor: Double);
begin
  if Valor < 0 then
    raise Exception.Create('O valor deve ser positivo');

  if Valor < Saldo then
    FSaldo:= FSaldo - Valor
  else
    raise Exception.Create('O Valor deve ser igual ou menor que o saldo');
end;

procedure TContaBancaria.SetNumero(numero: integer);
begin
  FNumero := numero;
end;

procedure TContaBancaria.SetTitular(titular: String);
begin
  FTitular:= titular;
end;

end.
