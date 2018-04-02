unit UProductCatalog;

interface

uses
  UItemID, UProductDescription, UMoney,
  SysUtils, Generics.Collections, Generics.Defaults;

type

  TProductCatalog = class
  private
    descriptions: TDictionary<TItemID, TProductDescription>;
  published
    constructor create;
  public
    procedure productCatalog;
    function getProductDescription(id: TItemID): TProductDescription;
  end;

implementation

{ TProductCatalog }

constructor TProductCatalog.create;
begin
  descriptions := TDictionary<TItemID, TProductDescription>.create;
  productCatalog;
end;

function TProductCatalog.getProductDescription(id: TItemID)
  : TProductDescription;
begin
  result := descriptions.Items[id];;
end;

procedure TProductCatalog.productCatalog;
var
  id1, id2: TItemID;
  price: TMoney;
  desc: TProductDescription;
begin
  // тестовые данные
  id1 := 100;
  id2 := 200;
  price := 3;
  desc := TProductDescription.create;
  desc.ProductDescription(id1, price, 'товар 1');
  descriptions.Add(id1, desc);
  desc.ProductDescription(id2, price, 'товар 2');
  descriptions.Add(id2, desc);
end;

end.
