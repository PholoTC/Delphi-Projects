program projTheBankClient;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmTheBank},
  clsBankClient in 'clsBankClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTheBank, frmTheBank);
  Application.Run;
end.
