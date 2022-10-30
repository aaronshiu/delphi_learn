object main: Tmain
  Left = 0
  Top = 0
  Caption = 'main'
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
  object sizLabel: TLabel
    Left = 595
    Top = 197
    Width = 43
    Height = 13
    Caption = 'Size (GB)'
  end
  object idLabel: TLabel
    Left = 382
    Top = 197
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object manLabel: TLabel
    Left = 423
    Top = 197
    Width = 65
    Height = 13
    Caption = 'Manufacturer'
  end
  object selLabel: TLabel
    Left = 517
    Top = 197
    Width = 26
    Height = 13
    Caption = 'Seller'
  end
  object priceLabel: TLabel
    Left = 398
    Top = 243
    Width = 40
    Height = 13
    Caption = 'Price ('#163')'
  end
  object ppgbLabel: TLabel
    Left = 478
    Top = 243
    Width = 75
    Height = 13
    Caption = 'Price per GB ('#163')'
  end
  object dbgSD: TDBGrid
    Left = 8
    Top = 8
    Width = 662
    Height = 177
    DataSource = dmSD.dscSD
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'manufacture'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'seller'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'size_gb'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Visible = True
      end>
  end
  object showPrice: TDBEdit
    Left = 398
    Top = 262
    Width = 49
    Height = 21
    DataField = 'price'
    DataSource = dmSD.dscSD
    TabOrder = 1
  end
  object sortBtn: TButton
    Left = 8
    Top = 229
    Width = 105
    Height = 25
    Caption = 'Sort (price/GB)'
    TabOrder = 2
    OnClick = sortBtnClick
  end
  object pp_gb_btn: TButton
    Left = 8
    Top = 198
    Width = 105
    Height = 25
    Caption = 'Calculate (price/GB)'
    TabOrder = 3
    OnClick = pp_gb_btnClick
  end
  object insBtn: TButton
    Left = 184
    Top = 198
    Width = 75
    Height = 25
    Caption = 'New entry'
    TabOrder = 4
    OnClick = insBtnClick
  end
  object updBtn: TButton
    Left = 184
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Edit entry'
    TabOrder = 5
    OnClick = updBtnClick
  end
  object delBtn: TButton
    Left = 265
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Delete entry'
    TabOrder = 6
    OnClick = delBtnClick
  end
  object showSiz: TDBEdit
    Left = 589
    Top = 216
    Width = 49
    Height = 21
    DataField = 'size_gb'
    DataSource = dmSD.dscSD
    TabOrder = 7
  end
  object showID: TDBEdit
    Left = 359
    Top = 216
    Width = 49
    Height = 21
    DataField = 'ID'
    DataSource = dmSD.dscSD
    TabOrder = 8
  end
  object showSel: TDBEdit
    Left = 509
    Top = 216
    Width = 49
    Height = 21
    DataField = 'seller'
    DataSource = dmSD.dscSD
    TabOrder = 9
  end
  object showMan: TDBEdit
    Left = 423
    Top = 216
    Width = 49
    Height = 21
    DataField = 'manufacture'
    DataSource = dmSD.dscSD
    TabOrder = 10
  end
  object showPPGB: TDBEdit
    Left = 478
    Top = 262
    Width = 49
    Height = 21
    DataField = 'pp_gb'
    DataSource = dmSD.dscSD
    TabOrder = 11
  end
end
