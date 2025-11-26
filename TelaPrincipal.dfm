object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 900
  ClientWidth = 652
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
    Width = 585
    Height = 337
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
      Top = 144
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
    object Edit1: TEdit
      Left = 112
      Top = 37
      Width = 409
      Height = 33
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 112
      Top = 144
      Width = 409
      Height = 33
      TabOrder = 1
    end
    object Button1: TButton
      Left = 376
      Top = 264
      Width = 137
      Height = 25
      Caption = 'Criar Conta'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 366
    Width = 585
    Height = 265
    Caption = 'Opera'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edit3: TEdit
      Left = 24
      Top = 64
      Width = 201
      Height = 33
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 24
      Top = 144
      Width = 201
      Height = 33
      TabOrder = 1
    end
    object Button2: TButton
      Left = 376
      Top = 72
      Width = 137
      Height = 25
      Caption = 'Depositar'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 376
      Top = 152
      Width = 137
      Height = 25
      Caption = 'Sacar'
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 32
    Top = 672
    Width = 585
    Height = 177
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Edit5: TEdit
      Left = 24
      Top = 80
      Width = 201
      Height = 33
      TabOrder = 0
    end
    object Button4: TButton
      Left = 376
      Top = 88
      Width = 137
      Height = 25
      Caption = 'Ver Saldo'
      TabOrder = 1
    end
  end
end
