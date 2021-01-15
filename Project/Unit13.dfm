object Form13: TForm13
  Left = 11
  Top = 32
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Техвисновки'
  ClientHeight = 494
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 772
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 43
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'Вихід'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 43
      Top = 2
      Caption = 'Фільтр'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 86
      Top = 2
      Width = 231
      Height = 21
      DataSource = DM2.DSReport
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 753
    Height = 433
    DataSource = DM2.DSReport
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'REPORT'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Color = clInfoBk
        Width = 31
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CLAS'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Title.Color = clInfoBk
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBERPRIB'
        ReadOnly = True
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MADE'
        ReadOnly = True
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHECKED'
        ReadOnly = True
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATEBEGIN'
        ReadOnly = True
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER'
        ReadOnly = True
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRIVALIST'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SH'
        ReadOnly = True
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATION1'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATION2'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ELEMENT'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE1'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE2'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAUSE3'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLAS1'
        ReadOnly = True
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLAS2'
        ReadOnly = True
        Width = 64
        Visible = True
      end>
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 32
    Width = 121
    Height = 17
    Caption = 'Включити фільтр'
    Checked = True
    State = cbChecked
    TabOrder = 2
    OnClick = CheckBox1Click
  end
end
