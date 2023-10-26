object frmStudents: TfrmStudents
  Left = 0
  Top = 0
  Caption = 'Student List'
  ClientHeight = 649
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
  object Label1: TLabel
    Left = 232
    Top = 24
    Width = 439
    Height = 40
    Caption = 'Student and the grade Average'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
  end
  object dbgCDStudent: TDBGrid
    Left = 160
    Top = 96
    Width = 665
    Height = 377
    DataSource = dmCDStudent.dsTblStudent
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
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StudentNumber'
        ReadOnly = True
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirstName'
        ReadOnly = True
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Surname'
        ReadOnly = True
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Faculty'
        ReadOnly = True
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GradeAverage'
        ReadOnly = True
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OutstandingFees'
        ReadOnly = True
        Width = 90
        Visible = True
      end>
  end
  object btnBack: TButton
    Left = 8
    Top = 8
    Width = 122
    Height = 33
    Caption = '<-- Back'
    TabOrder = 3
    OnClick = btnBackClick
  end
  object btnClassRange: TButton
    Left = 8
    Top = 120
    Width = 122
    Height = 77
    Caption = 'Show Class Outstanding Fees Lowest to Highest'
    TabOrder = 1
    WordWrap = True
    OnClick = btnClassRangeClick
  end
  object btnShowAverage: TButton
    Left = 8
    Top = 240
    Width = 122
    Height = 77
    Caption = 'Calculate Class Average'
    TabOrder = 2
    WordWrap = True
    OnClick = btnShowAverageClick
  end
end
