unit UTMultiplication;

interface

uses
  UICalcul;

type
  TMultiplication = class(TInterfacedObject, ICalcul)
    function Calcul(m1, m2: Integer): Integer;
  end;

implementation

{ TMultiplication }

function TMultiplication.Calcul(m1, m2: Integer): Integer;
  begin
    Result := m1 * m2;
  end;

end.
