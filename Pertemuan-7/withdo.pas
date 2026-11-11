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

  with sifat do
  begin
    write('Perkenalkan nama saya : '); readln(nama);
    write('Saya berkelamin (L/P): '); readln(kelamin);
    write('Saya Suka Angka     : '); readln(angka);
  end;
  readln;

end.