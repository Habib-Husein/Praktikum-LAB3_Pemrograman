program Soal02_Pointer;
uses crt;

var
  angka: integer;
  ptr1, ptr2: ^integer;

begin
  clrscr;
  angka := 100;

  ptr1 := @angka;
  ptr2 := @angka;

  writeln('a. Nilai variabel: ', angka);
  writeln('b. Alamat variabel: ', PtrUInt(@angka));
  writeln('c. Nilai yang ditunjuk pointer 1: ', ptr1^);
  writeln('   Nilai yang ditunjuk pointer 2: ', ptr2^);

  readln;
end.