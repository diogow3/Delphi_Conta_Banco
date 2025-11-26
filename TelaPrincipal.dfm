object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 693
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 32
    Top = 23
    Width = 561
    Height = 226
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 40
      Width = 73
      Height = 25
      Caption = 'N'#250'mero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 104
      Width = 58
      Height = 25
      Caption = 'Titular:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtNumero: TEdit
      Left = 112
      Top = 37
      Width = 409
      Height = 33
      TabOrder = 0
    end
    object edtTitular: TEdit
      Left = 112
      Top = 101
      Width = 409
      Height = 33
      TabOrder = 1
    end
    object btnCriarConta: TButton
      Left = 376
      Top = 168
      Width = 137
      Height = 25
      Caption = 'Criar Conta'
      TabOrder = 2
      OnClick = btnCriarContaClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 255
    Width = 561
    Height = 178
    Caption = 'Opera'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object edtDepositar: TEdit
      Left = 24
      Top = 40
      Width = 201
      Height = 33
      TabOrder = 0
    end
    object edtSacar: TEdit
      Left = 24
      Top = 104
      Width = 201
      Height = 33
      TabOrder = 1
    end
    object btnDepositar: TButton
      Left = 376
      Top = 40
      Width = 137
      Height = 25
      Caption = 'Depositar'
      TabOrder = 2
    end
    object btnSacar: TButton
      Left = 376
      Top = 96
      Width = 137
      Height = 25
      Caption = 'Sacar'
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 456
    Width = 561
    Height = 177
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object edtSaldo: TEdit
      Left = 24
      Top = 48
      Width = 201
      Height = 33
      TabOrder = 0
    end
    object btnSaldo: TButton
      Left = 376
      Top = 56
      Width = 137
      Height = 25
      Caption = 'Ver Saldo'
      TabOrder = 1
      OnClick = btnSaldoClick
    end
  end
end
