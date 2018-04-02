program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit\Unit1.pas' {Form1},
  UAddress in 'src\UAddress.pas',
  UMoney in 'src\UMoney.pas',
  UItemID in 'src\UItemID.pas',
  UPayment in 'domain\UPayment.pas',
  UProductCatalog in 'domain\UProductCatalog.pas',
  UProductDescription in 'domain\UProductDescription.pas',
  URegister in 'domain\URegister.pas',
  USale in 'domain\USale.pas',
  USalesLineItem in 'domain\USalesLineItem.pas',
  UStore in 'domain\UStore.pas' {$R *.res};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
