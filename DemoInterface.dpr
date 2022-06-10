program DemoInterface;

uses
  System.StartUpCopy,
  FMX.Forms,
  UICalcul in 'UICalcul.pas',
  UTAddition in 'UTAddition.pas',
  UTMultiplication in 'UTMultiplication.pas',
  UTMultiplicationParAddition in 'UTMultiplicationParAddition.pas',
  UMain in 'UMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
