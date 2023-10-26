object frmProducts: TfrmProducts
  Left = 0
  Top = 0
  Caption = 'Product List'
  ClientHeight = 645
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 344
    Top = 256
    Width = 23
    Height = 22
  end
  object Label1: TLabel
    Left = 664
    Top = 551
    Width = 58
    Height = 16
    Caption = 'Edit Price:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 8
    Width = 167
    Height = 39
    Caption = 'Product List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEditProductList: TDBEdit
    Left = 664
    Top = 573
    Width = 121
    Height = 21
    DataField = 'Price'
    DataSource = dmCDProduct.dataSourceProductList
    TabOrder = 0
  end
  object dgbProductList: TDBGrid
    Left = 168
    Top = 63
    Width = 673
    Height = 469
    DataSource = dmCDProduct.dataSourceProductList
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 50
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'ProductName'
        Width = 150
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'ProductType'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantity'
        Width = 120
        Visible = True
      end>
  end
  object DBNavProductList: TDBNavigator
    Left = 112
    Top = 570
    Width = 460
    Height = 25
    DataSource = dmCDProduct.dataSourceProductList
    TabOrder = 2
  end
  object btnBack: TButton
    Left = 16
    Top = 8
    Width = 122
    Height = 33
    Caption = '<-- Back'
    TabOrder = 3
    OnClick = btnBackClick
  end
  object btnShowStock: TButton
    Left = 16
    Top = 112
    Width = 122
    Height = 73
    Caption = 'Show Snacks and Beverages'
    TabOrder = 4
    WordWrap = True
    OnClick = btnShowSnacks
  end
  object ShowExcessQ: TButton
    Left = 16
    Top = 261
    Width = 122
    Height = 73
    Caption = 'Show Products with Excess Stock'
    TabOrder = 5
    WordWrap = True
    OnClick = ShowExcessQClick
  end
  object btnInsert: TButton
    Left = 16
    Top = 494
    Width = 122
    Height = 73
    Caption = 'Insert'
    TabOrder = 6
    OnClick = btnInsertClick
  end
  object txtID: TEdit
    Left = 17
    Top = 356
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '33'
  end
  object txtName: TEdit
    Left = 17
    Top = 383
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'New Name'
  end
  object txtTYype: TEdit
    Left = 17
    Top = 410
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Snacks'
  end
  object txtPrice: TEdit
    Left = 16
    Top = 437
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '22'
  end
  object txtQuantity: TEdit
    Left = 17
    Top = 464
    Width = 121
    Height = 21
    TabOrder = 11
    Text = '3'
  end
end
