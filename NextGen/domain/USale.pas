unit USale;

interface

uses
  USalesLineItem, UPayment, UMoney, UProductDescription,
  SysUtils, Generics.Collections, Generics.Defaults;

type

  TSale = class
  private
    lineItems: TList<TSalesLineItem>;
    data: TDate;
    Complete: boolean; // isComplete
    Payment: TPayment;
  published
    constructor create;
  public
    function getBalance: TMoney;
    procedure becomeComplete;
    function isComplete: boolean;
    procedure makeLineItem(decs: TProductDescription; quantity: integer);
    function getTotal: TMoney;
    procedure makePayment(cachTendered: TMoney);
  end;

implementation

{ TSale }

procedure TSale.becomeComplete;
begin
  Complete := true;
end;

constructor TSale.create;
begin
  lineItems := TList<TSalesLineItem>.create;
  Complete := false;
  Payment := TPayment.create;
end;

function TSale.getBalance: TMoney;
begin
  result := Payment.getAmount - getTotal;
end;

function TSale.getTotal: TMoney;
var
  total, subTotal: TMoney;
  SalesLineItem: TSalesLineItem;
begin
  total := 0;
  subTotal := 0;
  for SalesLineItem in lineItems do
  begin
    subTotal := SalesLineItem.getSubTotal;
    total := total + subTotal;
  end;
  result := total;
end;

function TSale.isComplete: boolean;
begin
  result := Complete;
end;

procedure TSale.makeLineItem(decs: TProductDescription; quantity: integer);
var
  SalesLineItem: TSalesLineItem;
  i: integer;
begin
  SalesLineItem := TSalesLineItem.create;
  SalesLineItem.SalesLineItem(decs, quantity);
  i := lineItems.Add(SalesLineItem);
end;

procedure TSale.makePayment(cachTendered: TMoney);
begin
  Payment := TPayment.create;
  Payment.Payment(cachTendered);
end;

end.
