unit dmCD_Products;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmCDProduct = class(TDataModule)
    ConnProductDB: TADOConnection;
    adoTblProduct: TADOTable;
    dataSourceProductList: TDataSource;
    adoQueryFindStock: TADOQuery;
    datasourceShowStockQ: TDataSource;
    adoQueryFindExcessStock: TADOQuery;
    dataSourceExcessStock: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCDProduct: TdmCDProduct;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
