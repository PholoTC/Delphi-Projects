unit ProductsListing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, dmCD_Products, Vcl.Buttons;

type
  TfrmProducts = class(TForm)
    DBEditProductList: TDBEdit;
    dgbProductList: TDBGrid;
    DBNavProductList: TDBNavigator;
    btnBack: TButton;
    SpeedButton1: TSpeedButton;
    btnShowStock: TButton;
    Label1: TLabel;
    ShowExcessQ: TButton;
    Label2: TLabel;
    btnInsert: TButton;
    txtID: TEdit;
    txtName: TEdit;
    txtTYype: TEdit;
    txtPrice: TEdit;
    txtQuantity: TEdit;
    procedure btnBackClick(Sender: TObject);
    procedure btnShowSnacks(Sender: TObject);
    procedure ShowExcessQClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProducts: TfrmProducts;

implementation

{$R *.dfm}

uses MainMenu;

procedure TfrmProducts.btnBackClick(Sender: TObject);
begin
  frmProducts.Hide;
  frmMain.Show;

end;

procedure TfrmProducts.btnInsertClick(Sender: TObject);
var name,Prodtype :string;
price: real;
qunatity :integer;
begin
name := txtName.Text;
Prodtype := txtTYype.Text;
price := strtofloat(txtPrice.Text);
qunatity := strtoint(txtQuantity.Text);

dmCDProduct.adoTblProduct.Insert;
dmCDProduct.adoTblProduct['ProductName'] := name;
dmCDProduct.adoTblProduct['ProductType'] := Prodtype;
dmCDProduct.adoTblProduct['Price'] := price;
dmCDProduct.adoTblProduct['Quantity'] := qunatity;
//dmCDProduct.adoTblProduct['ProductName'] := name;
 dmCDProduct.adoTblProduct.Post;



end;

procedure TfrmProducts.btnShowSnacks(Sender: TObject);
begin
  with dmCDProduct do
  begin
    adoQueryFindStock.close;
    adoQueryFindStock.sql.Clear;
    adoQueryFindStock.sql.Add
      ('SELECT * FROM tblProductList where ProductType = "Snacks" OR ProductType = "Beverages"');
    adoQueryFindStock.open;

    dgbProductList.DataSource := dmCDProduct.datasourceShowStockQ;

  end;

end;

procedure TfrmProducts.ShowExcessQClick(Sender: TObject);
begin
  with dmCDProduct do
  begin
    adoQueryFindStock.close;
    adoQueryFindStock.sql.Clear;
    adoQueryFindStock.sql.Add
      ('SELECT * FROM tblProductList where Quantity >= 25');
    adoQueryFindStock.open;

    dgbProductList.DataSource := dmCDProduct.dataSourceExcessStock;

  end;
end;

end.
