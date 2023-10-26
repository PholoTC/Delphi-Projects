object frmTheBank: TfrmTheBank
  Left = 0
  Top = 0
  Caption = 'The Bank System'
  ClientHeight = 477
  ClientWidth = 606
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
    Left = 24
    Top = 72
    Width = 561
    Height = 23
    Caption = 
      'This Program uses a bank Client class to creat Bank Client  User' +
      's'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 131
    Width = 310
    Height = 15
    Caption = 'Fill in Text fields before Cluicking button Create Client'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Leelawadee'
    Font.Style = []
    ParentFont = False
  end
  object lblOutput: TLabel
    Left = 64
    Top = 472
    Width = 5
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 255
    Top = 171
    Width = 66
    Height = 15
    Caption = 'First Name:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Leelawadee'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 255
    Top = 211
    Width = 54
    Height = 15
    Caption = 'Surname:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Leelawadee'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 255
    Top = 251
    Width = 101
    Height = 15
    Caption = 'Account Number:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Leelawadee'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 214
    Top = 16
    Width = 150
    Height = 31
    Caption = 'The I.T Bank'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Rockwell'
    Font.Style = []
    ParentFont = False
  end
  object btnInitialize: TButton
    Left = 24
    Top = 163
    Width = 153
    Height = 70
    Caption = 'Create Client'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = btnInitializeClick
  end
  object btnUpdate: TButton
    Left = 24
    Top = 275
    Width = 153
    Height = 70
    Caption = 'Update Account'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    WordWrap = True
    OnClick = btnUpdateClick
  end
  object btnDisplay: TButton
    Left = 24
    Top = 387
    Width = 153
    Height = 78
    Caption = 'Display full details'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = btnDisplayClick
  end
  object txtFirstName: TEdit
    Left = 392
    Top = 163
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object txtSurname: TEdit
    Left = 392
    Top = 209
    Width = 201
    Height = 21
    TabOrder = 4
  end
  object txtAccountNumber: TEdit
    Left = 392
    Top = 249
    Width = 201
    Height = 21
    TabOrder = 5
  end
  object memoDisplay: TMemo
    Left = 255
    Top = 288
    Width = 338
    Height = 177
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 6
  end
end
