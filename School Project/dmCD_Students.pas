unit dmCD_Students;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmCDStudent = class(TDataModule)
    tblStudents: TADOTable;
    connCDStudentDB: TADOConnection;
    dsTblStudent: TDataSource;
    adoQueryShowRange: TADOQuery;
    dataSourceRange: TDataSource;
    adoQueryAverage: TADOQuery;
    dataSourceAverage: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCDStudent: TdmCDStudent;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
