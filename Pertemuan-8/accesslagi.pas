program yayayya;
uses crt;

var
  angka : integer;
  i : ^word;
  ptrangka : ^integer;

begin
  clrscr;
  angka := 10;
  writeln(angka);
  ptrangka := @angka;
  writeln(ptrangka^);
  i := addr(ptrangka);
  writeln(i^);
  angka := 30;
  writeln(ptrangka^);
end.