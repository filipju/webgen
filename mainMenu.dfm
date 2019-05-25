object mainMenu_form: TmainMenu_form
  Left = 0
  Top = 0
  Caption = 'Webgen'
  ClientHeight = 390
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 47
    Top = 16
    Width = 76
    Height = 44
    Caption = 'WEB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5656832
    Font.Height = -37
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 125
    Top = 16
    Width = 72
    Height = 44
    Caption = 'GEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5656832
    Font.Height = -37
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object newSiteBtn: TButton
    Left = 57
    Top = 128
    Width = 143
    Height = 41
    Caption = 'Nov'#225' str'#225'nka'
    Style = bsCommandLink
    TabOrder = 0
    OnClick = newSiteBtnClick
  end
  object endBtn: TButton
    Left = 44
    Top = 357
    Width = 75
    Height = 25
    Caption = 'Konec'
    TabOrder = 1
    OnClick = endBtnClick
  end
  object aboutProgramBtn: TButton
    Left = 125
    Top = 357
    Width = 75
    Height = 25
    Caption = 'O programu'
    TabOrder = 2
    OnClick = aboutProgramBtnClick
  end
end
