object Form12: TForm12
  Left = 216
  Top = 61
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Елементи для техвисновків'
  ClientHeight = 393
  ClientWidth = 281
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
    Left = 8
    Top = 40
    Width = 265
    Height = 345
    DataSource = DM2.DSPribory
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 281
    Height = 29
    ButtonHeight = 21
    ButtonWidth = 39
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    ShowCaptions = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = ' Вихід '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 39
      Top = 2
      Width = 240
      Height = 21
      DataSource = DM2.DSPribory
      TabOrder = 0
    end
  end
end
