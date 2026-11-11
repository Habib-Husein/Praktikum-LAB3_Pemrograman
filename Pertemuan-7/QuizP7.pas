program HasilStudiMahasiswa;

uses crt;

const
  MAX_MHS = 50;
  MAX_MK  = 20;

type
  TMatKul = record
    namaMK     : string;
    sks        : integer;
    nilaiHuruf : string;
    angka      : real;
  end;

  TMahasiswa = record
    nim    : string;
    nama   : string;
    jmlMK  : integer;
    matkul : array[1..MAX_MK] of TMatKul;
  end;

var
  dataMhs    : array[1..MAX_MHS] of TMahasiswa;
  jmlMhs, i, j : integer;
  totalSKS   : integer;
  totalBobot : real;
  ips        : real;

begin
  clrscr;
  
  write('Masukkan jumlah mahasiswa: ');
  readln(jmlMhs);

  for i := 1 to jmlMhs do
  begin
    clrscr;
    writeln('========================================');
    writeln('       INPUT DATA MAHASISWA KE-', i);
    writeln('========================================');
    
    with dataMhs[i] do
    begin
      write('NIM             : '); readln(nim);
      write('Nama            : '); readln(nama);
      write('Jumlah Mata Kuliah: '); readln(jmlMK);
      
      writeln('----------------------------------------');
      writeln('Masukkan Detail Mata Kuliah:');
      for j := 1 to jmlMK do
      begin
        writeln('Mata Kuliah ke-', j);
        
        with matkul[j] do
        begin
          write('  Nama MK       : '); readln(namaMK);
          write('  Jumlah SKS    : '); readln(sks);
          write('  Nilai (A/B+/B/C+/C/D/E): '); readln(nilaiHuruf);
          
          if (nilaiHuruf = 'a') or (nilaiHuruf = 'A') then angka := 4.0
          else if (nilaiHuruf = 'b+') or (nilaiHuruf = 'B+') then angka := 3.5
          else if (nilaiHuruf = 'b') or (nilaiHuruf = 'B') then angka := 3.0
          else if (nilaiHuruf = 'c+') or (nilaiHuruf = 'C+') then angka := 2.5
          else if (nilaiHuruf = 'c') or (nilaiHuruf = 'C') then angka := 2.0
          else if (nilaiHuruf = 'd') or (nilaiHuruf = 'D') then angka := 1.0
          else if (nilaiHuruf = 'e') or (nilaiHuruf = 'E') then angka := 0.0
          else angka := 0.0;
        end;
      end;
    end;
  end;

  clrscr;
  writeln('========================================');
  writeln('       MENAMPILKAN DATA HASIL STUDI');
  writeln('========================================');
  writeln('Tekan tombol apa saja untuk mulai...');
  readkey;

  for i := 1 to jmlMhs do
  begin
    clrscr;
   
    with dataMhs[i] do
    begin
      writeln('========================================');
      writeln('          HASIL STUDI MAHASISWA');
      writeln('========================================');
      writeln('NIM   : ', nim);
      writeln('Nama  : ', nama);
      writeln('----------------------------------------');
      writeln('No  Mata Kuliah          SKS  Nilai  Angka');
      writeln('----------------------------------------');
      
      totalSKS := 0;
      totalBobot := 0;
      
      for j := 1 to jmlMK do
      begin
        with matkul[j] do
        begin
          writeln(j:2, '  ', namaMK:18, '  ', sks:3, '    ', nilaiHuruf:3, '    ', angka:4:1);
          totalSKS := totalSKS + sks;
          totalBobot := totalBobot + (sks * angka);
        end;
      end;
      
      writeln('----------------------------------------');
      if totalSKS > 0 then
        ips := totalBobot / totalSKS
      else
        ips := 0;
        
      writeln('Total SKS   : ', totalSKS);
      writeln('IP Semester : ', ips:0:2);
      writeln('========================================');
    end;

    if i < jmlMhs then
    begin
      writeln();
      write('Tekan tombol apa saja untuk melihat mahasiswa berikutnya...');
      readkey;
    end
    else
    begin
      writeln();
      write('Semua data telah selesai ditampilkan. Tekan tombol apa saja untuk keluar...');
      readkey;
    end;
  end;
end.