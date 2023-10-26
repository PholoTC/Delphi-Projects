unit clsBankClient;

interface

type
  TBankClient = class
  private
    strFirstName: string;
    strSurname: string;
    strAccountNumber: string;
  public
    constructor Create(usrFirstName, usrSurname, usrAccountNumber: string);
    procedure SetClientAccountNumber(usrAccountNumber: string);
    function GetClientAccountNumber: string;
    function GetClientFullNameSurname: string;
    function ToString: string; override;
  end;

implementation

//Constructor
constructor TBankClient.Create(usrFirstName, usrSurname,
  usrAccountNumber: string);
begin
  strFirstName := usrFirstName;
  strSurname := usrSurname;
  strAccountNumber := usrAccountNumber;
end;

//Setter
procedure TBankClient.SetClientAccountNumber(usrAccountNumber: string);
begin
  strAccountNumber := usrAccountNumber;
end;

//Getter Client Account Number
function TBankClient.GetClientAccountNumber: string;
begin
  Result := strAccountNumber;
end;

//Getter Client FullName + Surname
function TBankClient.GetClientFullNameSurname: string;
begin
  Result := 'Name & Surname: '+ strFirstName + ' ' + strSurname;
end;

//ToString Function
function TBankClient.ToString: string;
begin
  Result := GetClientFullNameSurname + ' '#13#10'Account Number: (' +
    strAccountNumber + ')';
end;

end.


