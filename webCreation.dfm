object webCreation_form: TwebCreation_form
  Left = 0
  Top = 0
  Caption = 'Z'#225'kladn'#237' '#250'daje | Webgen'
  ClientHeight = 435
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 66
    Height = 13
    Caption = 'Jm'#233'no webu:'
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 72
    Height = 13
    Caption = 'Jm'#233'no autora:'
  end
  object Label5: TLabel
    Left = 8
    Top = 176
    Width = 62
    Height = 13
    Caption = 'Jazyk webu:'
  end
  object Label6: TLabel
    Left = 8
    Top = 232
    Width = 87
    Height = 13
    Caption = 'Barevn'#233' sch'#233'ma:'
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
  object websiteNameEdit: TEdit
    Left = 8
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object authorNameEdit: TEdit
    Left = 8
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object languageCmb: TComboBox
    Left = 8
    Top = 195
    Width = 72
    Height = 21
    TabOrder = 3
    Text = #268'esky'
    Items.Strings = (
      #268'esk'#253
      'Anglick'#253)
  end
  object colorSchemeCmb: TComboBox
    Left = 8
    Top = 251
    Width = 87
    Height = 21
    TabOrder = 4
    Text = 'Modr'#233
    Items.Strings = (
      'Modr'#233
      #381'lut'#233
      'Zelen'#233
      #268'erven'#233)
  end
  object addContentBtn: TButton
    Left = 33
    Top = 304
    Width = 184
    Height = 65
    Caption = 'Potvrdit a p'#345'idat obsah'
    Style = bsCommandLink
    TabOrder = 5
    OnClick = addContentBtnClick
  end
  object backBtn: TButton
    Left = 8
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Zp'#283't'
    TabOrder = 6
    TabStop = False
    OnClick = backBtnClick
  end
  object aboutProgramBtn: TButton
    Left = 170
    Top = 400
    Width = 75
    Height = 25
    Caption = 'O programu'
    TabOrder = 7
    TabStop = False
    OnClick = aboutProgramBtnClick
  end
  object closeBtn: TButton
    Left = 89
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Konec'
    TabOrder = 8
    TabStop = False
    OnClick = closeBtnClick
  end
end
