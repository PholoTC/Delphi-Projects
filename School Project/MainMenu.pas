unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ProductsListing;

type
  TfrmMain = class(TForm)
    btnStudents: TButton;
    Label1: TLabel;
    Label2: TLabel;
    btnProducts: TButton;
    procedure btnStudentsClick(Sender: TObject);
    procedure btnProductsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses SchoolSystem;

procedure TfrmMain.btnProductsClick(Sender: TObject);
begin

  frmMain.Hide;
  frmProducts.Show;

end;

procedure TfrmMain.btnStudentsClick(Sender: TObject);
begin
  frmMain.Hide;
  frmStudents.Show;

end;

end.
