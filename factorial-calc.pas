program FactorialCalculator;

uses SysUtils;

function Factorial(n: Integer): Int64;
begin
  if n <= 1 then
    Result := 1
  else
    Result := n * Factorial(n - 1);
end;

var
  number: Integer;
  result: Int64;

begin
  Write('Enter a number to calculate its factorial: ');
  ReadLn(number);
  
  if number < 0 then
  begin
    WriteLn('Please enter a non-negative integer.');
  end
  else
  begin
    result := Factorial(number);
    WriteLn('Factorial of ', number, ' is: ', result);
  end;
  
  ReadLn; { Pause the program to see the output }
end.
