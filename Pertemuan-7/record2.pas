program Recordlagi;

type
  Mahasiswa = record
    nim: string;
    nama: string;
    ipk: real;
  end;

var
  mhs: Mahasiswa;

begin
  mhs.nim := '220102001';
  mhs.nama := 'Budi Santoso';
  mhs.ipk := 3.75;

  writeln('=== DATA MAHASISWA ===');
  writeln('NIM  : ', mhs.nim);
  writeln('Nama : ', mhs.nama);
  writeln('IPK  : ', mhs.ipk:0:2);
end.