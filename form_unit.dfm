object formOne: TformOne
  Left = 0
  Top = 0
  Caption = 'frontForm'
  ClientHeight = 321
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbg_SD_table: TDBGrid
    Left = 8
    Top = 8
    Width = 662
    Height = 233
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object showGridBtn: TButton
    Left = 8
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Show grid'
    TabOrder = 1
    OnClick = showGridBtnClick
  end
  object restoreBtn: TButton
    Left = 89
    Top = 256
    Width = 144
    Height = 25
    Caption = 'Restore database'
    TabOrder = 2
    OnClick = restoreBtnClick
  end
  object backupBtn: TButton
    Left = 239
    Top = 256
    Width = 144
    Height = 25
    Caption = 'Backup database'
    TabOrder = 3
    OnClick = backupBtnClick
  end
  object queryBtn: TButton
    Left = 389
    Top = 256
    Width = 92
    Height = 25
    Caption = 'Budget query'
    TabOrder = 4
    OnClick = queryBtnClick
  end
end
