program ArrayRecordDanWithDo;

uses crt;

const
  MAKS_DATA = 3;

type
  Mahasiswa = record
    nim: string;
    nama: string;
    prodi: string;
  end;

var
  daftarMhs: array[1..MAKS_DATA] of Mahasiswa;
  i, jumlah: integer;

begin
  clrscr;
  
  write('Masukkan jumlah mahasiswa (maks ', MAKS_DATA, '): ');
  readln(jumlah);

  if jumlah > MAKS_DATA then 
    jumlah := MAKS_DATA;

  writeln;
  writeln('=== INPUT DATA MAHASISWA ===');
  
  for i := 1 to jumlah do
  begin

    with daftarMhs[i] do
    begin
      writeln('Data Mahasiswa ke-', i);
      write('  NIM   : '); readln(nim);
      write('  Nama  : '); readln(nama);      
      write('  Prodi : '); readln(prodi);       
      writeln('----------------------------');
    end;
  end;

  clrscr;
  writeln('=== HASIL DATA MAHASISWA KELAS ===');
  
  for i := 1 to jumlah do
  begin
    with daftarMhs[i] do
    begin
      writeln(i, '. ', nama, ' (NIM: ', nim, ') - ', prodi);
    end;
  end;

  writeln;
  writeln('Tekan Enter untuk keluar...');
  readln;
end.