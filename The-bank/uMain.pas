unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, clsBankClient;

type
  TfrmTheBank = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    btnInitialize: TButton;
    btnUpdate: TButton;
    lblOutput: TLabel;
    btnDisplay: TButton;
    txtFirstName: TEdit;
    txtSurname: TEdit;
    txtAccountNumber: TEdit;
    memoDisplay: TMemo;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnInitializeClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
  private
    { Private declarations }
    objBankClient: clsBankClient.TBankClient;
  public
    { Public declarations }
  end;

var
  frmTheBank: TfrmTheBank;
  strAccountNumber: string;

implementation

{$R *.dfm}

procedure TfrmTheBank.btnInitializeClick(Sender: TObject);
begin
  // Create a new Bank client object
  objBankClient := TBankClient.Create(txtFirstName.Text, txtSurname.Text,
    txtAccountNumber.Text);

  strAccountNumber := objBankClient.GetClientAccountNumber;

  memoDisplay.Clear;
  txtFirstName.Enabled := False;
  txtSurname.Enabled := False;
  txtAccountNumber.Enabled := False;

  ShowMessage('New Bank Client Added');

end;

procedure TfrmTheBank.btnUpdateClick(Sender: TObject);
var
  strInput: String;
begin
  // Updating the account number
  if Assigned(objBankClient) then
  begin
    strInput := InputBox('Input Prompt', 'Enter Updated Account Number',
      strAccountNumber);

    objBankClient.SetClientAccountNumber(strInput);

    txtAccountNumber.Text := strInput;
    ShowMessage('Account Number Updated!');
  end;
end;

procedure TfrmTheBank.btnDisplayClick(Sender: TObject);
begin
  // Display the current Client's full name, surname and account number
  if Assigned(objBankClient) then
  begin
    memoDisplay.Lines.Add('Full Client Details');
    memoDisplay.Lines.Add(objBankClient.ToString);
  end;
end;

end.
