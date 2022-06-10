program DemoInterface;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'UMain.pas' {FormMain},
  UICalcul in 'UICalcul.pas',
  UTAddition in 'UTAddition.pas',
  UTMultiplication in 'UTMultiplication.pas',
  UTMultiplicationParAddition in 'UTMultiplicationParAddition.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
