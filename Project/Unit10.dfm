object Form10: TForm10
  Left = 210
  Top = 61
  BorderStyle = bsToolWindow
  Caption = 'Технічна оснащеність'
  ClientHeight = 420
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 8
    Width = 241
    Height = 361
    DataSource = DM2.DSTech
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TECH_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RIK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TECH'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 376
    Width = 240
    Height = 25
    DataSource = DM2.DSTech
    Hints.Strings = (
      'На початок'
      'Попередній запис'
      'Наступний запис'
      'В кінець'
      'Вставити запис'
      'Видалити запис'
      'Змінити запис'
      'Внести дані у БД'
      'Відмінити зміни'
      'Обновити')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 280
    Top = 376
    Width = 57
    Height = 25
    Caption = 'Вихід'
    TabOrder = 2
    OnClick = Button1Click
  end
end
