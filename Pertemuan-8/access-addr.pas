program aksesalamat;
uses crt;

var
  angka : integer;
  i : ^word;
  ptrangka : ^integer;

begin
  clrscr;
  angka := 10;
  writeln('Angkanya : ', angka);
  ptrangka := @angka;
  writeln(ptrangka^); 
  i := addr(ptrangka); //AMBIL ALAMAT
  writeln('alamat memorinya : ', i^); // AMBIL ISI DR ALAMAT YG DITUJU
end.
