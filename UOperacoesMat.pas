unit UOperacoesMat;

interface
uses
  System.SysUtils, FMX.Edit, StrUtils;
type
  TOperacoesMat = class

  public
    bJaPossuiOperador: boolean;

    procedure AcrescentarValores(Valor : double; const edresultado : TEdit);
    procedure AcrecentarOperacoes(Operacao : string; const edresultado : TEdit);
    procedure CalcularResultado(edresultado: TEdit);
  end;

implementation

{ TOperacoesMat }

procedure TOperacoesMat.AcrecentarOperacoes(Operacao: string;
  const edresultado: TEdit);
var
  I : integer;
  valorExibido : string;
begin
  valorExibido := edresultado.Text;
  if valorExibido = EmptyStr then
    exit;

  if not bJaPossuiOperador then
  begin
    valorExibido := valorExibido + Operacao;
    bJaPossuiOperador := true;
  end
  else
  begin
    for I := 0 to Length(valorExibido) do
    begin
      if (valorExibido[i] in ['-','/','*','+']) then
      begin
        valorExibido[I] := Operacao[1];
      end
    end;
  end;

  edresultado.Text :=  valorExibido;
end;

procedure TOperacoesMat.AcrescentarValores(Valor: double;
  const edresultado: TEdit);
begin
  edresultado.Text := edresultado.Text +  FloatToStr(Valor);
end;

procedure TOperacoesMat.CalcularResultado(edresultado: TEdit);
var
  resultado : extended;
  valor1: string;
  valor2: string;
  I : integer;
  I2 : integer;
begin

  if not bJaPossuiOperador then
    Exit;
  if (edresultado.Text[Length(edresultado.Text)] in ['-','/','*','+']) then
    Exit;


  for I := 0 to Length(edResultado.Text) do
  begin
    if (edResultado.Text[i] in ['-','/','*','+']) then
    begin
      for I2 := 1 to I - 1 do
      begin
        valor1 := valor1 + edResultado.Text[I2];
      end;
      for I2 := I+1 to Length(edResultado.Text) do
      begin
        valor2 := valor2 + edResultado.Text[I2];
      end;
      break;
    end
  end;
  for I := 1 to Length(edResultado.Text) do
  begin
   case AnsiIndexStr(edresultado.Text[i], ['-','/','*','+']) of
    0 : resultado := StrToFloat(valor1) - StrToFloat(valor2);
    1 : resultado := StrToFloat(valor1) / StrToFloat(valor2);
    2 : resultado := StrToFloat(valor1) * StrToFloat(valor2);
    3 : resultado := StrToFloat(valor1) + StrToFloat(valor2);
   end;
  end;

  edresultado.Text := FloatToStr(resultado);
  bJaPossuiOperador := false;
end;

end.
