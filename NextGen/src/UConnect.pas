unit UConnect;

interface

Uses
  Data.DB, Data.Win.ADODB;

type
  TConnect = class
  private
    ADOConnection1: TADOConnection;
    function getADOConnection: TADOConnection;
    procedure SetADOConnection;
  end;

implementation

{ TConnect }

function TConnect.getADOConnection: TADOConnection;
begin
  result := ADOConnection1;
end;

procedure TConnect.SetADOConnection;
begin
  ADOConnection1 := TADOConnection.Create(nil);
  ADOConnection1.ConnectionString:=
  'Provider=MSDASQL.1;Password=1234;Persist Security Info=True; User ID=User;Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;   SERVER=localhost;UID=User;PWD=1234;DATABASE=shop;PORT=3306;COLUMN_SIZE_S32=1";   Initial Catalog=shop';
  ADOConnection1.LoginPrompt:=false;
  ADOConnection1.Connected:=true;

  end;

end.
