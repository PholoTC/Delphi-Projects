object dmCDProduct: TdmCDProduct
  OldCreateOrder = False
  Height = 493
  Width = 700
  object ConnProductDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=TechSchool.mdb;Mode' +
      '=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 288
    Top = 8
  end
  object adoTblProduct: TADOTable
    Active = True
    Connection = ConnProductDB
    CursorType = ctStatic
    TableName = 'tblProductList'
    Left = 88
    Top = 128
  end
  object dataSourceProductList: TDataSource
    DataSet = adoTblProduct
    Left = 88
    Top = 208
  end
  object adoQueryFindStock: TADOQuery
    Active = True
    Connection = ConnProductDB
    CursorType = ctStatic
    DataSource = dataSourceProductList
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM tblProductList where ProductType = "Snacks" OR Pro' +
        'ductType = "Beverages";')
    Left = 264
    Top = 120
  end
  object datasourceShowStockQ: TDataSource
    DataSet = adoQueryFindStock
    Left = 256
    Top = 208
  end
  object adoQueryFindExcessStock: TADOQuery
    Active = True
    Connection = ConnProductDB
    CursorType = ctStatic
    DataSource = dataSourceProductList
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblProductList where Quantity >= 25;')
    Left = 448
    Top = 120
  end
  object dataSourceExcessStock: TDataSource
    DataSet = adoQueryFindExcessStock
    Left = 440
    Top = 224
  end
end
