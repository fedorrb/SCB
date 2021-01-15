object Form5: TForm5
  Left = 240
  Top = 105
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Внесення і зміна даних'
  ClientHeight = 352
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 31
    Height = 13
    Caption = 'Дата'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 19
    Height = 13
    Caption = 'ШЧ'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 56
    Height = 13
    Caption = 'Станція 1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 56
    Height = 13
    Caption = 'Станція 2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 176
    Width = 85
    Height = 13
    Caption = 'Пасажирських'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 208
    Width = 65
    Height = 13
    Caption = 'Приміських'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 240
    Width = 66
    Height = 13
    Caption = 'Вантажних'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 144
    Top = 176
    Width = 36
    Height = 13
    Caption = 'шт. на'
  end
  object Label9: TLabel
    Left = 144
    Top = 208
    Width = 36
    Height = 13
    Caption = 'шт. на'
  end
  object Label10: TLabel
    Left = 144
    Top = 240
    Width = 36
    Height = 13
    Caption = 'шт. на'
  end
  object Label11: TLabel
    Left = 16
    Top = 264
    Width = 53
    Height = 13
    Caption = 'Примітка'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 104
    Top = 40
    Width = 73
    Height = 21
    CalAlignment = dtaLeft
    Date = 37838.6333856482
    Time = 37838.6333856482
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 72
    Width = 49
    Height = 21
    Style = csDropDownList
    DropDownCount = 14
    ItemHeight = 13
    TabOrder = 1
    OnChange = ComboBox1Change
    Items.Strings = (
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '10'
      '11'
      '12'
      '13'
      '14')
  end
  object ComboBox2: TComboBox
    Left = 104
    Top = 104
    Width = 153
    Height = 21
    Style = csDropDownList
    DropDownCount = 15
    ItemHeight = 13
    TabOrder = 2
    OnExit = ComboBox2Exit
  end
  object ComboBox3: TComboBox
    Left = 104
    Top = 136
    Width = 153
    Height = 21
    Style = csDropDownList
    DropDownCount = 15
    ItemHeight = 13
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 104
    Top = 168
    Width = 33
    Height = 21
    TabOrder = 4
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 104
    Top = 200
    Width = 33
    Height = 21
    TabOrder = 6
    OnExit = Edit2Exit
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 104
    Top = 232
    Width = 33
    Height = 21
    TabOrder = 8
    OnExit = Edit3Exit
    OnKeyPress = Edit3KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 184
    Top = 168
    Width = 49
    Height = 21
    EditMask = '!999:99;1;_'
    MaxLength = 6
    TabOrder = 5
    Text = '   :  '
    OnExit = MaskEdit1Exit
    OnKeyDown = MaskEdit1KeyDown
  end
  object MaskEdit2: TMaskEdit
    Left = 184
    Top = 200
    Width = 49
    Height = 21
    EditMask = '!999:99;1;_'
    MaxLength = 6
    TabOrder = 7
    Text = '   :  '
    OnExit = MaskEdit2Exit
    OnKeyDown = MaskEdit2KeyDown
  end
  object MaskEdit3: TMaskEdit
    Left = 184
    Top = 232
    Width = 49
    Height = 21
    EditMask = '!999:99;1;_'
    MaxLength = 6
    TabOrder = 9
    Text = '   :  '
    OnExit = MaskEdit3Exit
    OnKeyDown = MaskEdit3KeyDown
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 299
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 47
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShowCaptions = True
    TabOrder = 11
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'Внести'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 47
      Top = 2
      Caption = 'Вихід'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 280
    Width = 265
    Height = 65
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnKeyPress = Memo1KeyPress
  end
end
