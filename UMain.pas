unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edtVal1: TEdit;
    edtVal2: TEdit;
    lblResultat: TLabel;
    jbhBtnAddition: TButton;
    jbhBtnMultiplication: TButton;
    procedure ExecuteCalcul(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

uses
  UICalcul,
  UTAddition,
  // UTMultiplication
  UTMultiplicationParAddition
  ;

{$R *.fmx}

/// <summary> - Ex�cute un calcul en fonction du bouton cliqu� -
/// </summary>
/// <para> Chaque bouton d�finit le contexte utilis� pour le calcul.
/// </para>
/// <para> Chaque calcul est d�finit dans une classe impl�mentant l'interface ICalcul.
/// </para>
procedure TForm1.ExecuteCalcul(Sender: TObject);
  var
    ResultatCalcul : ICalcul;
  begin
    if Sender.Equals(jbhBtnAddition) then
      ResultatCalcul := TAddition.Create;
    if Sender.Equals(jbhBtnMultiplication) then
      // ResultatCalcul := TMultiplication.Create;
      ResultatCalcul := TMultiplicationParAddition.Create;
    lblResultat.Text := ResultatCalcul.Calcul(edtVal1.Text.ToInteger, edtVal2.Text.ToInteger).ToString;
  end;

end.
