unit UTAddition;

interface

uses
  UICalcul;

type
  TAddition = class(TInterfacedObject, ICalcul)
    function Calcul(x, y: Integer): Integer;
  end;

implementation

{ TAddition }

function TAddition.Calcul(x, y: Integer): Integer;
  begin
    Result := x + y;
  end;

end.
