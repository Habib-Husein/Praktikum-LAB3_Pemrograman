program NestedRecordCuy;

uses crt;

type
  Tanggal = record
    hari: integer;
    bulan: integer;
    tahun: integer;
  end;

  ProfilMhs = record
    nama: string;
    asalKampus: string;
    tglLahir: Tanggal;
  end;

var
  profil: ProfilMhs;

begin
  clrscr;
  
  profil.nama := 'Bambang';
  profil.asalKampus := 'Universitas Sumatera Utara';
  

  profil.tglLahir.hari := 15;
  profil.tglLahir.bulan := 8;
  profil.tglLahir.tahun := 2005;

  writeln('=== PROFIL MAHASISWA ===');
  writeln('Nama        : ', profil.nama);
  writeln('Kampus      : ', profil.asalKampus);
  
  writeln('Tgl Lahir   : ', profil.tglLahir.hari, '/', 
                          profil.tglLahir.bulan, '/', 
                          profil.tglLahir.tahun);
                          
  readln;
end.