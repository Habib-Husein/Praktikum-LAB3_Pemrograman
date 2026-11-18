program ptop1;
uses crt;

var
  angka : integer;
  p : ^integer;
  pp : ^PInteger;

begin
clrscr;
  angka := 7;
  p := @angka;
  pp := @p;
  writeln ('Angkanya : ', angka);
  writeln (' Pointer 1 : ', p^);
  writeln ('Pointer to another pointer : ', pp^^);
end.