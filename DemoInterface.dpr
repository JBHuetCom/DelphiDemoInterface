program DemoInterface;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'UMain.pas' {Form1},
  UICalcul in 'UICalcul.pas',
  UTAddition in 'UTAddition.pas',
  UTMultiplication in 'UTMultiplication.pas',
  UTMultiplicationParAddition in 'UTMultiplicationParAddition.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
