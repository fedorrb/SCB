object Form8: TForm8
  Left = 4
  Top = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Знайти'
  ClientHeight = 542
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 371
    Height = 16
    Caption = 'Знайти номера карток які задовільняють умовам:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 40
    Width = 38
    Height = 13
    Caption = 'хвилин.'
  end
  object Label3: TLabel
    Left = 216
    Top = 72
    Width = 77
    Height = 13
    Caption = '(Ш,П,Е,Д,Т,В,І).'
  end
  object Label4: TLabel
    Left = 216
    Top = 104
    Width = 93
    Height = 13
    Caption = '(А, Е, Д,Г, Н, М, П)'
  end
  object Label5: TLabel
    Left = 216
    Top = 136
    Width = 150
    Height = 13
    Caption = '(01,02,03,...,08,10,11,12,13,14)'
  end
  object Label6: TLabel
    Left = 8
    Top = 488
    Width = 90
    Height = 16
    Caption = 'За період: з'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 192
    Top = 488
    Width = 19
    Height = 16
    Caption = 'по'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 385
    Top = 8
    Width = 7
    Height = 529
    Shape = bsRightLine
  end
  object Label9: TLabel
    Left = 536
    Top = 416
    Width = 57
    Height = 13
    AutoSize = False
    Caption = 'Всього'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 608
    Top = 416
    Width = 81
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 304
    Top = 488
    Width = 65
    Height = 16
    Caption = 'включно'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 448
    Top = 8
    Width = 297
    Height = 13
    Caption = 'Для сортування необхідно клацнути на заголовку столбця'
  end
  object CheckBox14: TCheckBox
    Left = 16
    Top = 328
    Width = 185
    Height = 17
    Caption = 'Неякісний ремонт в РТД СЦБ'
    TabOrder = 16
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 40
    Width = 161
    Height = 17
    Caption = 'Тривалість відмови більше'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 32
    Width = 33
    Height = 21
    Enabled = False
    TabOrder = 1
    OnChange = Edit1Change
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 72
    Width = 97
    Height = 17
    Caption = 'Служба'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 2
    OnClick = CheckBox2Click
  end
  object Edit2: TEdit
    Left = 176
    Top = 64
    Width = 33
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Система'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 4
    OnClick = CheckBox3Click
  end
  object Edit3: TEdit
    Left = 176
    Top = 96
    Width = 33
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object CheckBox4: TCheckBox
    Left = 16
    Top = 136
    Width = 97
    Height = 17
    Caption = 'Дистанція'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 6
    OnClick = CheckBox4Click
  end
  object Edit4: TEdit
    Left = 176
    Top = 128
    Width = 33
    Height = 21
    Enabled = False
    TabOrder = 7
    OnExit = Edit4Exit
  end
  object CheckBox5: TCheckBox
    Left = 16
    Top = 168
    Width = 97
    Height = 17
    Caption = 'Станція'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 8
    OnClick = CheckBox5Click
  end
  object Edit5: TEdit
    Left = 176
    Top = 160
    Width = 201
    Height = 21
    Enabled = False
    TabOrder = 9
  end
  object CheckBox6: TCheckBox
    Left = 16
    Top = 200
    Width = 153
    Height = 17
    Caption = 'Є інцидент або порушення'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 10
  end
  object CheckBox7: TCheckBox
    Left = 16
    Top = 232
    Width = 153
    Height = 17
    Caption = 'Є затримки поїздів'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 11
  end
  object DTP1: TDateTimePicker
    Left = 104
    Top = 480
    Width = 81
    Height = 21
    CalAlignment = dtaLeft
    Date = 37349.8828903935
    Time = 37349.8828903935
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 19
  end
  object DTP2: TDateTimePicker
    Left = 216
    Top = 480
    Width = 81
    Height = 21
    CalAlignment = dtaLeft
    Date = 37349.8830130787
    Time = 37349.8830130787
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 20
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 512
    Width = 217
    Height = 25
    Caption = 'Знайти'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Button1: TButton
    Left = 720
    Top = 504
    Width = 59
    Height = 25
    Caption = 'Вихід'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = Button1Click
  end
  object CheckBox8: TCheckBox
    Left = 16
    Top = 264
    Width = 97
    Height = 17
    Caption = 'Елемент'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 12
    OnClick = CheckBox8Click
  end
  object ComboBox1: TComboBox
    Left = 176
    Top = 264
    Width = 201
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      'Pейковi кола'
      'Сигнали'
      'Приводи'
      'Гарнітура'
      'Двигуни'
      'Прилади'
      'Прилади захисту'
      'Установчi вироби'
      'Електричнi кола'
      'Запобiжники'
      'Апарати управлiння'
      'Джерела живлення'
      'Випрямлячi'
      'Трансформатори'
      'Кабельнi лiнiї'
      'Повiтрянi лiнiї'
      'Гiрковi пристрої'
      'Інші елементи'
      'Елемент не визначений'
      'Крадіжка'
      'Навмисне пошкодження'
      'Пристрої СЦБ справні')
  end
  object CheckBox9: TCheckBox
    Left = 16
    Top = 296
    Width = 97
    Height = 17
    Caption = 'Клас причини'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 14
    OnClick = CheckBox9Click
  end
  object ComboBox2: TComboBox
    Left = 176
    Top = 296
    Width = 201
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Експлуатацiйнi'
      'Виробничi (заводськi)'
      'Схемно-конструктивнi'
      'Проектні'
      'Грозовi перенапруження'
      'Комутацiйнi перенапруження'
      'Причина не встановлена')
  end
  object CheckBox10: TCheckBox
    Left = 16
    Top = 360
    Width = 121
    Height = 17
    Caption = 'Закриття системи'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 17
  end
  object CheckBox11: TCheckBox
    Left = 16
    Top = 392
    Width = 201
    Height = 17
    Caption = 'Перекриття сигналу з проїздом'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 18
  end
  object DBGrid1: TDBGrid
    Left = 400
    Top = 24
    Width = 377
    Height = 353
    DataSource = DM2.DSOtkaz
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 21
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'OTKAZ_ID'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMBER'
        Title.Alignment = taCenter
        Title.Caption = 'Номер'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATEBEGIN'
        Title.Alignment = taCenter
        Title.Caption = 'Початок'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATEEND'
        Title.Alignment = taCenter
        Title.Caption = 'Закінчення'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXDATEBEGIN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EXDATEEND'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRIVALIST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PH'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SLUJBA'
        Title.Caption = 'Служ.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SYSTEM'
        Title.Caption = 'Сист.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATION1'
        Title.Alignment = taCenter
        Title.Caption = 'Станція1'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATION2'
        Title.Alignment = taCenter
        Title.Caption = 'Станція2'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROYAVA'
        Title.Alignment = taCenter
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ELEMENT'
        Title.Alignment = taCenter
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE1'
        Title.Alignment = taCenter
        Title.Caption = 'Причина1'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE2'
        Title.Alignment = taCenter
        Title.Caption = 'Причина2'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE3'
        Title.Caption = 'Причина3'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE4'
        Title.Caption = 'Причина4'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE5'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CAUSE6'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CLAS1'
        Title.Alignment = taCenter
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLAS2'
        Title.Alignment = taCenter
        Title.Caption = 'Клас причини2'
        Width = 193
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROIZD'
        Title.Alignment = taCenter
        Title.Caption = 'З проїз.'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'WOPROIZD'
        Title.Alignment = taCenter
        Title.Caption = 'Без проїз.'
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRIGLASIT'
        Title.Alignment = taCenter
        Title.Caption = 'Запрош.'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLOSED'
        Title.Alignment = taCenter
        Title.Caption = 'Закрит.'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PASAJIR'
        Title.Alignment = taCenter
        Title.Caption = 'Пас.'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRIMISKIH'
        Title.Alignment = taCenter
        Title.Caption = 'Прим.'
        Width = 32
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VANTAJNIH'
        Title.Alignment = taCenter
        Title.Caption = 'Вант.'
        Width = 32
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIMEPAS'
        Title.Alignment = taCenter
        Title.Caption = 'Час пас.'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIMEPRIM'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIMEVANT'
        Title.Alignment = taCenter
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'INCIDENT'
        Title.Alignment = taCenter
        Title.Caption = 'Інцид.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIMINCID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PRIMCLOSED'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMBERPRIB'
        Title.Caption = 'Номер приб.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MADE'
        Title.Alignment = taCenter
        Title.Caption = 'Рік випус.'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHECKED'
        Title.Caption = 'Перевірений'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBERELEM'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIMITKA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TEKST1'
        Visible = False
      end>
  end
  object DBMemo1: TDBMemo
    Left = 400
    Top = 432
    Width = 377
    Height = 65
    TabStop = False
    DataField = 'TEKST1'
    DataSource = DM2.DSOtkaz
    ReadOnly = True
    TabOrder = 26
  end
  object Button2: TButton
    Left = 480
    Top = 504
    Width = 233
    Height = 25
    Caption = 'Відправити виділені записи в таблицю Excel'
    TabOrder = 24
    OnClick = Button2Click
  end
  object CheckBox12: TCheckBox
    Left = 16
    Top = 424
    Width = 217
    Height = 17
    Caption = 'Перекриття сигналу без проїзду'
    TabOrder = 27
  end
  object CheckBox13: TCheckBox
    Left = 16
    Top = 456
    Width = 249
    Height = 17
    Caption = 'Прийом/відправлення по запрошувальному'
    TabOrder = 28
  end
  object DBNavigator1: TDBNavigator
    Left = 400
    Top = 384
    Width = 376
    Height = 18
    DataSource = DM2.DSOtkaz
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 29
  end
  object Button3: TButton
    Left = 400
    Top = 504
    Width = 73
    Height = 25
    Caption = 'Розгорнути'
    TabOrder = 23
    OnClick = Button3Click
  end
end
