object Form3: TForm3
  Left = 203
  Top = 35
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Картка відмови'
  ClientHeight = 553
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu3
  PrintScale = poPrintToFit
  WindowState = wsMaximized
  OnActivate = FormShow
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = DateTimePicker4Change
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 424
    Top = 192
    Width = 40
    Height = 13
    Caption = 'Номер'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label53: TLabel
    Left = 276
    Top = 16
    Width = 111
    Height = 13
    Caption = 'КАРТКА ВІДМОВИ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label54: TLabel
    Left = 400
    Top = 16
    Width = 13
    Height = 13
    Caption = '№'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label55: TLabel
    Left = 24
    Top = 80
    Width = 54
    Height = 13
    Caption = 'Початок:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label56: TLabel
    Left = 24
    Top = 112
    Width = 44
    Height = 13
    Caption = 'Кінець:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label61: TLabel
    Left = 24
    Top = 184
    Width = 39
    Height = 13
    Caption = 'Місце:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label57: TLabel
    Left = 384
    Top = 80
    Width = 71
    Height = 13
    Caption = 'Тривалість:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label58: TLabel
    Left = 384
    Top = 112
    Width = 93
    Height = 13
    Caption = 'Дистанція: ШЧ-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label60: TLabel
    Left = 544
    Top = 112
    Width = 56
    Height = 13
    Caption = 'Система:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label59: TLabel
    Left = 544
    Top = 80
    Width = 49
    Height = 13
    Caption = 'Служба:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 544
    Top = 272
    Width = 49
    Height = 13
    Caption = 'причини'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label64: TLabel
    Left = 544
    Top = 256
    Width = 30
    Height = 13
    Caption = 'Клас'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 600
    Top = 224
    Width = 94
    Height = 13
    Caption = 'Дата перевірки'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 600
    Top = 200
    Width = 70
    Height = 13
    Caption = 'Рік випуску'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 600
    Top = 176
    Width = 92
    Height = 13
    Caption = 'Номер приладу'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label62: TLabel
    Left = 24
    Top = 216
    Width = 77
    Height = 13
    Caption = 'Проявлення:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label63: TLabel
    Left = 24
    Top = 264
    Width = 56
    Height = 13
    Caption = 'Елемент:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel7: TBevel
    Left = 24
    Top = 328
    Width = 193
    Height = 113
    Style = bsRaised
  end
  object Label66: TLabel
    Left = 56
    Top = 344
    Width = 68
    Height = 13
    Caption = 'З проїздом'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label67: TLabel
    Left = 56
    Top = 368
    Width = 72
    Height = 13
    Caption = 'Без проїзду'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label68: TLabel
    Left = 56
    Top = 392
    Width = 59
    Height = 13
    Caption = 'Рух за ЗС'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label69: TLabel
    Left = 56
    Top = 415
    Width = 56
    Height = 13
    Caption = 'Закриття'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label65: TLabel
    Left = 24
    Top = 312
    Width = 59
    Height = 13
    Caption = 'Наслідки:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label74: TLabel
    Left = 544
    Top = 312
    Width = 139
    Height = 13
    Caption = 'Інциденти і порушення:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel9: TBevel
    Left = 544
    Top = 328
    Width = 233
    Height = 113
    Style = bsRaised
  end
  object Label83: TLabel
    Left = 544
    Top = 447
    Width = 209
    Height = 13
    Caption = 'Примітка до інциденту/порушення:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label81: TLabel
    Left = 24
    Top = 447
    Width = 60
    Height = 13
    Caption = 'Примітка:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 544
    Top = 496
    Width = 136
    Height = 13
    Caption = 'Примітка до закриття:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 248
    Top = 232
    Width = 55
    Height = 13
    Caption = 'Причина:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label70: TLabel
    Left = 248
    Top = 312
    Width = 109
    Height = 13
    Caption = 'Затримки поїздів:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label80: TLabel
    Left = 416
    Top = 392
    Width = 38
    Height = 13
    Caption = 'шт. на'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label79: TLabel
    Left = 416
    Top = 368
    Width = 38
    Height = 13
    Caption = 'шт. на'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label78: TLabel
    Left = 416
    Top = 344
    Width = 38
    Height = 13
    Caption = 'шт. на'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label73: TLabel
    Left = 272
    Top = 392
    Width = 65
    Height = 13
    Caption = 'Вантажних'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label72: TLabel
    Left = 272
    Top = 368
    Width = 70
    Height = 13
    Caption = 'Приміських'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label71: TLabel
    Left = 272
    Top = 344
    Width = 88
    Height = 13
    Caption = 'Пасажирських'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 284
    Top = 45
    Width = 111
    Height = 13
    Caption = 'КАРТКА ВІДМОВИ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 408
    Top = 45
    Width = 13
    Height = 13
    Caption = '№'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 384
    Top = 144
    Width = 92
    Height = 13
    Caption = 'Дистанція: ПЧ-'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 24
    Top = 144
    Width = 49
    Height = 13
    Caption = 'Переїзд'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 248
    Top = 448
    Width = 249
    Height = 13
    Caption = 'Опис інцидентів, затримок поїздів, ППВР'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 472
    Top = 192
    Width = 61
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel8: TBevel
    Left = 248
    Top = 328
    Width = 281
    Height = 113
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 0
    Top = 32
    Width = 801
    Height = 9
    Shape = bsTopLine
  end
  object ListBox1: TListBox
    Left = 248
    Top = 251
    Width = 281
    Height = 190
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 22
    Visible = False
    OnDblClick = ListBox1DblClick
    OnExit = ListBox1Exit
    OnKeyDown = ListBox1KeyDown
  end
  object Edit17: TEdit
    Left = 168
    Top = 40
    Width = 65
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 46
    OnClick = Edit17Click
    OnDblClick = Edit17DblClick
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 800
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 94
    Caption = 'ToolBar2'
    Color = clBtnFace
    ParentColor = False
    ShowCaptions = True
    TabOrder = 43
    OnMouseMove = ToolBar2MouseMove
    object ToolButton15: TToolButton
      Left = 0
      Top = 2
      Hint = 'Внесення даних у базу даних'
      Caption = 'Внесення даних'
      ImageIndex = 0
      OnClick = ToolButton15Click
    end
    object ToolButton16: TToolButton
      Left = 94
      Top = 2
      Caption = 'Зміна даних'
      Enabled = False
      ImageIndex = 1
      OnClick = ToolButton16Click
    end
    object ToolButton17: TToolButton
      Left = 188
      Top = 2
      Caption = 'Видалення даних'
      Enabled = False
      ImageIndex = 2
      OnClick = ToolButton17Click
    end
    object ToolButton1: TToolButton
      Left = 282
      Top = 2
      Caption = 'Нова картка'
      Enabled = False
      ImageIndex = 4
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 376
      Top = 2
      Hint = 'Вставити картку під номером ...'
      Caption = 'Вставити картку'
      ImageIndex = 4
      OnClick = ToolButton2Click
    end
    object DateTimePicker4: TDateTimePicker
      Left = 470
      Top = 2
      Width = 83
      Height = 21
      Hint = 'Вибір місяця і року.'#13#10'Номер дня не має значення.'
      CalAlignment = dtaLeft
      Date = 37211.5814351852
      Time = 37211.5814351852
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      MinDate = 36892
      ParseInput = False
      TabOrder = 0
      TabStop = False
      OnChange = DTP4Change
    end
    object DBNavigator1: TDBNavigator
      Left = 553
      Top = 2
      Width = 152
      Height = 21
      Hint = 'Переміщення по карткам відмови'
      DataSource = DM2.DSOtkaz
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Hints.Strings = (
        'Перший запис'
        'Попередній запис'
        'Наступний запис'
        'Останній запис'
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 1
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object ToolButton18: TToolButton
      Left = 705
      Top = 2
      Hint = 'Вихід з програми'
      Caption = 'Вихід'
      ImageIndex = 3
      OnClick = ToolButton18Click
    end
  end
  object DateTimePicker12: TDateTimePicker
    Left = 80
    Top = 72
    Width = 73
    Height = 21
    Hint = 
      'Дата початку відмови.'#13#10'Вибір тільки дня.'#13#10'Місяць і рік не змінюю' +
      'ться.'
    CalAlignment = dtaLeft
    Date = 37162.3577689815
    Time = 37162.3577689815
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 0
    OnChange = DateTimePicker12Change
    OnExit = DateTimePicker12Exit
  end
  object MaskEdit9: TMaskEdit
    Left = 160
    Top = 104
    Width = 41
    Height = 21
    Hint = 'Час закінчення відмови'
    EditMask = '!99:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 3
    Text = '  :  '
    OnExit = MaskEdit9Exit
    OnKeyDown = MaskEdit9KeyDown
  end
  object MaskEdit8: TMaskEdit
    Left = 160
    Top = 72
    Width = 41
    Height = 21
    Hint = 'Час початку відмови'
    EditMask = '!99:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 2
    Text = '  :  '
    OnExit = MaskEdit8Exit
    OnKeyDown = MaskEdit8KeyDown
  end
  object Button1: TButton
    Left = 208
    Top = 80
    Width = 41
    Height = 41
    Hint = 'Кнопка для вводу введення повторної появи відмови.'
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object DateTimePicker3: TDateTimePicker
    Left = 256
    Top = 104
    Width = 73
    Height = 21
    Hint = 'Дата закінчення повторної появи відмови.'
    CalAlignment = dtaLeft
    Date = 37179.5607771991
    Time = 37179.5607771991
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 6
  end
  object DateTimePicker2: TDateTimePicker
    Left = 256
    Top = 72
    Width = 73
    Height = 21
    Hint = 'Дата повторної появи'
    CalAlignment = dtaLeft
    Date = 37179.5607084491
    Time = 37179.5607084491
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 5
  end
  object MaskEdit10: TMaskEdit
    Left = 336
    Top = 72
    Width = 41
    Height = 21
    Hint = 'Час повторної появи'
    Enabled = False
    EditMask = '!99:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 7
    Text = '  :  '
    OnExit = MaskEdit10Exit
    OnKeyDown = MaskEdit10KeyDown
  end
  object MaskEdit11: TMaskEdit
    Left = 336
    Top = 104
    Width = 41
    Height = 21
    Hint = 'Час закінчення повторної появи відмови.'
    Enabled = False
    EditMask = '!99:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentFont = False
    TabOrder = 8
    Text = '  :  '
    OnExit = MaskEdit11Exit
    OnKeyDown = MaskEdit11KeyDown
  end
  object Edit20: TEdit
    Left = 480
    Top = 72
    Width = 49
    Height = 21
    TabStop = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 45
  end
  object ComboBox4: TComboBox
    Left = 480
    Top = 104
    Width = 49
    Height = 21
    Hint = 'Дистанція на якій була відмова.'
    DropDownCount = 14
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 9
    OnExit = ComboBox4Exit
  end
  object ComboBox2: TComboBox
    Left = 600
    Top = 72
    Width = 177
    Height = 21
    Hint = 'Служба за якою віднесено відмову.'
    Style = csDropDownList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 10
    OnChange = ComboBox2Change
    OnExit = ComboBox2Exit
  end
  object ComboBox3: TComboBox
    Left = 600
    Top = 104
    Width = 177
    Height = 21
    Style = csDropDownList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 11
    OnChange = ComboBox3Change
    OnExit = ComboBox3Exit
  end
  object Edit2: TEdit
    Left = 704
    Top = 168
    Width = 73
    Height = 21
    Hint = 'Номер приладу який вийшов з ладу.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
    OnExit = Edit2Exit
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 704
    Top = 192
    Width = 73
    Height = 21
    Hint = 'Рік випуску приладу.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    OnExit = Edit3Exit
    OnKeyPress = Edit3KeyPress
  end
  object DateTimePicker1: TDateTimePicker
    Left = 704
    Top = 216
    Width = 73
    Height = 21
    Hint = 
      'Дата перевірки приладу на КВП.'#13#10'Дата 01.01.01 означає, що дату'#13#10 +
      'не повідомлено.'
    CalAlignment = dtaLeft
    Date = 36892.5
    Time = 36892.5
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 25
    OnExit = DateTimePicker1Exit
  end
  object ComboBox9: TComboBox
    Left = 600
    Top = 248
    Width = 177
    Height = 21
    Hint = 'Клас причини за яким віднесено відмову'
    Style = csDropDownList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 26
    OnChange = ComboBox9Change
    OnExit = ComboBox9Exit
    Items.Strings = (
      '')
  end
  object ComboBox10: TComboBox
    Left = 600
    Top = 272
    Width = 177
    Height = 21
    Style = csDropDownList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 27
    OnChange = ComboBox10Change
    OnExit = ComboBox10Exit
    Items.Strings = (
      '')
  end
  object ComboBox5: TComboBox
    Left = 248
    Top = 176
    Width = 169
    Height = 21
    DropDownCount = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 17
    OnExit = ComboBox5Exit
    OnKeyPress = ComboBox5KeyPress
  end
  object ComboBox7: TComboBox
    Left = 104
    Top = 208
    Width = 313
    Height = 21
    Hint = 'Проявлення відмови'
    Style = csDropDownList
    DropDownCount = 16
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 18
    OnChange = ComboBox7Change
    OnExit = ComboBox7Exit
  end
  object ComboBox8: TComboBox
    Left = 24
    Top = 280
    Width = 193
    Height = 21
    Style = csDropDownList
    DropDownCount = 20
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 20
    OnChange = ComboBox8Change
    OnExit = ComboBox8Exit
  end
  object SpeedButton3: TBitBtn
    Left = 224
    Top = 248
    Width = 25
    Height = 57
    Hint = 'Кнопка для вибору причини.'
    TabOrder = 21
    OnClick = SpeedButton3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object Edit1: TEdit
    Left = 424
    Top = 208
    Width = 105
    Height = 21
    Hint = 'Номер стрілки, світлофора, рейкового кола.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    OnKeyPress = Edit1KeyPress
  end
  object Edit29: TEdit
    Left = 136
    Top = 407
    Width = 41
    Height = 21
    Hint = '1 якщо було закриття системи.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 31
    OnExit = Edit29Exit
    OnKeyPress = Edit29KeyPress
  end
  object Edit28: TEdit
    Left = 136
    Top = 384
    Width = 41
    Height = 21
    Hint = 
      'Кількість поїздів які були приняті/відправлені'#13#10'по запрошувально' +
      'му сигналу.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 30
    OnExit = Edit28Exit
    OnKeyPress = Edit28KeyPress
  end
  object Edit27: TEdit
    Left = 136
    Top = 360
    Width = 41
    Height = 21
    Hint = 'Перекриття сигналу без проїзду.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 29
    OnExit = Edit27Exit
    OnKeyPress = Edit27KeyPress
  end
  object Edit26: TEdit
    Left = 136
    Top = 336
    Width = 41
    Height = 21
    Hint = 'Перекриття сигналу з проїздом.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
    OnExit = Edit26Exit
    OnKeyPress = Edit26KeyPress
  end
  object GroupBox1: TGroupBox
    Left = 560
    Top = 336
    Width = 201
    Height = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 38
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Порушення'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Інцидент'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 64
      Width = 145
      Height = 17
      Caption = 'Серйозний інцидент'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
  object ComboBox1: TComboBox
    Left = 544
    Top = 463
    Width = 233
    Height = 21
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 41
    OnKeyPress = ComboBox1KeyPress
    Items.Strings = (
      '')
  end
  object Memo5: TMemo
    Left = 24
    Top = 464
    Width = 193
    Height = 73
    Hint = 'Примітка до відмови.'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 39
    OnKeyPress = Memo5KeyPress
  end
  object DateTimePicker13: TDateTimePicker
    Left = 80
    Top = 104
    Width = 73
    Height = 21
    Hint = 'Дата закінчення відмови'
    CalAlignment = dtaLeft
    Date = 37162.3578700231
    Time = 37162.3578700231
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 1
    OnExit = DateTimePicker13Exit
  end
  object RadioGroup1: TRadioGroup
    Left = 80
    Top = 128
    Width = 297
    Height = 41
    Enabled = False
    TabOrder = 13
  end
  object RadioButton1: TRadioButton
    Left = 88
    Top = 144
    Width = 89
    Height = 17
    Caption = 'на станції'
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 256
    Top = 144
    Width = 97
    Height = 17
    Caption = 'на перегоні'
    Checked = True
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    TabStop = True
    OnClick = RadioButton2Click
  end
  object MaskEdit6: TMaskEdit
    Left = 464
    Top = 360
    Width = 49
    Height = 21
    Hint = 'Час затримки.'
    EditMask = '!999:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 6
    ParentFont = False
    TabOrder = 35
    Text = '   :  '
    OnExit = MaskEdit6Exit
    OnKeyDown = MaskEdit6KeyDown
  end
  object MaskEdit7: TMaskEdit
    Left = 464
    Top = 384
    Width = 49
    Height = 21
    Hint = 'Час затримки.'
    EditMask = '!999:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 6
    ParentFont = False
    TabOrder = 37
    Text = '   :  '
    OnExit = MaskEdit7Exit
    OnKeyDown = MaskEdit7KeyDown
  end
  object ComboBox13: TComboBox
    Left = 544
    Top = 512
    Width = 233
    Height = 21
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 42
    OnKeyPress = ComboBox13KeyPress
    Items.Strings = (
      '')
  end
  object Edit4: TEdit
    Left = 424
    Top = 40
    Width = 49
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 44
  end
  object Memo3: TMemo
    Left = 248
    Top = 248
    Width = 281
    Height = 57
    TabStop = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 47
  end
  object Edit32: TEdit
    Left = 368
    Top = 384
    Width = 41
    Height = 21
    Hint = 'Кількість затриманих поїздів'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 36
    OnChange = Edit32Change
    OnExit = Edit32Exit
    OnKeyDown = Edit32KeyDown
  end
  object Edit31: TEdit
    Left = 368
    Top = 360
    Width = 41
    Height = 21
    Hint = 'Кількість затриманих поїздів'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 34
    OnChange = Edit31Change
    OnExit = Edit31Exit
    OnKeyDown = Edit31KeyDown
  end
  object Edit30: TEdit
    Left = 368
    Top = 336
    Width = 41
    Height = 21
    Hint = 'Кількість затриманих поїздів'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 32
    OnChange = Edit30Change
    OnExit = Edit30Exit
    OnKeyDown = Edit30KeyDown
  end
  object MaskEdit5: TMaskEdit
    Left = 464
    Top = 336
    Width = 49
    Height = 21
    Hint = 'Час затримки.'
    EditMask = '!999:99;1;_'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 6
    ParentFont = False
    TabOrder = 33
    Text = '   :  '
    OnExit = MaskEdit5Exit
    OnKeyDown = MaskEdit5KeyDown
  end
  object ComboBox11: TComboBox
    Left = 480
    Top = 136
    Width = 49
    Height = 21
    Style = csDropDownList
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 12
  end
  object Memo1: TMemo
    Left = 248
    Top = 464
    Width = 281
    Height = 73
    Hint = 
      'Примітка до порушень, інцидентів,'#13#10'затримок поїздів і порушень '#13 +
      #10'правил виконання робіт.'
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 40
    OnKeyPress = Memo1KeyPress
  end
  object ComboBox6: TComboBox
    Left = 80
    Top = 176
    Width = 169
    Height = 21
    DropDownCount = 25
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 16
    OnExit = ComboBox6Exit
    OnKeyPress = ComboBox6KeyPress
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 5
    Top = 31
    object N1: TMenuItem
      Caption = 'Реле'
      object N14: TMenuItem
        Caption = 'нейтральні'
        object N23: TMenuItem
          Caption = 'типу НМШ'
          object N110: TMenuItem
            Caption = 'НМШ1'
            object N14001: TMenuItem
              Caption = 'Реле НМШ1-400'
              OnClick = PopUpClick
            end
            object N15001: TMenuItem
              Caption = 'Реле НМШ1-500'
              OnClick = PopUpClick
            end
            object N114001: TMenuItem
              Caption = 'Реле НМШ1-1440'
              OnClick = PopUpClick
            end
            object N118001: TMenuItem
              Caption = 'Реле НМШ1-1800'
              OnClick = PopUpClick
            end
            object N120001: TMenuItem
              Caption = 'Реле НМШ1-2000'
              OnClick = PopUpClick
            end
            object N170001: TMenuItem
              Caption = 'Реле НМШ1-7000'
              OnClick = PopUpClick
            end
          end
          object N111: TMenuItem
            Caption = 'НМШМ1'
            object N1101: TMenuItem
              Caption = 'Реле НМШМ1-10'
              OnClick = PopUpClick
            end
            object N1111: TMenuItem
              Caption = 'Реле НМШМ1-11'
              OnClick = PopUpClick
            end
            object N1201: TMenuItem
              Caption = 'Реле НМШМ1-20'
              OnClick = PopUpClick
            end
            object N1221: TMenuItem
              Caption = 'Реле НМШМ1-22 '
              OnClick = PopUpClick
            end
            object N11801: TMenuItem
              Caption = 'Реле НМШМ1-180 '
              OnClick = PopUpClick
            end
            object N13601: TMenuItem
              Caption = 'Реле НМШМ1-360 '
              OnClick = PopUpClick
            end
            object N15601: TMenuItem
              Caption = 'Реле НМШМ1-560 '
              OnClick = PopUpClick
            end
            object N17001: TMenuItem
              Caption = 'Реле НМШМ1-700 '
              OnClick = PopUpClick
            end
            object N17501: TMenuItem
              Caption = 'Реле НМШМ1-750 '
              OnClick = PopUpClick
            end
            object N111201: TMenuItem
              Caption = 'Реле НМШМ1-1120 '
              OnClick = PopUpClick
            end
            object N114002: TMenuItem
              Caption = 'Реле НМШМ1-1400 '
              OnClick = PopUpClick
            end
            object N115001: TMenuItem
              Caption = 'Реле НМШМ1-1500 '
              OnClick = PopUpClick
            end
            object N110005601: TMenuItem
              Caption = 'Реле НМШМ1-1000/560'
              OnClick = PopUpClick
            end
            object N111007001: TMenuItem
              Caption = 'Реле НМШМ1-1100/700'
              OnClick = PopUpClick
            end
            object N113007501: TMenuItem
              Caption = 'Реле НМШМ1-1300/750'
              OnClick = PopUpClick
            end
          end
          object N210: TMenuItem
            Caption = 'НМШ2'
            object N29001: TMenuItem
              Caption = 'Реле НМШ2-900'
              OnClick = PopUpClick
            end
            object N212001: TMenuItem
              Caption = 'Реле НМШ2-1200'
              OnClick = PopUpClick
            end
            object N240001: TMenuItem
              Caption = 'Реле НМШ2-4000'
              OnClick = PopUpClick
            end
          end
          object N211: TMenuItem
            Caption = 'НМШМ2'
            object N2151: TMenuItem
              Caption = 'Реле НМШМ2-1.5'
              OnClick = PopUpClick
            end
            object N2171: TMenuItem
              Caption = 'Реле НМШМ2-1.7'
              OnClick = PopUpClick
            end
            object N23201: TMenuItem
              Caption = 'Реле НМШМ2-320'
              OnClick = PopUpClick
            end
            object N23501: TMenuItem
              Caption = 'Реле НМШМ2-350'
              OnClick = PopUpClick
            end
            object N26401: TMenuItem
              Caption = 'Реле НМШМ2-640'
              OnClick = PopUpClick
            end
            object N27001: TMenuItem
              Caption = 'Реле НМШМ2-700'
              OnClick = PopUpClick
            end
            object N215001: TMenuItem
              Caption = 'Реле НМШМ2-1500'
              OnClick = PopUpClick
            end
            object N217501: TMenuItem
              Caption = 'Реле НМШМ2-1750'
              OnClick = PopUpClick
            end
            object N230001: TMenuItem
              Caption = 'Реле НМШМ2-3000'
              OnClick = PopUpClick
            end
            object N235001: TMenuItem
              Caption = 'Реле НМШМ2-3500'
              OnClick = PopUpClick
            end
            object N21015001: TMenuItem
              Caption = 'Реле НМШМ2-10/1500'
              OnClick = PopUpClick
            end
            object N21017501: TMenuItem
              Caption = 'Реле НМШМ2-10/1750'
              OnClick = PopUpClick
            end
            object N21115001: TMenuItem
              Caption = 'Реле НМШМ2-11/1500'
              OnClick = PopUpClick
            end
          end
          object N32: TMenuItem
            Caption = 'НМШ3'
            object N32504001: TMenuItem
              Caption = 'Реле НМШ3-250/400'
              OnClick = PopUpClick
            end
            object N34604001: TMenuItem
              Caption = 'Реле НМШ3-460/400'
              OnClick = PopUpClick
            end
            object N35504001: TMenuItem
              Caption = 'Реле НМШ3-550/400'
              OnClick = PopUpClick
            end
          end
          object N41: TMenuItem
            Caption = 'НМШ4'
            object N431: TMenuItem
              Caption = 'Реле НМШ4-3'
              OnClick = PopUpClick
            end
            object N4341: TMenuItem
              Caption = 'Реле НМШ4-3.4'
              OnClick = PopUpClick
            end
            object N45301: TMenuItem
              Caption = 'Реле НМШ4-530'
              OnClick = PopUpClick
            end
            object N46001: TMenuItem
              Caption = 'Реле НМШ4-600'
              OnClick = PopUpClick
            end
            object N47201: TMenuItem
              Caption = 'Реле НМШ4-720'
              OnClick = PopUpClick
            end
            object N424001: TMenuItem
              Caption = 'Реле НМШ4-2400'
              OnClick = PopUpClick
            end
            object N430001: TMenuItem
              Caption = 'Реле НМШ4-3000'
              OnClick = PopUpClick
            end
          end
          object N42: TMenuItem
            Caption = 'НМШМ4'
            object N42501: TMenuItem
              Caption = 'Реле НМШМ4-250'
              OnClick = PopUpClick
            end
            object N42801: TMenuItem
              Caption = 'Реле НМШМ4-280'
              OnClick = PopUpClick
            end
            object N45001: TMenuItem
              Caption = 'Реле НМШМ4-500'
              OnClick = PopUpClick
            end
            object N45801: TMenuItem
              Caption = 'Реле НМШМ4-560'
              OnClick = PopUpClick
            end
            object N410011001: TMenuItem
              Caption = 'Реле НМШМ4-100/1100'
              OnClick = PopUpClick
            end
            object N410013001: TMenuItem
              Caption = 'Реле НМШМ4-100/1300'
              OnClick = PopUpClick
            end
            object N410510001: TMenuItem
              Caption = 'Реле НМШМ4-105/1000'
              OnClick = PopUpClick
            end
          end
        end
        object N24: TMenuItem
          Caption = 'типу АНШ'
          object N221: TMenuItem
            Caption = 'Реле АНШ2-2'
            OnClick = PopUpClick
          end
          object N2371: TMenuItem
            Caption = 'Реле АНШ2-37'
            OnClick = PopUpClick
          end
          object N2401: TMenuItem
            Caption = 'Реле АНШ2-40'
            OnClick = PopUpClick
          end
          object N25201: TMenuItem
            Caption = 'Реле АНШ2-520'
            OnClick = PopUpClick
          end
          object N27002: TMenuItem
            Caption = 'Реле АНШ2-700'
            OnClick = PopUpClick
          end
          object N212301: TMenuItem
            Caption = 'Реле АНШ2-1230'
            OnClick = PopUpClick
          end
          object N216001: TMenuItem
            Caption = 'Реле АНШ2-1600'
            OnClick = PopUpClick
          end
          object N33: TMenuItem
            Caption = '-'
          end
          object N23101: TMenuItem
            Caption = 'Реле АНШМ2-310'
            OnClick = PopUpClick
          end
          object N23801: TMenuItem
            Caption = 'Реле АНШМ2-380'
            OnClick = PopUpClick
          end
          object N26201: TMenuItem
            Caption = 'Реле АНШМ2-620'
            OnClick = PopUpClick
          end
          object N27601: TMenuItem
            Caption = 'Реле АНШМ2-760'
            OnClick = PopUpClick
          end
          object N34: TMenuItem
            Caption = '-'
          end
          object N516001: TMenuItem
            Caption = 'Реле АНШ5-1600'
            OnClick = PopUpClick
          end
        end
        object N25: TMenuItem
          Caption = 'типу НШ'
          object N1400301: TMenuItem
            Caption = 'Реле НШ1-400/30'
            OnClick = PopUpClick
          end
          object N18001: TMenuItem
            Caption = 'Реле НШ1-800'
            OnClick = PopUpClick
          end
          object N120002: TMenuItem
            Caption = 'Реле НШ1-2000'
            OnClick = PopUpClick
          end
          object N1200301: TMenuItem
            Caption = 'Реле НШ1М-200/30'
            OnClick = PopUpClick
          end
          object N12004001: TMenuItem
            Caption = 'Реле НШ1М-200/400'
            OnClick = PopUpClick
          end
          object N35: TMenuItem
            Caption = '-'
          end
          object N222: TMenuItem
            Caption = 'Реле НШ2-2'
            OnClick = PopUpClick
          end
          object N2402: TMenuItem
            Caption = 'Реле НШ2-40'
            OnClick = PopUpClick
          end
          object N24001: TMenuItem
            Caption = 'Реле НШ2-2000'
            OnClick = PopUpClick
          end
        end
        object N26: TMenuItem
          Caption = 'типу НР'
          object N121: TMenuItem
            Caption = 'Реле НР1-2'
            OnClick = PopUpClick
          end
          object N1401: TMenuItem
            Caption = 'Реле НР1-40'
            OnClick = PopUpClick
          end
          object N11101: TMenuItem
            Caption = 'Реле НР1-110'
            OnClick = PopUpClick
          end
          object N11871: TMenuItem
            Caption = 'Реле НР1-187'
            OnClick = PopUpClick
          end
          object N13752001: TMenuItem
            Caption = 'Реле НР1-375/200'
            OnClick = PopUpClick
          end
          object N14002: TMenuItem
            Caption = 'Реле НР1-400'
            OnClick = PopUpClick
          end
          object N17502: TMenuItem
            Caption = 'Реле НР1-750'
            OnClick = PopUpClick
          end
          object N36: TMenuItem
            Caption = '-'
          end
          object N223: TMenuItem
            Caption = 'Реле НР2-2'
            OnClick = PopUpClick
          end
          object N2403: TMenuItem
            Caption = 'Реле НР2-40'
            OnClick = PopUpClick
          end
          object N24501: TMenuItem
            Caption = 'Реле НР2-450/М'
            OnClick = PopUpClick
          end
          object N245011: TMenuItem
            Caption = 'Реле НР2-450/1'
            OnClick = PopUpClick
          end
          object N2450601: TMenuItem
            Caption = 'Реле НР2-450/60'
            OnClick = PopUpClick
          end
          object N250011: TMenuItem
            Caption = 'Реле НР2-500/1'
            OnClick = PopUpClick
          end
          object N29002: TMenuItem
            Caption = 'Реле НР2-900'
            OnClick = PopUpClick
          end
          object N210001: TMenuItem
            Caption = 'Реле НР2-1000'
            OnClick = PopUpClick
          end
          object N210002: TMenuItem
            Caption = 'Реле НР2А-1000'
            OnClick = PopUpClick
          end
          object N26010001: TMenuItem
            Caption = 'Реле НР2-60/1000'
            OnClick = PopUpClick
          end
          object N220001: TMenuItem
            Caption = 'Реле НР2-2000'
            OnClick = PopUpClick
          end
          object N2100100001: TMenuItem
            Caption = 'Реле НР2-100/10000'
            OnClick = PopUpClick
          end
          object N2330001: TMenuItem
            Caption = 'Реле НР2-33000'
            OnClick = PopUpClick
          end
          object N2640001: TMenuItem
            Caption = 'Реле НР2-64000'
            OnClick = PopUpClick
          end
        end
        object N27: TMenuItem
          Caption = 'типу РЕЛ'
          object N1681: TMenuItem
            Caption = 'Реле РЕЛ1-6.8'
            OnClick = PopUpClick
          end
          object N14003: TMenuItem
            Caption = 'Реле РЕЛ1-400'
            OnClick = PopUpClick
          end
          object N116001: TMenuItem
            Caption = 'Реле РЕЛ1-1600'
            OnClick = PopUpClick
          end
          object N38: TMenuItem
            Caption = '-'
          end
          object N152001: TMenuItem
            Caption = 'Реле РЕЛ1М-5/200'
            OnClick = PopUpClick
          end
          object N1102: TMenuItem
            Caption = 'Реле РЕЛ1М-10'
            OnClick = PopUpClick
          end
          object N11601: TMenuItem
            Caption = 'Реле РЕЛ1М-160'
            OnClick = PopUpClick
          end
          object N16001: TMenuItem
            Caption = 'Реле РЕЛ1М-600'
            OnClick = PopUpClick
          end
          object N37: TMenuItem
            Caption = '-'
          end
          object N224001: TMenuItem
            Caption = 'Реле РЕЛ2-2400'
            OnClick = PopUpClick
          end
          object N210003: TMenuItem
            Caption = 'Реле РЕЛ2М-1000'
            OnClick = PopUpClick
          end
        end
        object N28: TMenuItem
          Caption = 'термічні'
          object N20001: TMenuItem
            Caption = 'Реле НМШТ-2000'
            OnClick = PopUpClick
          end
          object N3101: TMenuItem
            Caption = 'Реле АНМШТ-310'
            OnClick = PopUpClick
          end
          object N3801: TMenuItem
            Caption = 'Реле АНМШТ-380'
            OnClick = PopUpClick
          end
          object N18002: TMenuItem
            Caption = 'Реле НШТ1-800'
            OnClick = PopUpClick
          end
          object N14004: TMenuItem
            Caption = 'Реле НРТ1-400'
            OnClick = PopUpClick
          end
          object N17503: TMenuItem
            Caption = 'Реле НРТ1-750'
            OnClick = PopUpClick
          end
          object N212: TMenuItem
            Caption = 'Реле МТР-2'
            OnClick = PopUpClick
          end
        end
        object N29: TMenuItem
          Caption = 'з випрямлячами'
          object N29009001: TMenuItem
            Caption = 'Реле НМВШ2-900/900'
            OnClick = PopUpClick
          end
          object N2100010001: TMenuItem
            Caption = 'Реле НМВШ2-1000/1000'
            OnClick = PopUpClick
          end
          object N224002: TMenuItem
            Caption = 'Реле АНВШ2-2400'
            OnClick = PopUpClick
          end
          object N12001: TMenuItem
            Caption = 'Реле НВШ1-200'
            OnClick = PopUpClick
          end
          object N18003: TMenuItem
            Caption = 'Реле НВШ1-800'
            OnClick = PopUpClick
          end
          object N111001: TMenuItem
            Caption = 'Реле НВШ1-1100'
            OnClick = PopUpClick
          end
          object N12501: TMenuItem
            Caption = 'Реле НРВ1-250'
            OnClick = PopUpClick
          end
          object N110001: TMenuItem
            Caption = 'Реле НРВ1-1000'
            OnClick = PopUpClick
          end
          object N119501: TMenuItem
            Caption = 'Реле НРВ1-1950'
            OnClick = PopUpClick
          end
          object N220002: TMenuItem
            Caption = 'Реле НРВ2-2000'
            OnClick = PopUpClick
          end
          object N245012: TMenuItem
            Caption = 'Реле НРВУ2-450/1'
            OnClick = PopUpClick
          end
        end
        object N30: TMenuItem
          Caption = 'пускові'
          object N2001: TMenuItem
            Caption = 'Реле НМПШ-200'
            OnClick = PopUpClick
          end
          object N9001: TMenuItem
            Caption = 'Реле НМПШ-900'
            OnClick = PopUpClick
          end
          object N10001: TMenuItem
            Caption = 'Реле НМПШ-1000'
            OnClick = PopUpClick
          end
          object N24002: TMenuItem
            Caption = 'Реле НМПШ-2400'
            OnClick = PopUpClick
          end
          object N28001: TMenuItem
            Caption = 'Реле НМПШ2-800'
            OnClick = PopUpClick
          end
          object N211001: TMenuItem
            Caption = 'Реле НМПШ2-1100'
            OnClick = PopUpClick
          end
          object N3022201: TMenuItem
            Caption = 'Реле НМПШ3-0.2/220'
            OnClick = PopUpClick
          end
          object N3022501: TMenuItem
            Caption = 'Реле НМПШ3-0.2/250'
            OnClick = PopUpClick
          end
          object N12502: TMenuItem
            Caption = 'Реле НПШ1-150'
            OnClick = PopUpClick
          end
          object N11501: TMenuItem
            Caption = 'Реле НПР1-150'
            OnClick = PopUpClick
          end
          object N21501: TMenuItem
            Caption = 'Реле НПР2-150'
            OnClick = PopUpClick
          end
          object N21503001: TMenuItem
            Caption = 'Реле НПР2-150/300'
            OnClick = PopUpClick
          end
          object N41503001: TMenuItem
            Caption = 'Реле НПР4-150/300'
            OnClick = PopUpClick
          end
        end
        object N31: TMenuItem
          Caption = 'заводу ЛЗТА'
          object N4410001: TMenuItem
            Caption = 'Реле 4Н4-1000'
            OnClick = PopUpClick
          end
          object N4440001: TMenuItem
            Caption = 'Реле 4Н4-4000'
            OnClick = PopUpClick
          end
          object N4490001: TMenuItem
            Caption = 'Реле 4Н4-9000'
            OnClick = PopUpClick
          end
          object N4430001: TMenuItem
            Caption = 'Реле 4Н4С-3000'
            OnClick = PopUpClick
          end
          object N8820001: TMenuItem
            Caption = 'Реле 8Н8-2000'
            OnClick = PopUpClick
          end
          object N8890001: TMenuItem
            Caption = 'Реле 8Н8-9000'
            OnClick = PopUpClick
          end
          object N887501: TMenuItem
            Caption = 'Реле 8Н8С-750'
            OnClick = PopUpClick
          end
          object N8815001: TMenuItem
            Caption = 'Реле 8Н8С-1500'
            OnClick = PopUpClick
          end
          object N8890002: TMenuItem
            Caption = 'Реле 8Н8С-9000'
            OnClick = PopUpClick
          end
        end
      end
      object N15: TMenuItem
        Caption = 'поляризовані'
        object N1501501: TMenuItem
          Caption = 'Реле ПМПШ-150/150'
          OnClick = PopUpClick
        end
        object N1501502: TMenuItem
          Caption = 'Реле ПМПУШ-150/150'
          OnClick = PopUpClick
        end
        object N1501503: TMenuItem
          Caption = 'Реле ПМПШМ-150/150'
          OnClick = PopUpClick
        end
        object N1402: TMenuItem
          Caption = 'Реле ПМШ-140'
          OnClick = PopUpClick
        end
        object N31401: TMenuItem
          Caption = 'Реле ППР3-140'
          OnClick = PopUpClick
        end
        object N350001: TMenuItem
          Caption = 'Реле ППР3-5000'
          OnClick = PopUpClick
        end
        object N3145045001: TMenuItem
          Caption = 'Реле ПЛ3-1450/4500'
          OnClick = PopUpClick
        end
        object N3270045001: TMenuItem
          Caption = 'Реле ПЛ3-2700/4500'
          OnClick = PopUpClick
        end
        object N34022001: TMenuItem
          Caption = 'Реле ПЛ3М-40/2200'
          OnClick = PopUpClick
        end
        object N360013001: TMenuItem
          Caption = 'Реле ПЛ3М-600/1300'
          OnClick = PopUpClick
        end
      end
      object N16: TMenuItem
        Caption = 'комбіновані'
        object N4501: TMenuItem
          Caption = 'Реле КМШ-450'
          OnClick = PopUpClick
        end
        object N7501: TMenuItem
          Caption = 'Реле КМШ-750'
          OnClick = PopUpClick
        end
        object N30001: TMenuItem
          Caption = 'Реле КМШ-3000'
          OnClick = PopUpClick
        end
        object N1403: TMenuItem
          Caption = 'Реле КШ1-40'
          OnClick = PopUpClick
        end
        object N1801: TMenuItem
          Caption = 'Реле КШ1-80'
          OnClick = PopUpClick
        end
        object N12801: TMenuItem
          Caption = 'Реле КШ1-280'
          OnClick = PopUpClick
        end
        object N14005: TMenuItem
          Caption = 'Реле КШ1-400'
          OnClick = PopUpClick
        end
        object N16002: TMenuItem
          Caption = 'Реле КШ1-600'
          OnClick = PopUpClick
        end
        object N18004: TMenuItem
          Caption = 'Реле КШ1-800'
          OnClick = PopUpClick
        end
        object N110002: TMenuItem
          Caption = 'Реле КШ1-1000'
          OnClick = PopUpClick
        end
        object N14006: TMenuItem
          Caption = 'Реле КШ1М-400'
          OnClick = PopUpClick
        end
        object N12503: TMenuItem
          Caption = 'Реле СКШ1-250'
          OnClick = PopUpClick
        end
        object N11001: TMenuItem
          Caption = 'Реле СКПШ1А-100'
          OnClick = PopUpClick
        end
        object N41601: TMenuItem
          Caption = 'Реле СКПШ4-160'
          OnClick = PopUpClick
        end
        object N53201: TMenuItem
          Caption = 'Реле СКПШ5-320'
          OnClick = PopUpClick
        end
        object N122: TMenuItem
          Caption = 'Реле КР1-2'
          OnClick = PopUpClick
        end
        object N1241: TMenuItem
          Caption = 'Реле КР1-24'
          OnClick = PopUpClick
        end
        object N1601: TMenuItem
          Caption = 'Реле КР1-60'
          OnClick = PopUpClick
        end
        object N16003: TMenuItem
          Caption = 'Реле КР1-600'
          OnClick = PopUpClick
        end
        object N110003: TMenuItem
          Caption = 'Реле КР1-1000'
          OnClick = PopUpClick
        end
        object N24003: TMenuItem
          Caption = 'Реле КР2-400'
          OnClick = PopUpClick
        end
        object N26001: TMenuItem
          Caption = 'Реле КР2-600'
          OnClick = PopUpClick
        end
        object N3241: TMenuItem
          Caption = 'Реле КР3-24'
          OnClick = PopUpClick
        end
        object N110004: TMenuItem
          Caption = 'Реле КПР1-1000'
          OnClick = PopUpClick
        end
        object N12701: TMenuItem
          Caption = 'Реле СКР1-270'
          OnClick = PopUpClick
        end
        object N21040061: TMenuItem
          Caption = 'Реле СКПР2-104/0.06'
          OnClick = PopUpClick
        end
        object N328001: TMenuItem
          Caption = 'Реле СКПР3-2800'
          OnClick = PopUpClick
        end
      end
      object N17: TMenuItem
        Caption = 'імпульсні'
        object N10151: TMenuItem
          Caption = 'Реле ІМШ1-0.15'
          OnClick = PopUpClick
        end
        object N1031: TMenuItem
          Caption = 'Реле ІМШ1-0.3'
          OnClick = PopUpClick
        end
        object N123: TMenuItem
          Caption = 'Реле ІМШ1-2'
          OnClick = PopUpClick
        end
        object N117001: TMenuItem
          Caption = 'Реле ІМШ1-1700'
          OnClick = PopUpClick
        end
        object N1103: TMenuItem
          Caption = 'Реле ІМВШ-110'
          OnClick = PopUpClick
        end
        object N39: TMenuItem
          Caption = 'Реле ІМВШ'
          OnClick = PopUpClick
        end
        object N40: TMenuItem
          Caption = 'Реле ІВГ'
          OnClick = PopUpClick
        end
        object N10152: TMenuItem
          Caption = 'Реле ІР1-0.15'
          OnClick = PopUpClick
        end
        object N1032: TMenuItem
          Caption = 'Реле ІР1-0.3'
          OnClick = PopUpClick
        end
        object N130001: TMenuItem
          Caption = 'Реле ІР1-3000'
          OnClick = PopUpClick
        end
        object N1104: TMenuItem
          Caption = 'Реле ІРВ-110'
          OnClick = PopUpClick
        end
        object N51101: TMenuItem
          Caption = 'Реле ІР5-110'
          OnClick = PopUpClick
        end
        object N518001: TMenuItem
          Caption = 'Реле ІР5-1800'
          OnClick = PopUpClick
        end
        object N535001: TMenuItem
          Caption = 'Реле ІР5-3500'
          OnClick = PopUpClick
        end
        object N580001: TMenuItem
          Caption = 'Реле ІР5-8000'
          OnClick = PopUpClick
        end
        object N5741401: TMenuItem
          Caption = 'Реле ІР5-74/140'
          OnClick = PopUpClick
        end
      end
      object N18: TMenuItem
        Caption = 'вогневі'
        object N112: TMenuItem
          Caption = 'Реле ОМШМ-1'
          OnClick = PopUpClick
        end
        object N2372: TMenuItem
          Caption = 'Реле ОМШ2-37'
          OnClick = PopUpClick
        end
        object N2404: TMenuItem
          Caption = 'Реле ОМШ2-40'
          OnClick = PopUpClick
        end
        object N213: TMenuItem
          Caption = 'Реле АОШ2-1'
          OnClick = PopUpClick
        end
        object N21800451: TMenuItem
          Caption = 'Реле АОШ2-180/0.45'
          OnClick = PopUpClick
        end
        object N24000851: TMenuItem
          Caption = 'Реле ОШ2-400/0.85'
          OnClick = PopUpClick
        end
        object N113: TMenuItem
          Caption = 'Реле ОР-1'
          OnClick = PopUpClick
        end
        object N2881: TMenuItem
          Caption = 'Реле ОЛ2-88'
          OnClick = PopUpClick
        end
      end
      object N19: TMenuItem
        Caption = 'аварійні'
        object N43: TMenuItem
          Caption = 'Реле АШ2-12/24'
          OnClick = PopUpClick
        end
        object N21102201: TMenuItem
          Caption = 'Реле АШ2-110/220'
          OnClick = PopUpClick
        end
        object N214401: TMenuItem
          Caption = 'Реле АШ2-1440'
          OnClick = PopUpClick
        end
        object N218001: TMenuItem
          Caption = 'Реле АШ2-1800'
          OnClick = PopUpClick
        end
        object N241: TMenuItem
          Caption = 'Реле АПШ-24'
          OnClick = PopUpClick
        end
        object N1101271: TMenuItem
          Caption = 'Реле АПШ-110/127'
          OnClick = PopUpClick
        end
        object N2201: TMenuItem
          Caption = 'Реле АПШ-220'
          OnClick = PopUpClick
        end
        object N2121: TMenuItem
          Caption = 'Реле АСШ2-12'
          OnClick = PopUpClick
        end
        object N2241: TMenuItem
          Caption = 'Реле АСШ2-24'
          OnClick = PopUpClick
        end
        object N21101: TMenuItem
          Caption = 'Реле АСШ2-110'
          OnClick = PopUpClick
        end
        object N22201: TMenuItem
          Caption = 'Реле АСШ2-220'
          OnClick = PopUpClick
        end
        object N2122: TMenuItem
          Caption = 'Реле АУШ2-12'
          OnClick = PopUpClick
        end
        object N2242: TMenuItem
          Caption = 'Реле АУШ2-24'
          OnClick = PopUpClick
        end
        object N21102: TMenuItem
          Caption = 'Реле АУШ2-110'
          OnClick = PopUpClick
        end
        object N22202: TMenuItem
          Caption = 'Реле АУШ2-220'
          OnClick = PopUpClick
        end
        object N114: TMenuItem
          Caption = 'Реле АР-1'
          OnClick = PopUpClick
        end
        object N91: TMenuItem
          Caption = 'Реле АР-9'
          OnClick = PopUpClick
        end
        object N1105: TMenuItem
          Caption = 'Реле АР-110'
          OnClick = PopUpClick
        end
        object N2202: TMenuItem
          Caption = 'Реле АР-220'
          OnClick = PopUpClick
        end
        object N242: TMenuItem
          Caption = 'Реле АРП-24'
          OnClick = PopUpClick
        end
        object N1106: TMenuItem
          Caption = 'Реле АРП-110'
          OnClick = PopUpClick
        end
        object N1271: TMenuItem
          Caption = 'Реле АРП-127'
          OnClick = PopUpClick
        end
        object N2203: TMenuItem
          Caption = 'Реле АРП-220'
          OnClick = PopUpClick
        end
        object N243: TMenuItem
          Caption = 'Реле АРУ-24'
          OnClick = PopUpClick
        end
        object N1107: TMenuItem
          Caption = 'Реле АРУ-110'
          OnClick = PopUpClick
        end
        object N1272: TMenuItem
          Caption = 'Реле АРУ-127'
          OnClick = PopUpClick
        end
        object N2204: TMenuItem
          Caption = 'Реле АРУ-220'
          OnClick = PopUpClick
        end
      end
      object N20: TMenuItem
        Caption = 'трансмітерні'
        object N1651: TMenuItem
          Caption = 'Реле ТШ1-65'
          OnClick = PopUpClick
        end
        object N651: TMenuItem
          Caption = 'Реле ТШ-65В'
          OnClick = PopUpClick
        end
        object N120003: TMenuItem
          Caption = 'Реле ТШ1-2000'
          OnClick = PopUpClick
        end
        object N20002: TMenuItem
          Caption = 'Реле ТШ-2000В'
          OnClick = PopUpClick
        end
        object N310: TMenuItem
          Caption = 'Реле ТР-3'
          OnClick = PopUpClick
        end
        object N311: TMenuItem
          Caption = 'Реле ТР-3Б'
          OnClick = PopUpClick
        end
        object N312: TMenuItem
          Caption = 'Реле ТР-3В'
          OnClick = PopUpClick
        end
        object N20003: TMenuItem
          Caption = 'Реле ТР-2000'
          OnClick = PopUpClick
        end
        object N20004: TMenuItem
          Caption = 'Реле ТР-2000Б'
          OnClick = PopUpClick
        end
        object N20005: TMenuItem
          Caption = 'Реле ТР-2000В'
          OnClick = PopUpClick
        end
        object N244: TMenuItem
          Caption = 'Реле ТП-24'
          OnClick = PopUpClick
        end
        object N44: TMenuItem
          Caption = 'Реле ТГ'
          OnClick = PopUpClick
        end
      end
      object N21: TMenuItem
        Caption = 'двоелементні'
        object N124: TMenuItem
          Caption = 'Реле ДСШ-12'
          OnClick = PopUpClick
        end
        object N131: TMenuItem
          Caption = 'Реле ДСШ-13'
          OnClick = PopUpClick
        end
        object N132: TMenuItem
          Caption = 'Реле ДСШ-13А'
          OnClick = PopUpClick
        end
        object N151: TMenuItem
          Caption = 'Реле ДСШ-15'
          OnClick = PopUpClick
        end
        object N161: TMenuItem
          Caption = 'Реле ДСШ-16'
          OnClick = PopUpClick
        end
      end
      object N22: TMenuItem
        Caption = 'кодові'
        object N45: TMenuItem
          Caption = 'КДР'
          object N115: TMenuItem
            Caption = 'Реле КДР1'
            OnClick = PopUpClick
          end
          object N116: TMenuItem
            Caption = 'Реле КДР1-М'
            OnClick = PopUpClick
          end
          object N214: TMenuItem
            Caption = 'Реле КДР2'
            OnClick = PopUpClick
          end
          object N313: TMenuItem
            Caption = 'Реле КДР3-М'
            OnClick = PopUpClick
          end
          object N51: TMenuItem
            Caption = 'Реле КДР5-М'
            OnClick = PopUpClick
          end
          object N61: TMenuItem
            Caption = 'Реле КДР6-М'
            OnClick = PopUpClick
          end
          object N314: TMenuItem
            Caption = 'Реле КДР3-МБ'
            OnClick = PopUpClick
          end
          object N117: TMenuItem
            Caption = 'Реле КДРШ1'
            OnClick = PopUpClick
          end
          object N118: TMenuItem
            Caption = 'Реле КДРШ1-М'
            OnClick = PopUpClick
          end
          object N315: TMenuItem
            Caption = 'Реле КДРШ3-М'
            OnClick = PopUpClick
          end
          object N52: TMenuItem
            Caption = 'Реле КДРШ5-М'
            OnClick = PopUpClick
          end
          object N62: TMenuItem
            Caption = 'Реле КДРШ6-М'
            OnClick = PopUpClick
          end
          object N316: TMenuItem
            Caption = 'Реле КДРШ3-МБ'
            OnClick = PopUpClick
          end
          object N119: TMenuItem
            Caption = 'Реле УКДР1'
            OnClick = PopUpClick
          end
          object N317: TMenuItem
            Caption = 'Реле УКДР3-М'
            OnClick = PopUpClick
          end
          object N53: TMenuItem
            Caption = 'Реле УКДР5-М'
            OnClick = PopUpClick
          end
          object N1110: TMenuItem
            Caption = 'Реле УКДР1В-1'
            OnClick = PopUpClick
          end
        end
        object N46: TMenuItem
          Caption = 'РЕМ'
          object N120: TMenuItem
            Caption = 'Реле РЕМ1'
            OnClick = PopUpClick
          end
          object N125: TMenuItem
            Caption = 'Реле РЕМ1-М'
            OnClick = PopUpClick
          end
          object N318: TMenuItem
            Caption = 'Реле РЕМ3-М'
            OnClick = PopUpClick
          end
          object N54: TMenuItem
            Caption = 'Реле РЕМ5-М'
            OnClick = PopUpClick
          end
          object N63: TMenuItem
            Caption = 'Реле РЕМ6-М'
            OnClick = PopUpClick
          end
          object N126: TMenuItem
            Caption = 'Реле РЕМШ1'
            OnClick = PopUpClick
          end
          object N127: TMenuItem
            Caption = 'Реле РЕМШ1-М'
            OnClick = PopUpClick
          end
          object N319: TMenuItem
            Caption = 'Реле РЕМШ3-М'
            OnClick = PopUpClick
          end
          object N55: TMenuItem
            Caption = 'Реле РЕМШ5-М'
            OnClick = PopUpClick
          end
          object N64: TMenuItem
            Caption = 'Реле РЕМШ6-М'
            OnClick = PopUpClick
          end
        end
      end
    end
    object N2: TMenuItem
      Caption = 'Чарунки автоблокув.'
      object N47: TMenuItem
        Caption = 'Чарунка БС-ДА'
        OnClick = PopUpClick
      end
      object N48: TMenuItem
        Caption = 'Чарунка БІ-ДА'
        OnClick = PopUpClick
      end
      object N49: TMenuItem
        Caption = 'Чарунка БК-ДА'
        OnClick = PopUpClick
      end
      object N320: TMenuItem
        Caption = 'Чарунка ДЯ-3Б'
        OnClick = PopUpClick
      end
      object N215: TMenuItem
        Caption = 'Чарунка ДБ-2'
        OnClick = PopUpClick
      end
      object N128: TMenuItem
        Caption = 'Чарунка СКЯ-1'
        OnClick = PopUpClick
      end
      object N129: TMenuItem
        Caption = 'Чарунка СКЯ-1М'
        OnClick = PopUpClick
      end
    end
    object N3: TMenuItem
      Caption = 'Релейні блоки'
      object N50: TMenuItem
        Caption = 'блоки ЕЦ'
        object N60: TMenuItem
          Caption = 'виконавчі'
          object N66: TMenuItem
            Caption = 'Блок ЕЦ ВІ'
            OnClick = PopUpClick
          end
          object N67: TMenuItem
            Caption = 'Блок ЕЦ ВІІ'
            OnClick = PopUpClick
          end
          object N652: TMenuItem
            Caption = 'Блок ЕЦ ВІІІ-65'
            OnClick = PopUpClick
          end
          object N68: TMenuItem
            Caption = 'Блок ЕЦ МІ'
            OnClick = PopUpClick
          end
          object N69: TMenuItem
            Caption = 'Блок ЕЦ МІІ'
            OnClick = PopUpClick
          end
          object N70: TMenuItem
            Caption = 'Блок ЕЦ МІІІ'
            OnClick = PopUpClick
          end
          object N621: TMenuItem
            Caption = 'Блок ЕЦ ВД-62'
            OnClick = PopUpClick
          end
          object N71: TMenuItem
            Caption = 'Блок ЕЦ Вх'
            OnClick = PopUpClick
          end
          object N72: TMenuItem
            Caption = 'Блок ЕЦ ВхД'
            OnClick = PopUpClick
          end
          object N622: TMenuItem
            Caption = 'Блок ЕЦ П-62'
            OnClick = PopUpClick
          end
          object N623: TMenuItem
            Caption = 'Блок ЕЦ УП-62'
            OnClick = PopUpClick
          end
          object N653: TMenuItem
            Caption = 'Блок ЕЦ УП-65'
            OnClick = PopUpClick
          end
          object N624: TMenuItem
            Caption = 'Блок ЕЦ СП-62'
            OnClick = PopUpClick
          end
          object N654: TMenuItem
            Caption = 'Блок ЕЦ СП-65'
            OnClick = PopUpClick
          end
          object N691: TMenuItem
            Caption = 'Блок ЕЦ СП-69'
            OnClick = PopUpClick
          end
          object N761: TMenuItem
            Caption = 'Блок ЕЦ ОГ-76'
            OnClick = PopUpClick
          end
          object N73: TMenuItem
            Caption = 'Блок ЕЦ С'
            OnClick = PopUpClick
          end
          object N74: TMenuItem
            Caption = 'Блок ЕЦ СО'
            OnClick = PopUpClick
          end
          object N75: TMenuItem
            Caption = 'Блок ЕЦ СС'
            OnClick = PopUpClick
          end
          object N1108: TMenuItem
            Caption = 'Блок ЕЦ ПС-110А'
            OnClick = PopUpClick
          end
          object N1109: TMenuItem
            Caption = 'Блок ЕЦ ПС-110М'
            OnClick = PopUpClick
          end
          object N2205: TMenuItem
            Caption = 'Блок ЕЦ ПС-220А'
            OnClick = PopUpClick
          end
          object N2206: TMenuItem
            Caption = 'Блок ЕЦ ПС-220М'
            OnClick = PopUpClick
          end
          object N692: TMenuItem
            Caption = 'Блок ЕЦ МПУ-69'
            OnClick = PopUpClick
          end
        end
        object N65: TMenuItem
          Caption = 'набірні'
          object N130: TMenuItem
            Caption = 'Блок ЕЦ НМ1'
            OnClick = PopUpClick
          end
          object N133: TMenuItem
            Caption = 'Блок ЕЦ НМ1Д'
            OnClick = PopUpClick
          end
          object N76: TMenuItem
            Caption = 'Блок ЕЦ НМІІП'
            OnClick = PopUpClick
          end
          object N77: TMenuItem
            Caption = 'Блок ЕЦ НМІІАП'
            OnClick = PopUpClick
          end
          object N693: TMenuItem
            Caption = 'Блок ЕЦ НПМ-69'
            OnClick = PopUpClick
          end
          object N78: TMenuItem
            Caption = 'Блок ЕЦ НН'
            OnClick = PopUpClick
          end
          object N021: TMenuItem
            Caption = 'Блок ЕЦ НС0х2'
            OnClick = PopUpClick
          end
          object N79: TMenuItem
            Caption = 'Блок ЕЦ НСС'
            OnClick = PopUpClick
          end
          object N80: TMenuItem
            Caption = 'Блок ЕЦ НПС'
            OnClick = PopUpClick
          end
        end
      end
      object N56: TMenuItem
        Caption = 'блоки УЕЦ'
        object N81: TMenuItem
          Caption = 'Блок УЕЦ ВД'
          OnClick = PopUpClick
        end
        object N216: TMenuItem
          Caption = 'Блок УЕЦ СПДх2'
          OnClick = PopUpClick
        end
        object N82: TMenuItem
          Caption = 'Блок УЕЦ С'
          OnClick = PopUpClick
        end
        object N83: TMenuItem
          Caption = 'Блок УЕЦ П'
          OnClick = PopUpClick
        end
        object N84: TMenuItem
          Caption = 'Блок УЕЦ В'
          OnClick = PopUpClick
        end
        object N85: TMenuItem
          Caption = 'Блок УЕЦ М'
          OnClick = PopUpClick
        end
        object N86: TMenuItem
          Caption = 'Блок УЕЦ ПІ'
          OnClick = PopUpClick
        end
        object N87: TMenuItem
          Caption = 'Блок УЕЦ УСП'
          OnClick = PopUpClick
        end
        object N88: TMenuItem
          Caption = 'Блок УЕЦ НПМ'
          OnClick = PopUpClick
        end
        object N89: TMenuItem
          Caption = 'Блок УЕЦ НМ'
          OnClick = PopUpClick
        end
      end
      object N57: TMenuItem
        Caption = 'блоки ГАЦ'
        object N625: TMenuItem
          Caption = 'Блок ГАЦ І-62'
          OnClick = PopUpClick
        end
        object N671: TMenuItem
          Caption = 'Блок ГАЦ ІІ-67'
          OnClick = PopUpClick
        end
        object N672: TMenuItem
          Caption = 'Блок ГАЦ ІІІ-67'
          OnClick = PopUpClick
        end
        object IV661: TMenuItem
          Caption = 'Блок ГАЦ IV-66'
          OnClick = PopUpClick
        end
        object V621: TMenuItem
          Caption = 'Блок ГАЦ V-62'
          OnClick = PopUpClick
        end
        object VI621: TMenuItem
          Caption = 'Блок ГАЦ VI-62'
          OnClick = PopUpClick
        end
        object VII621: TMenuItem
          Caption = 'Блок ГАЦ VII-62'
          OnClick = PopUpClick
        end
        object VIII621: TMenuItem
          Caption = 'Блок ГАЦ VIII-62'
          OnClick = PopUpClick
        end
        object IX621: TMenuItem
          Caption = 'Блок ГАЦ IX-62'
          OnClick = PopUpClick
        end
        object N626: TMenuItem
          Caption = 'Блок ГАЦ ХА-62'
          OnClick = PopUpClick
        end
        object N627: TMenuItem
          Caption = 'Блок ГАЦ ХБ-62'
          OnClick = PopUpClick
        end
        object N628: TMenuItem
          Caption = 'Блок ГАЦ БС-62'
          OnClick = PopUpClick
        end
        object N629: TMenuItem
          Caption = 'Блок ГАЦ БН-62'
          OnClick = PopUpClick
        end
        object N6210: TMenuItem
          Caption = 'Блок ГАЦ БМП-62'
          OnClick = PopUpClick
        end
        object N661: TMenuItem
          Caption = 'Блок ГАЦ СГ-66'
          OnClick = PopUpClick
        end
        object N762: TMenuItem
          Caption = 'Блок ГАЦ СГ-76У'
          OnClick = PopUpClick
        end
        object N763: TMenuItem
          Caption = 'Блок ГАЦ СГ-76М'
          OnClick = PopUpClick
        end
      end
      object N58: TMenuItem
        Caption = 'блоки АЗСР'
        object N90: TMenuItem
          Caption = 'Блок АЗСР ПСР'
          OnClick = PopUpClick
        end
        object N92: TMenuItem
          Caption = 'Блок АЗСР НІ'
          OnClick = PopUpClick
        end
        object N93: TMenuItem
          Caption = 'Блок АЗСР РС'
          OnClick = PopUpClick
        end
        object N94: TMenuItem
          Caption = 'Блок АЗСР ВСР'
          OnClick = PopUpClick
        end
        object N95: TMenuItem
          Caption = 'Блок АЗСР ФВС'
          OnClick = PopUpClick
        end
        object N96: TMenuItem
          Caption = 'Блок АЗСР МО'
          OnClick = PopUpClick
        end
        object N97: TMenuItem
          Caption = 'Блок АЗСР ВКВ'
          OnClick = PopUpClick
        end
        object N98: TMenuItem
          Caption = 'Блок АЗСР КП'
          OnClick = PopUpClick
        end
        object N99: TMenuItem
          Caption = 'Блок АЗСР КР'
          OnClick = PopUpClick
        end
        object N100: TMenuItem
          Caption = 'Блок АЗСР УП'
          OnClick = PopUpClick
        end
        object N101: TMenuItem
          Caption = 'Блок АЗСР ПМ'
          OnClick = PopUpClick
        end
        object N102: TMenuItem
          Caption = 'Блок АЗСР НГ'
          OnClick = PopUpClick
        end
        object N103: TMenuItem
          Caption = 'Блок АЗСР БП'
          OnClick = PopUpClick
        end
        object N104: TMenuItem
          Caption = 'Блок АЗСР ТГ'
          OnClick = PopUpClick
        end
        object N105: TMenuItem
          Caption = 'Блок АЗСР БІ'
          OnClick = PopUpClick
        end
        object N106: TMenuItem
          Caption = 'Блок АЗСР СЧС'
          OnClick = PopUpClick
        end
        object N751: TMenuItem
          Caption = 'Блок АЗСР ЗС-75'
          OnClick = PopUpClick
        end
      end
      object N59: TMenuItem
        Caption = 'блоки АБ, НАБ'
        object N711: TMenuItem
          Caption = 'Блок АБ ДСП-71'
          OnClick = PopUpClick
        end
        object N721: TMenuItem
          Caption = 'Блок АБ АБ-ПК-72'
          OnClick = PopUpClick
        end
        object N722: TMenuItem
          Caption = 'Блок АБ АБ-ПП-72'
          OnClick = PopUpClick
        end
        object N134: TMenuItem
          Caption = 'Блок АБ БРЦ-1'
          OnClick = PopUpClick
        end
        object N217: TMenuItem
          Caption = 'Блок АБ БРЦ-2'
          OnClick = PopUpClick
        end
        object N321: TMenuItem
          Caption = 'Блок АБ БРЦ-3'
          OnClick = PopUpClick
        end
        object N21781: TMenuItem
          Caption = 'Блок АБ АБ-21-78-ДСП'
          OnClick = PopUpClick
        end
        object N21782: TMenuItem
          Caption = 'Блок АБ АБ-21-78-ПК'
          OnClick = PopUpClick
        end
        object N21783: TMenuItem
          Caption = 'Блок АБ АБ-21-78-ЛБ'
          OnClick = PopUpClick
        end
        object N21784: TMenuItem
          Caption = 'Блок АБ АБ-21-78-ЛБД'
          OnClick = PopUpClick
        end
        object N107: TMenuItem
          Caption = 'Блок АБ СР-РПБ-М'
          OnClick = PopUpClick
        end
        object N108: TMenuItem
          Caption = 'Блок АБ СР-РПБ-Ц'
          OnClick = PopUpClick
        end
        object N135: TMenuItem
          Caption = 'Блок АБ СР-РПБ-Ц1'
          OnClick = PopUpClick
        end
      end
    end
    object N4: TMenuItem
      Caption = 'Фільтри ФП і захисні'
      object N109: TMenuItem
        Caption = 'Фільтр ФП-25'
        OnClick = PopUpClick
      end
      object N136: TMenuItem
        Caption = 'Фільтр ФП'
        OnClick = PopUpClick
      end
      object N218: TMenuItem
        Caption = 'Фільтр РЗФШ-2'
        OnClick = PopUpClick
      end
      object N137: TMenuItem
        Caption = 'Фільтр ЗБФ-1'
        OnClick = PopUpClick
      end
      object N219: TMenuItem
        Caption = 'Фільтр РЗФ-2'
        OnClick = PopUpClick
      end
      object N138: TMenuItem
        Caption = 'Фільтр ЗБ-1'
        OnClick = PopUpClick
      end
      object N220: TMenuItem
        Caption = 'Фільтр ЗБ-2'
        OnClick = PopUpClick
      end
      object N139: TMenuItem
        Caption = 'Фільтр ЗБ-ДСШ'
        OnClick = PopUpClick
      end
    end
    object N5: TMenuItem
      Caption = 'Конденсаторні блоки'
      object N140: TMenuItem
        Caption = 'Конд.блок КБМШ-1А'
        OnClick = PopUpClick
      end
      object N410: TMenuItem
        Caption = 'Конд.блок КБМШ-4'
        OnClick = PopUpClick
      end
      object N411: TMenuItem
        Caption = 'Конд.блок КБМШ-4А'
        OnClick = PopUpClick
      end
      object N510: TMenuItem
        Caption = 'Конд.блок КБМШ-5'
        OnClick = PopUpClick
      end
      object N610: TMenuItem
        Caption = 'Конд.блок КБМШ-6'
        OnClick = PopUpClick
      end
      object N710: TMenuItem
        Caption = 'Конд.блок КБМШ-7'
        OnClick = PopUpClick
      end
      object N764: TMenuItem
        Caption = 'Конд.блок БКР-76'
        OnClick = PopUpClick
      end
      object N141: TMenuItem
        Caption = 'Конд.блок БКШ-1'
        OnClick = PopUpClick
      end
      object N801: TMenuItem
        Caption = 'Конд.блок КПЧ-80'
        OnClick = PopUpClick
      end
      object N1202: TMenuItem
        Caption = 'Конд.блок КПЧ-120'
        OnClick = PopUpClick
      end
      object N142: TMenuItem
        Caption = 'Конд.блок КБ-1'
        OnClick = PopUpClick
      end
      object N1210: TMenuItem
        Caption = 'Конд.блок КБ-1х2'
        OnClick = PopUpClick
      end
      object N224: TMenuItem
        Caption = 'Конд.блок КБ-2х2'
        OnClick = PopUpClick
      end
      object N412: TMenuItem
        Caption = 'Конд.блок КБ-4х1'
        OnClick = PopUpClick
      end
      object N611: TMenuItem
        Caption = 'Конд.блок КБ-6'
        OnClick = PopUpClick
      end
      object N612: TMenuItem
        Caption = 'Конд.блок КБД-6'
        OnClick = PopUpClick
      end
      object N31100001: TMenuItem
        Caption = 'Конд.блок 311.00.00А'
        OnClick = PopUpClick
      end
      object N31200001: TMenuItem
        Caption = 'Конд.блок 312.00.00А'
        OnClick = PopUpClick
      end
    end
    object N6: TMenuItem
      Caption = 'Трансмітери'
      object N143: TMenuItem
        Caption = 'Трансмітер МТ-1'
        OnClick = PopUpClick
      end
      object N225: TMenuItem
        Caption = 'Трансмітер МТ-2'
        OnClick = PopUpClick
      end
      object N511: TMenuItem
        Caption = 'Трансмітер КПТ-5'
        OnClick = PopUpClick
      end
      object N712: TMenuItem
        Caption = 'Трансмітер КПТ-7'
        OnClick = PopUpClick
      end
      object N512: TMenuItem
        Caption = 'Трансмітер КПТШ-5'
        OnClick = PopUpClick
      end
      object N713: TMenuItem
        Caption = 'Трансмітер КПТШ-7'
        OnClick = PopUpClick
      end
      object N1310: TMenuItem
        Caption = 'Трансмітер КПТШ-13'
        OnClick = PopUpClick
      end
      object N5151: TMenuItem
        Caption = 'Трансмітер КПТШ-515'
        OnClick = PopUpClick
      end
      object N7151: TMenuItem
        Caption = 'Трансмітер КПТШ-715'
        OnClick = PopUpClick
      end
      object N13151: TMenuItem
        Caption = 'Трансмітер КПТШ-1315'
        OnClick = PopUpClick
      end
      object N144: TMenuItem
        Caption = 'Трансмітер БКПТ'
        OnClick = PopUpClick
      end
    end
    object N7: TMenuItem
      Caption = 'Перетворювачі'
      object N50251001: TMenuItem
        Caption = 'Перетворювач ПЧ-50/25-100'
        OnClick = PopUpClick
      end
      object N50251501: TMenuItem
        Caption = 'Перетворювач ПЧ-50/25-150'
        OnClick = PopUpClick
      end
      object N50253001: TMenuItem
        Caption = 'Перетворювач ПЧ-50/25-300'
        OnClick = PopUpClick
      end
      object N50256001: TMenuItem
        Caption = 'Перетворювач ПЧ-50/25-600'
        OnClick = PopUpClick
      end
      object N322: TMenuItem
        Caption = 'Перетворювач ППШ-3'
        OnClick = PopUpClick
      end
      object N051: TMenuItem
        Caption = 'Перетворювач ППВ-0.5'
        OnClick = PopUpClick
      end
      object N052: TMenuItem
        Caption = 'Перетворювач ППВ-0.5М'
        OnClick = PopUpClick
      end
      object N053: TMenuItem
        Caption = 'Перетворювач ДБ-ППВ-0.5'
        OnClick = PopUpClick
      end
      object N145: TMenuItem
        Caption = 'Перетворювач ППВ-1'
        OnClick = PopUpClick
      end
      object N146: TMenuItem
        Caption = 'Перетворювач ППС-1'
        OnClick = PopUpClick
      end
      object N171: TMenuItem
        Caption = 'Перетворювач ППС-1.7'
        OnClick = PopUpClick
      end
      object N3001: TMenuItem
        Caption = 'Перетворювач ПП-300'
        OnClick = PopUpClick
      end
      object N501: TMenuItem
        Caption = 'Перетворювач ПГ-50'
        OnClick = PopUpClick
      end
    end
    object N8: TMenuItem
      Caption = 'Безконтактні прилади'
      object N147: TMenuItem
        Caption = 'Безконтактний прилад СВШ'
        OnClick = PopUpClick
      end
      object N148: TMenuItem
        Caption = 'Безконтактний прилад БСВШ'
        OnClick = PopUpClick
      end
      object N149: TMenuItem
        Caption = 'Безконтактний прилад БВМШ'
        OnClick = PopUpClick
      end
      object N150: TMenuItem
        Caption = 'Безконтактний прилад СЗИ'
        OnClick = PopUpClick
      end
      object N152: TMenuItem
        Caption = 'Безконтактний прилад ФУ-1'
        OnClick = PopUpClick
      end
      object N226: TMenuItem
        Caption = 'Безконтактний прилад ФУ-2'
        OnClick = PopUpClick
      end
      object N201: TMenuItem
        Caption = 'Безконтактний прилад БДШ-20'
        OnClick = PopUpClick
      end
      object N153: TMenuItem
        Caption = 'Безконтактний прилад БДСКШ'
        OnClick = PopUpClick
      end
      object N154: TMenuItem
        Caption = 'Безконтактний прилад БКСМШ'
        OnClick = PopUpClick
      end
      object N155: TMenuItem
        Caption = 'Безконтактний прилад БТКСШ'
        OnClick = PopUpClick
      end
      object N156: TMenuItem
        Caption = 'Безконтактний прилад ППІШ'
        OnClick = PopUpClick
      end
      object N157: TMenuItem
        Caption = 'Безконтактний прилад ІП'
        OnClick = PopUpClick
      end
      object N158: TMenuItem
        Caption = 'Безконтактний прилад АДН'
        OnClick = PopUpClick
      end
      object N159: TMenuItem
        Caption = 'Безконтактний прилад БКТ'
        OnClick = PopUpClick
      end
      object N752: TMenuItem
        Caption = 'Безконтактний прилад ФК-75'
        OnClick = PopUpClick
      end
      object N753: TMenuItem
        Caption = 'Безконтактний прилад БК-75'
        OnClick = PopUpClick
      end
      object N160: TMenuItem
        Caption = 'Безконтактний прилад БСК'
        OnClick = PopUpClick
      end
      object N162: TMenuItem
        Caption = 'Безконтактний прилад ДІБ'
        OnClick = PopUpClick
      end
      object N163: TMenuItem
        Caption = 'Безконтактний прилад РНП'
        OnClick = PopUpClick
      end
      object N164: TMenuItem
        Caption = 'Безконтактний прилад БІ'
        OnClick = PopUpClick
      end
    end
    object N9: TMenuItem
      Caption = 'Сигнальний механізм'
      OnClick = PopUpClick
    end
    object N10: TMenuItem
      Caption = 'Апаратура ДЦ'
      object N165: TMenuItem
        Caption = 'Прибор ДЦ ЦГ'
        OnClick = PopUpClick
      end
      object N166: TMenuItem
        Caption = 'Прибор ДЦ ЛГ'
        OnClick = PopUpClick
      end
      object N167: TMenuItem
        Caption = 'Прибор ДЦ ЦУ'
        OnClick = PopUpClick
      end
      object N168: TMenuItem
        Caption = 'Прибор ДЦ ЦУУ'
        OnClick = PopUpClick
      end
      object N169: TMenuItem
        Caption = 'Прибор ДЦ ЛУУ'
        OnClick = PopUpClick
      end
      object N170: TMenuItem
        Caption = 'Прибор ДЦ ЦДМ'
        OnClick = PopUpClick
      end
      object N227: TMenuItem
        Caption = 'Прибор ДЦ ЛДМ-2'
        OnClick = PopUpClick
      end
      object N413: TMenuItem
        Caption = 'Прибор ДЦ ЦДМ-4'
        OnClick = PopUpClick
      end
      object N172: TMenuItem
        Caption = 'Прибор ДЦ ТПЧ'
        OnClick = PopUpClick
      end
      object N173: TMenuItem
        Caption = 'Прибор ДЦ БСК'
        OnClick = PopUpClick
      end
      object N174: TMenuItem
        Caption = 'Прибор ДЦ ФА'
        OnClick = PopUpClick
      end
      object N175: TMenuItem
        Caption = 'Прибор ДЦ ЛШ1'
        OnClick = PopUpClick
      end
      object N176: TMenuItem
        Caption = 'Прибор ДЦ ЦС'
        OnClick = PopUpClick
      end
      object N177: TMenuItem
        Caption = 'Прибор ДЦ ЦШР'
        OnClick = PopUpClick
      end
      object N323: TMenuItem
        Caption = 'Прибор ДЦ ЦДШ-3'
        OnClick = PopUpClick
      end
      object N178: TMenuItem
        Caption = 'Прибор ДЦ ГУ'
        OnClick = PopUpClick
      end
      object N179: TMenuItem
        Caption = 'Прибор ДЦ ЦТР'
        OnClick = PopUpClick
      end
      object N180: TMenuItem
        Caption = 'Прибор ДЦ БДС'
        OnClick = PopUpClick
      end
      object N181: TMenuItem
        Caption = 'Прибор ДЦ БТГР'
        OnClick = PopUpClick
      end
      object N182: TMenuItem
        Caption = 'Прибор ДЦ ГІ'
        OnClick = PopUpClick
      end
      object N183: TMenuItem
        Caption = 'Прибор ДЦ ІН'
        OnClick = PopUpClick
      end
      object N184: TMenuItem
        Caption = 'Прибор ДЦ СТ'
        OnClick = PopUpClick
      end
      object N14151: TMenuItem
        Caption = 'Прибор ДЦ ВУ-14/1.5'
        OnClick = PopUpClick
      end
      object N66417921: TMenuItem
        Caption = 'Прибор ДЦ ТР 664.17.92'
        OnClick = PopUpClick
      end
    end
    object N11: TMenuItem
      Caption = 'Апаратура ЧДК'
      object N513: TMenuItem
        Caption = 'Прибор ЧДК ГК-5'
        OnClick = PopUpClick
      end
      object N613: TMenuItem
        Caption = 'Прибор ЧДК ГК-6'
        OnClick = PopUpClick
      end
      object N185: TMenuItem
        Caption = 'Прибор ЧДК ГКШ'
        OnClick = PopUpClick
      end
      object N324: TMenuItem
        Caption = 'Прибор ЧДК ГЛ3'
        OnClick = PopUpClick
      end
      object N2161: TMenuItem
        Caption = 'Прибор ЧДК ГТ2-16'
        OnClick = PopUpClick
      end
      object N514: TMenuItem
        Caption = 'Прибор ЧДК ПК5'
        OnClick = PopUpClick
      end
      object N228: TMenuItem
        Caption = 'Прибор ЧДК УПДК-2'
        OnClick = PopUpClick
      end
      object N229: TMenuItem
        Caption = 'Прибор ЧДК РДК-2'
        OnClick = PopUpClick
      end
      object N1112: TMenuItem
        Caption = 'Прибор ЧДК БП1-1'
        OnClick = PopUpClick
      end
      object N230: TMenuItem
        Caption = 'Прибор ЧДК ДСНП-2'
        OnClick = PopUpClick
      end
      object N231: TMenuItem
        Caption = 'Прибор ЧДК БПДК-2'
        OnClick = PopUpClick
      end
      object N186: TMenuItem
        Caption = 'Прибор ЧДК БПС-1'
        OnClick = PopUpClick
      end
      object N187: TMenuItem
        Caption = 'Прибор ЧДК ВУДК'
        OnClick = PopUpClick
      end
    end
    object N12: TMenuItem
      Caption = 'Апаратура АЛСО'
      object N89111: TMenuItem
        Caption = 'Прибор АЛСО ГПЗ-8,9,11'
        OnClick = PopUpClick
      end
      object N1114151: TMenuItem
        Caption = 'Прибор АЛСО ГПЗ-11,14,15'
        OnClick = PopUpClick
      end
      object N89112: TMenuItem
        Caption = 'Прибор АЛСО ФПМ-8,9,11'
        OnClick = PopUpClick
      end
      object N1114152: TMenuItem
        Caption = 'Прибор АЛСО ФПМ-11,14,15'
        OnClick = PopUpClick
      end
      object N881: TMenuItem
        Caption = 'Прибор АЛСО ПП8-8'
        OnClick = PopUpClick
      end
      object N8121: TMenuItem
        Caption = 'Прибор АЛСО ПП8-12'
        OnClick = PopUpClick
      end
      object N981: TMenuItem
        Caption = 'Прибор АЛСО ПП9-8'
        OnClick = PopUpClick
      end
      object N9121: TMenuItem
        Caption = 'Прибор АЛСО ПП9-12'
        OnClick = PopUpClick
      end
      object N1181: TMenuItem
        Caption = 'Прибор АЛСО ПП11-8'
        OnClick = PopUpClick
      end
      object N11121: TMenuItem
        Caption = 'Прибор АЛСО ПП11-12'
        OnClick = PopUpClick
      end
      object N188: TMenuItem
        Caption = 'Інші'
        OnClick = PopUpClick
      end
    end
    object N13: TMenuItem
      Caption = 'Інші прилади СЦБ'
      object N189: TMenuItem
        Caption = 'РОБС'
        OnClick = PopUpClick
      end
      object N190: TMenuItem
        Caption = 'ГПР'
        OnClick = PopUpClick
      end
      object N191: TMenuItem
        Caption = 'ЗПТ'
        OnClick = PopUpClick
      end
      object N561: TMenuItem
        Caption = 'ПБМ-56'
        OnClick = PopUpClick
      end
      object N232: TMenuItem
        Caption = 'ПСП-2'
        OnClick = PopUpClick
      end
      object N882: TMenuItem
        Caption = 'ДМ-88'
        OnClick = PopUpClick
      end
      object N192: TMenuItem
        Caption = 'ФЕУ'
        OnClick = PopUpClick
      end
      object N193: TMenuItem
        Caption = 'БКРБ'
        OnClick = PopUpClick
      end
      object N194: TMenuItem
        Caption = 'АКІ'
        OnClick = PopUpClick
      end
      object N195: TMenuItem
        Caption = 'УРП'
        OnClick = PopUpClick
      end
      object N591: TMenuItem
        Caption = 'ЯШІ-59'
        OnClick = PopUpClick
      end
      object N196: TMenuItem
        Caption = 'БОС'
        OnClick = PopUpClick
      end
      object N197: TMenuItem
        Caption = 'АЛСБ'
        OnClick = PopUpClick
      end
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 37
    Top = 31
    object N198: TMenuItem
      Caption = 'Розрядники'
      object N2501: TMenuItem
        Caption = 'Розрядник РВНШ-250'
        OnClick = PopUpClick
      end
      object N2502: TMenuItem
        Caption = 'Розрядник РВН-250'
        OnClick = PopUpClick
      end
      object N5001: TMenuItem
        Caption = 'Розрядник РВН-500'
        OnClick = PopUpClick
      end
      object N0661: TMenuItem
        Caption = 'Розрядник ГЗа-0.66'
        OnClick = PopUpClick
      end
      object N3501: TMenuItem
        Caption = 'Розрядник Р-350'
        OnClick = PopUpClick
      end
      object N6001: TMenuItem
        Caption = 'Розрядник РКШ-600'
        OnClick = PopUpClick
      end
      object N6002: TMenuItem
        Caption = 'Розрядник РКШ-600М'
        OnClick = PopUpClick
      end
    end
    object N199: TMenuItem
      Caption = 'Вирівнювачі'
      object N2207: TMenuItem
        Caption = 'Вирівнювач ВОЦШ-220'
        OnClick = PopUpClick
      end
      object N2208: TMenuItem
        Caption = 'Вирівнювач ВОЦ-220'
        OnClick = PopUpClick
      end
      object N11010: TMenuItem
        Caption = 'Вирівнювач ВОЦШ-110'
        OnClick = PopUpClick
      end
      object N1010: TMenuItem
        Caption = 'Вирівнювач ВК-10'
        OnClick = PopUpClick
      end
      object N204: TMenuItem
        Caption = 'Вирівнювач ВК-20'
        OnClick = PopUpClick
      end
      object N2209: TMenuItem
        Caption = 'Вирівнювач ВК-220'
        OnClick = PopUpClick
      end
      object N22010: TMenuItem
        Caption = 'Вирівнювач ВС-220'
        OnClick = PopUpClick
      end
      object N901: TMenuItem
        Caption = 'Вирівнювач ВС-90'
        OnClick = PopUpClick
      end
      object N205: TMenuItem
        Caption = 'Вирівнювач Варистор СН'
        OnClick = PopUpClick
      end
    end
    object N200: TMenuItem
      Caption = 'Обмежувач'
      OnClick = PopUpClick
    end
    object N202: TMenuItem
      Caption = 'Блоки захисту'
      object N206: TMenuItem
        Caption = 'Блок захисту УЗТ'
        OnClick = PopUpClick
      end
      object N1100: TMenuItem
        Caption = 'Блок захисту БЗЕ-1'
        OnClick = PopUpClick
      end
      object N233: TMenuItem
        Caption = 'Блок захисту БЗЕ-2'
        OnClick = PopUpClick
      end
    end
    object N203: TMenuItem
      Caption = 'Автоматичні вимикачі'
      object N325: TMenuItem
        Caption = 'АВМ 3А'
        OnClick = PopUpClick
      end
      object N515: TMenuItem
        Caption = 'АВМ 5А'
        OnClick = PopUpClick
      end
      object N754: TMenuItem
        Caption = 'АВМ 7.5А'
        OnClick = PopUpClick
      end
      object N1011: TMenuItem
        Caption = 'АВМ 10А'
        OnClick = PopUpClick
      end
      object N1510: TMenuItem
        Caption = 'АВМ 15А'
        OnClick = PopUpClick
      end
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 68
    Top = 31
    object N234: TMenuItem
      Caption = 'Інструкція'
      OnClick = N234Click
    end
    object N207: TMenuItem
      Caption = 'Показати/Сховати підказки'
      OnClick = N207Click
    end
    object N208: TMenuItem
      Caption = 'Надрукувати картку відмови'
      OnClick = N208Click
    end
    object N209: TMenuItem
      Caption = 'Показати картку відмови №...'
      ShortCut = 16462
      OnClick = N209Click
    end
    object N235: TMenuItem
      Caption = 'Внесення даних'
      ShortCut = 16474
      OnClick = N235Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = DateTimePicker4Change
    Left = 552
    Top = 32
  end
end
