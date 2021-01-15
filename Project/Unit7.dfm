object Form7: TForm7
  Left = 28
  Top = 12
  BorderStyle = bsToolWindow
  Caption = 'Вибір довідок'
  ClientHeight = 519
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 559
    Top = 8
    Width = 148
    Height = 13
    Caption = 'Введіть дату початку періоду '
    Enabled = False
  end
  object Label2: TLabel
    Left = 551
    Top = 64
    Width = 161
    Height = 13
    Caption = 'Введіть дату закінчення періоду'
    Enabled = False
  end
  object Label3: TLabel
    Left = 608
    Top = 104
    Width = 49
    Height = 13
    Caption = '(включно)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DTP1: TDateTimePicker
    Left = 591
    Top = 24
    Width = 81
    Height = 21
    CalAlignment = dtaLeft
    Date = 37321.6593505787
    Time = 37321.6593505787
    DateFormat = dfShort
    DateMode = dmComboBox
    Enabled = False
    Kind = dtkDate
    ParseInput = False
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 329
    Height = 497
    Caption = 'Позначте довідки які потрібно вивести'
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 273
      Height = 17
      Caption = 'Довідки для диспетчерської години'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 48
      Width = 273
      Height = 17
      Caption = 'Довідки по рейковим колам для Ш, П, Е'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 72
      Width = 233
      Height = 17
      Caption = 'Довідки для Укрзалізниці'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 96
      Width = 289
      Height = 17
      Caption = 'Зведені дані про відмови апаратури СЦБ'
      TabOrder = 3
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 376
    Top = 8
    Width = 145
    Height = 97
    Caption = 'Виберіть рік'
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object DTP2: TDateTimePicker
    Left = 591
    Top = 80
    Width = 81
    Height = 21
    Hint = 'Дата закінчення періоду. Включно.'
    CalAlignment = dtaLeft
    Date = 37321.6698938657
    Time = 37321.6698938657
    DateFormat = dfShort
    DateMode = dmComboBox
    Enabled = False
    Kind = dtkDate
    ParseInput = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object Button1: TButton
    Left = 640
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Вивести'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Вихід'
    TabOrder = 6
    OnClick = Button2Click
  end
  object RadioGroup2: TRadioGroup
    Left = 376
    Top = 112
    Width = 145
    Height = 393
    Caption = 'Виберіть період'
    ItemIndex = 0
    Items.Strings = (
      'Січень'
      'Лютий'
      'Березень'
      'Квітень'
      'Травень'
      'Червень'
      'Липень'
      'Серпень'
      'Вересень'
      'Жовтень'
      'Листопад'
      'Грудень'
      '1-й квартал'
      '2-й квартал'
      '3-й квартал'
      '4-й квартал'
      '1-ше півріччя'
      '2-ге півріччя'
      'Рік'
      'З початку року')
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
end
