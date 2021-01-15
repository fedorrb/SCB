object Form1: TForm1
  Left = 121
  Top = 76
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'АРМ ШЛІ'
  ClientHeight = 408
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 178
    Top = 392
    Width = 215
    Height = 14
    Caption = 'Для початку роботи натисність лівий ALT'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 569
    Height = 9
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 0
    Top = 376
    Width = 569
    Height = 9
    Shape = bsBottomLine
  end
  object StaticText1: TStaticText
    Left = 136
    Top = 128
    Width = 297
    Height = 81
    Hint = 
      'Для виводу інструкції по роботі'#13#10'з програмою виберіть Інструкція' +
      #13#10'і у зявившомуся меню - Інструкція'
    Alignment = taCenter
    AutoSize = False
    Caption = 'Програма'#13#10'для аналізу надійності роботи'#13#10'пристроїв СЦБ.'#13#10
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 157
    Top = 64
    Width = 256
    Height = 26
    Alignment = taCenter
    Caption = 'Дорожня  лабораторія АТ і З'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clTeal
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 72
    object N7: TMenuItem
      Caption = 'Інструкція'
      object N8: TMenuItem
        Caption = 'Інструкція'
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = 'Версія програми'
        OnClick = N9Click
      end
    end
    object N10: TMenuItem
      Caption = 'Робота'
      object N12: TMenuItem
        Caption = 'Внесення і зміна даних'
        OnClick = N12Click
      end
      object N11: TMenuItem
        Caption = 'Довідки'
        OnClick = N11Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object N1: TMenuItem
        Caption = 'Знайти...'
        OnClick = N1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = 'Розрізи стрілок'
        OnClick = N3Click
      end
      object N2: TMenuItem
        Caption = 'Технічна оснащеність'
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Caption = 'Додаткові поїзда'
        OnClick = N14Click
      end
    end
    object N13: TMenuItem
      Caption = 'Вихід'
      OnClick = N6Click
    end
  end
end
