object Form7: TForm7
  Left = 28
  Top = 12
  BorderStyle = bsToolWindow
  Caption = '���� ������'
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
    Caption = '������ ���� ������� ������ '
    Enabled = False
  end
  object Label2: TLabel
    Left = 551
    Top = 64
    Width = 161
    Height = 13
    Caption = '������ ���� ��������� ������'
    Enabled = False
  end
  object Label3: TLabel
    Left = 608
    Top = 104
    Width = 49
    Height = 13
    Caption = '(�������)'
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
    Caption = '�������� ������ �� ������� �������'
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 273
      Height = 17
      Caption = '������ ��� ������������� ������'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 48
      Width = 273
      Height = 17
      Caption = '������ �� �������� ����� ��� �, �, �'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 72
      Width = 233
      Height = 17
      Caption = '������ ��� �����������'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 96
      Width = 289
      Height = 17
      Caption = '������ ��� ��� ������ ��������� ���'
      TabOrder = 3
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 376
    Top = 8
    Width = 145
    Height = 97
    Caption = '������� ��'
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object DTP2: TDateTimePicker
    Left = 591
    Top = 80
    Width = 81
    Height = 21
    Hint = '���� ��������� ������. �������.'
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
    Caption = '�������'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 640
    Top = 480
    Width = 75
    Height = 25
    Caption = '�����'
    TabOrder = 6
    OnClick = Button2Click
  end
  object RadioGroup2: TRadioGroup
    Left = 376
    Top = 112
    Width = 145
    Height = 393
    Caption = '������� �����'
    ItemIndex = 0
    Items.Strings = (
      'ѳ����'
      '�����'
      '��������'
      '������'
      '�������'
      '�������'
      '������'
      '�������'
      '��������'
      '�������'
      '��������'
      '�������'
      '1-� �������'
      '2-� �������'
      '3-� �������'
      '4-� �������'
      '1-�� ������'
      '2-�� ������'
      'г�'
      '� ������� ����')
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
end
