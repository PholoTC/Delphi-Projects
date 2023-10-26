program projSchoolSystem;

uses
  Vcl.Forms,
  SchoolSystem in 'SchoolSystem.pas' {frmStudents},
  dmCD_Students in 'dmCD_Students.pas' {dmCDStudent: TDataModule},
  ProductsListing in 'ProductsListing.pas' {frmProducts},
  dmCD_Products in 'dmCD_Products.pas' {dmCDProduct: TDataModule},
  MainMenu in 'MainMenu.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmStudents, frmStudents);
  Application.CreateForm(TdmCDStudent, dmCDStudent);
  Application.CreateForm(TfrmProducts, frmProducts);
  Application.CreateForm(TdmCDProduct, dmCDProduct);
  Application.Run;
end.
