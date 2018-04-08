unit UPayment;

interface

uses

  UMoney;

type

  TPayment = class
  private
    amount: TMoney;
  published
  public
    procedure Payment(cachTendered: TMoney);
    function getAmount: TMoney;
  end;

implementation

{ TPayment }

function TPayment.getAmount: TMoney;
begin
  result := amount;
end;

procedure TPayment.Payment(cachTendered: TMoney);
begin
  amount := cachTendered;
end;

end.
