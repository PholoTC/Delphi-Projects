object dmCDStudent: TdmCDStudent
  OldCreateOrder = False
  Height = 486
  Width = 648
  object tblStudents: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=TechSchool.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'tblStudent'
    Left = 88
    Top = 176
  end
  object connCDStudentDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=TechSchool.mdb;Mode' +
      '=ReadWrite;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 264
    Top = 64
  end
  object dsTblStudent: TDataSource
    DataSet = tblStudents
    Left = 88
    Top = 240
  end
  object adoQueryShowRange: TADOQuery
    Active = True
    Connection = connCDStudentDB
    CursorType = ctStatic
    DataSource = dsTblStudent
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblStudent ORDER BY GradeAverage ASC;')
    Left = 256
    Top = 184
  end
  object dataSourceRange: TDataSource
    DataSet = adoQueryShowRange
    Left = 232
    Top = 248
  end
  object adoQueryAverage: TADOQuery
    Active = True
    Connection = connCDStudentDB
    CursorType = ctStatic
    DataSource = dsTblStudent
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblStudent ORDER BY GradeAverage ASC;')
    Left = 376
    Top = 176
  end
  object dataSourceAverage: TDataSource
    DataSet = adoQueryAverage
    Left = 392
    Top = 248
  end
end
