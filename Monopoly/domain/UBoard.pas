unit UBoard;

interface

Uses
  SysUtils, Classes, Generics.Collections, Generics.Defaults,
  USquare;

type
  TBoard = class
  const
    SIZE = 40;
  private
    squares: TList<TSquare>;
    procedure build(i: integer);
    procedure linkSquares;
    procedure link(i: integer);
  public
    function getSquare(start: TSquare; distance: integer): TSquare;
    function getStartSquare: TSquare;
    procedure buildSquares;
  published
    constructor create;
  end;

implementation

procedure TBoard.build(i: integer);
var
  s: TSquare;
begin
  s := TSquare.create('Square ' + inttostr(i), i);
  squares.Add(s);
end;

procedure TBoard.buildSquares;
var
  i: integer;
begin
  squares := TList<TSquare>.create;
  for i := 0 to SIZE-1 do
    build(i);
end;

constructor TBoard.create;
begin
  buildSquares;
  linkSquares;
end;

function TBoard.getSquare(start: TSquare; distance: integer): TSquare;
var
  endIndex: integer;
begin
  endIndex := (start.getIndex + distance);
  result := squares.Items[endIndex];
end;

function TBoard.getStartSquare: TSquare;
begin
  result := squares.First;
end;

procedure TBoard.link(i: integer);
var
  next, current: TSquare;
begin
  current := squares.Items[i];
  next := squares.Items[i+1];   // i + 1   ??? ����� �� ��������
  current.setNextSquare(next);
end;

procedure TBoard.linkSquares;
var
  i: integer;
  first, last: TSquare;
begin
  for i := 0 to (SIZE - 1) do
   if i<39 then link(i);
  first := squares.First;
  last := squares.Last;
  last.setNextSquare(first);
end;

end.
