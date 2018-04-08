program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestUPayment in 'TestUPayment.pas',
  UPayment in '..\domain\UPayment.pas',
  TestUProductCatalog in 'TestUProductCatalog.pas',
  UProductCatalog in '..\domain\UProductCatalog.pas',
  TestUProductDescription in 'TestUProductDescription.pas',
  UProductDescription in '..\domain\UProductDescription.pas',
  UMoney in '..\src\UMoney.pas',
  UItemID in '..\src\UItemID.pas',
  TestURegister in 'TestURegister.pas',
  URegister in '..\domain\URegister.pas',
  TestUSale in 'TestUSale.pas',
  USale in '..\domain\USale.pas',
  TestUStore in 'TestUStore.pas',
  UStore in '..\domain\UStore.pas',
  TestUSalesLineItem in 'TestUSalesLineItem.pas',
  USalesLineItem in '..\domain\USalesLineItem.pas',
  UAddress in '..\src\UAddress.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

