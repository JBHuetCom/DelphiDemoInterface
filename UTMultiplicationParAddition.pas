unit UTMultiplicationParAddition;

interface

uses
  UICalcul;

type
  TMultiplicationParAddition = class(TInterfacedObject, ICalcul)
    function Calcul(i1, i2: Integer): Integer;
  end;

implementation

{ TMultiplication }

function TMultiplicationParAddition.Calcul(i1, i2: Integer): Integer;
  begin
    Result := 0;
    for var i: Integer := 1 to i1 do
      begin
        Result := Result + i2;
      end;
  end;

end.
