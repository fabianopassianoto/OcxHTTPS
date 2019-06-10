object FrmExemploHTTPS: TFrmExemploHTTPS
  Left = 0
  Top = 0
  Caption = 'Comunicar HTTPS'
  ClientHeight = 299
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 546
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 52
      Width = 19
      Height = 13
      Caption = 'URL'
    end
    object Label2: TLabel
      Left = 5
      Top = 94
      Width = 67
      Height = 13
      Caption = 'Arquivo/JSON'
    end
    object Button2: TButton
      Left = 8
      Top = 8
      Width = 97
      Height = 33
      Caption = 'GET Executar Indy'
      TabOrder = 0
      OnClick = Button2Click
    end
    object EdURL: TEdit
      Left = 3
      Top = 68
      Width = 534
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 111
      Top = 8
      Width = 97
      Height = 33
      Caption = 'PUT Executar Indy'
      TabOrder = 2
      OnClick = Button1Click
    end
    object EdArquivo: TEdit
      Left = 3
      Top = 110
      Width = 534
      Height = 21
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 546
    Height = 162
    Align = alClient
    TabOrder = 1
    object MnResultado: TMemo
      Left = 1
      Top = 1
      Width = 544
      Height = 160
      Align = alClient
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object spdHTTPSX: TspdHTTPSX
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 480
    Top = 24
  end
end
