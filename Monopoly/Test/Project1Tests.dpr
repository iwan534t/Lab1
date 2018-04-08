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
  UBoard in '..\domain\UBoard.pas',
  UDie in '..\domain\UDie.pas',
  UMGame in '..\domain\UMGame.pas',
  UPiece in '..\domain\UPiece.pas',
  UPlayer in '..\domain\UPlayer.pas',
  USquare in '..\domain\USquare.pas',
  TestUBoard in 'TestUBoard.pas',
  TestUDie in 'TestUDie.pas',
  TestUMGame in 'TestUMGame.pas',
  TestUPiece in 'TestUPiece.pas',
  TestUPlayer in 'TestUPlayer.pas',
  TestUSquare in 'TestUSquare.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

