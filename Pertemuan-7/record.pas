program recordcuy;

uses crt;

type 
  bebas = record
    nama   : string;
    kelamin: char;
    angka  : integer;
  end;

var 
  sifat : bebas;

begin
  clrscr;
  writeln('Perkenalkan namaku : '); readln(sifat.nama);
  writeln('Aku berkelamin (L/P): '); readln(sifat.kelamin);
  writeln('Aku Suka Angka     : '); readln(sifat.angka);

  readln;
end.
