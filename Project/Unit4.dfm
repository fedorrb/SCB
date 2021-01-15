object Form4: TForm4
  Left = 215
  Top = 70
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Додаткові поїзди'
  ClientHeight = 426
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 612
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 55
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShowCaptions = True
    TabOrder = 0
    object ToolButton4: TToolButton
      Left = 0
      Top = 2
      Caption = 'Фільтр'
      ImageIndex = 3
      OnClick = ToolButton4Click
    end
    object ToolButton6: TToolButton
      Left = 55
      Top = 2
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 63
      Top = 2
      Caption = 'Додати'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 118
      Top = 2
      Caption = 'Змінити'
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton3: TToolButton
      Left = 173
      Top = 2
      Caption = 'Видалити'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton7: TToolButton
      Left = 228
      Top = 2
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object DBNavigator1: TDBNavigator
      Left = 236
      Top = 2
      Width = 124
      Height = 21
      DataSource = DM2.DSTrain
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object ToolButton8: TToolButton
      Left = 360
      Top = 2
      Width = 187
      Caption = 'ToolButton8'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 547
      Top = 2
      Caption = 'Вихід'
      ImageIndex = 4
      OnClick = ToolButton5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 29
    Width = 612
    Height = 397
    Align = alClient
    DataSource = DM2.DSTrain
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TRAIN_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DATEBEGIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASAJIR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIMEPAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIMISKIH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIMEPRIM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VANTAJNIH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIMEVANT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATION1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATION2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRIMITKA'
        Visible = True
      end>
  end
end
