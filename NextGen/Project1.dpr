program Project1;

uses
  Vcl.Forms,
  Unit3 in 'ui\Unit3.pas' {Form3},
  Unit1 in 'ui\Unit1.pas' {Form1},
  UAddress in 'src\UAddress.pas',
  UMoney in 'src\UMoney.pas',
  UItemID in 'src\UItemID.pas',
  UPayment in 'domain\UPayment.pas',
  UProductCatalog in 'domain\UProductCatalog.pas',
  UProductDescription in 'domain\UProductDescription.pas',
  URegister in 'domain\URegister.pas',
  USale in 'domain\USale.pas',
  USalesLineItem in 'domain\USalesLineItem.pas',
  UStore in 'domain\UStore.pas',
  Unit2 in 'ui\Unit2.pas' {Form2},
  UConnect in 'src\UConnect.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
