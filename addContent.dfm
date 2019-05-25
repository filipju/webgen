object addContent_form: TaddContent_form
  Left = 0
  Top = 0
  Caption = 'P'#345'idat obsah | Webgen'
  ClientHeight = 419
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 53
    Width = 38
    Height = 13
    Caption = 'Nadpis:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 26
    Height = 13
    Caption = 'Text:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 5656832
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 250
    object Label1: TLabel
      Left = 221
      Top = 6
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
      Left = 182
      Top = 6
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
  object nadpisEdit: TEdit
    Left = 16
    Top = 72
    Width = 297
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object backBtn: TButton
    Left = 16
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Zp'#283't'
    TabOrder = 5
    TabStop = False
    OnClick = backBtnClick
  end
  object closeBtn: TButton
    Left = 182
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Konec'
    TabOrder = 6
    TabStop = False
    OnClick = closeBtnClick
  end
  object aboutProgramBtn: TButton
    Left = 364
    Top = 376
    Width = 75
    Height = 25
    Caption = 'O programu'
    TabOrder = 7
    TabStop = False
    OnClick = aboutProgramBtnClick
  end
  object doneBtn: TButton
    Left = 138
    Top = 302
    Width = 175
    Height = 41
    Caption = 'Dokon'#269'it str'#225'nku'
    Style = bsCommandLink
    TabOrder = 4
    OnClick = doneBtnClick
  end
  object addContentBtn: TButton
    Left = 174
    Top = 256
    Width = 99
    Height = 25
    Caption = 'P'#345'idat obsah'
    TabOrder = 3
    OnClick = addContentBtnClick
  end
  object odstavecMemo: TMemo
    Left = 16
    Top = 131
    Width = 345
    Height = 89
    TabOrder = 2
  end
end
