unit UProductDescription;

interface

uses

  UItemID, UMoney;

type

  TProductDescription = class
  private
    id: TItemID;
    price: TMoney;
    description: string;
  published
  public
    procedure ProductDescription(id: TItemID; price: TMoney;
      description: string);
    function getId: TItemID;
    function getPrice: TMoney;
    function getDescription: string;
  end;

implementation

{ TProductDescription }

function TProductDescription.getDescription: string;
begin
  result := description;
end;

function TProductDescription.getId: TItemID;
begin
  result := id;
end;

function TProductDescription.getPrice: TMoney;
begin
  result := price;
end;

procedure TProductDescription.ProductDescription(id: TItemID; price: TMoney;
  description: string);
begin
  self.id := id;
  self.price := price;
  self.description := description;
end;

end.
