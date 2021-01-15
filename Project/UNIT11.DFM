object Form11: TForm11
  Left = 252
  Top = 91
  BorderStyle = bsToolWindow
  Caption = 'Розрізи стрілок'
  ClientHeight = 362
  ClientWidth = 330
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
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 186
    Height = 13
    Caption = 'Дві однакові дати вносити не можна'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 24
    Width = 241
    Height = 281
    DataSource = DM2.DSVzrez
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VZREZ_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PERIOD'
        Title.Caption = 'Дата'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOLVO'
        Title.Caption = 'Кількість'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 320
    Width = 240
    Height = 25
    DataSource = DM2.DSVzrez
    Hints.Strings = (
      'Перший запис'
      'Попередній запис'
      'Наступний запис'
      'Останній запис'
      'Вставити запис'
      'Видалити запис'
      'Змінити запис'
      'Внести дані'
      'Відмінити зміни'
      'Обновити дані')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 264
    Top = 320
    Width = 57
    Height = 25
    Caption = 'Вихід'
    TabOrder = 2
    OnClick = Button1Click
  end
end
