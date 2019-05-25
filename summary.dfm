object summary_form: Tsummary_form
  Left = 0
  Top = 0
  Caption = 'Z'#225'v'#283'r | Webgen'
  ClientHeight = 390
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 60
    Top = 54
    Width = 33
    Height = 13
    Caption = 'Jazyk:'
  end
  object Label6: TLabel
    Left = 8
    Top = 73
    Width = 87
    Height = 13
    Caption = 'Barevn'#233' schema:'
  end
  object Label7: TLabel
    Left = 55
    Top = 92
    Width = 37
    Height = 13
    Caption = #268'l'#225'nky:'
  end
  object languageLbl: TLabel
    Left = 112
    Top = 54
    Width = 121
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object colorSchemeLbl: TLabel
    Left = 112
    Top = 73
    Width = 121
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 5656832
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 125
      Top = 9
      Width = 31
      Height = 19
      Caption = 'GEN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 86
      Top = 9
      Width = 33
      Height = 19
      Caption = 'WEB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object aboutProgramBtn: TButton
    Left = 167
    Top = 356
    Width = 75
    Height = 25
    Caption = 'O programu'
    TabOrder = 1
    OnClick = aboutProgramBtnClick
  end
  object closeBtn: TButton
    Left = 86
    Top = 356
    Width = 75
    Height = 25
    Caption = 'Konec'
    TabOrder = 2
    OnClick = closeBtnClick
  end
  object backBtn: TButton
    Left = 5
    Top = 356
    Width = 75
    Height = 25
    Caption = 'Zp'#283't'
    TabOrder = 3
    OnClick = backBtnClick
  end
  object clankyMemo: TMemo
    Left = 112
    Top = 92
    Width = 130
    Height = 117
    TabOrder = 4
  end
  object saveBtn: TButton
    Left = 41
    Top = 240
    Width = 175
    Height = 41
    Caption = 'Ulo'#382'it str'#225'nku'
    Style = bsCommandLink
    TabOrder = 5
    OnClick = saveBtnClick
  end
  object Button1: TButton
    Left = 86
    Top = 303
    Width = 75
    Height = 25
    Caption = 'Zobrazit k'#243'd'
    TabOrder = 6
    OnClick = Button1Click
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.html'
    FileName = 'index.html'
    Filter = 'Webov'#233' str'#225'nky|.html|Dynamick'#233' webov'#233' str'#225'nky|.php'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 16
    Top = 184
  end
end
