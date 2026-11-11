program AssignmentRecord;

uses crt;

type
  Mahasiswa = record
    nim: string;
    nama: string;
    ipk: real;
  end;

var
  mhs1, mhs2: Mahasiswa;

begin
  clrscr;

  mhs1.nim := '220102001';
  mhs1.nama := 'Bambang';
  mhs1.ipk := 3.85;

  mhs2 := mhs1;

  writeln('=== DATA MAHASISWA ===');
  writeln('NIM  : ', mhs2.nim);
  writeln('Nama : ', mhs2.nama);
  writeln('IPK  : ', mhs2.ipk:0:2);
  
  readln;
end.