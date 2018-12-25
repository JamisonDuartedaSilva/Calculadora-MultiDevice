unit UFrCalculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrCalculadora = class(TForm)
    bt1: TButton;
    bt2: TButton;
    bt3: TButton;
    bt4: TButton;
    bt5: TButton;
    bt6: TButton;
    bt7: TButton;
    bt8: TButton;
    bt9: TButton;
    btVirgula: TButton;
    bt0: TButton;
    btLimpar: TButton;
    btMais: TButton;
    btMenos: TButton;
    btMultiplicar: TButton;
    btDividir: TButton;
    btApagar: TButton;
    btResultado: TButton;
    btDark: TButton;
    btlight: TButton;
    edResultado: TEdit;
    lbResultado: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCalculadora: TfrCalculadora;

implementation

{$R *.fmx}

end.
