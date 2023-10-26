unit SchoolSystem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, dmCD_Students, MainMenu, Vcl.StdCtrls;

type
  TfrmStudents = class(TForm)
    dbgCDStudent: TDBGrid;
    btnBack: TButton;
    Label1: TLabel;
    btnClassRange: TButton;
    btnShowAverage: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnClassRangeClick(Sender: TObject);
    procedure btnShowAverageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudents: TfrmStudents;

implementation

{$R *.dfm}

procedure TfrmStudents.btnBackClick(Sender: TObject);
begin
  frmStudents.Hide;
  frmMain.Show;

end;

procedure TfrmStudents.btnClassRangeClick(Sender: TObject);
begin
  with dmCDStudent do
  begin
    adoQueryShowRange.close;
    adoQueryShowRange.sql.Clear;
    adoQueryShowRange.sql.Add
      ('SELECT * FROM tblStudent ORDER BY OutstandingFees ASC');
    adoQueryShowRange.open;

    dbgCDStudent.DataSource := dmCDStudent.dataSourceRange;

  end;
end;

procedure TfrmStudents.btnShowAverageClick(Sender: TObject);
var
  dGradeAvg, dGradeSum: double;

begin

  dGradeSum := 0;
  with dmCDStudent do
  begin
    adoQueryAverage.close;
    adoQueryAverage.sql.Clear;

    tblStudents.First;
    while NOT tblStudents.Eof do
    begin
      dGradeSum := +tblStudents['GradeAverage'];
      tblStudents.Next;
    end;

    dGradeAvg := (dGradeSum / tblStudents.RecordCount) * 100;
    ShowMessage('The Schools Grade Average is: ' + dGradeAvg.ToString);
  end;
end;

end.
