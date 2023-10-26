object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Menu'
  ClientHeight = 276
  ClientWidth = 590
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
    Left = 96
    Top = 24
    Width = 412
    Height = 35
    Caption = 'School Management System'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 176
    Top = 88
    Width = 262
    Height = 13
    Caption = 'A system that would be able to handle school activities'
  end
  object btnStudents: TButton
    Left = 32
    Top = 144
    Width = 185
    Height = 105
    Caption = 'Students'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnStudentsClick
  end
  object btnProducts: TButton
    Left = 368
    Top = 144
    Width = 185
    Height = 105
    Caption = 'Products'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnProductsClick
  end
end
