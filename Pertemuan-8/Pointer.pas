program BelajarPointer;

var
  angka : integer;
  pAngka : ^integer; // caret di depan nunjukin kalau variabel itu merupakan pointer

begin
  angka := 10;
  
  pAngka := @angka; // ambil alamat dr var angka
  
  writeln('Nilai Angkanya : ', angka);
  writeln('Nilai pointernya : ', pAngka^); // ambil isi dr alamat yg dituju dr pointer
end.