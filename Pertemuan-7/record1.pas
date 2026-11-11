program record1;
uses crt;

type
  data = record
    nama : string;
    nim : string;
    kom : char;
  end;

var
  mahasiswa : data;

begin
  clrscr;
  textcolor(yellow);

  mahasiswa.nama := 'dyra';
  mahasiswa.nim := '251401063';
  mahasiswa.kom := 'C';

  writeln('Nama : ', mahasiswa.nama);
  writeln('Nim : ', mahasiswa.nim);
  writeln('kom : ', mahasiswa.kom);
end.
