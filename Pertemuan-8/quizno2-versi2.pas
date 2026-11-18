program Soal02_Pointer;
uses crt;

var
  angka: integer;
  ptr1, ptr2: ^integer;
  i: ^word;

begin
  clrscr;
  angka := 100;

  ptr1 := @angka;
  ptr2 := @angka;
  i := addr(ptr1);

  writeln('a. Nilai variabel: ', angka);
  writeln('b. Alamat variabel: ', i^);
  writeln('c. Nilai yang ditunjuk pointer 1: ', ptr1^);
  writeln('   Nilai yang ditunjuk pointer 2: ', ptr2^);

  readln;
end.