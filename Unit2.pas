unit Unit2;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  ODBCUniProvider, AccessUniProvider, MySQLUniProvider;

type
  TDM = class(TDataModule)
    UniConnection1: TUniConnection;
    DSoperator: TUniDataSource;
    UToperator: TUniTable;
    UToperatorusser_name: TStringField;
    UToperatorpassword: TStringField;
    MySQLUniProvider1: TMySQLUniProvider;
    DSkaryawan: TUniDataSource;
    UTkaryawan: TUniTable;
    UTkaryawannik: TStringField;
    UTkaryawannama: TStringField;
    UTkaryawanalamat: TStringField;
    UTkaryawanjumlah_anak: TIntegerField;
    UTkaryawantmt: TDateField;
    UTkaryawansaldo_tabungan: TIntegerField;
    UTjabatan: TUniTable;
    DSjabatan: TUniDataSource;
    UTjabatanid_jabatan: TStringField;
    UTjabatannama_jabatan: TStringField;
    UTjabatanTunjangan_jabatan: TIntegerField;
    UTgaji: TUniTable;
    DSgaji: TUniDataSource;
    DSpenarikan: TUniDataSource;
    UTpenarikan: TUniTable;
    UTpenarikanid_penarikan: TStringField;
    UTpenarikantanggal: TDateField;
    UTpenarikannik: TStringField;
    UTpenarikanjumlah_penarikan: TIntegerField;
    QCari: TUniQuery;
    DSCari: TUniDataSource;
    Qjabatan: TUniQuery;
    DSRJabatan: TUniDataSource;
    Qpenggajian: TUniQuery;
    Qpenarikan: TUniQuery;
    DSRpenggajian: TUniDataSource;
    DSRpenarikan: TUniDataSource;
    UTjabatanGaji_Pokok: TIntegerField;
    UTgajiid_gaji: TStringField;
    UTgajiNama_Karyawan: TStringField;
    UTgajitanggal: TDateField;
    UTgajibulan: TStringField;
    UTgajitahun: TIntegerField;
    UTgajinik: TStringField;
    UTgajiid_jabatan: TStringField;
    UTgajiTunjangan_Jabatan: TIntegerField;
    UTgajiGaji_Pokok: TIntegerField;
    UTgajiTunjangan_Anak: TIntegerField;
    UTgajiTunjangan_Masa_Kerja: TIntegerField;
    UTgajiPotongan_Tabungan: TIntegerField;
    UTgajiTotal_Gaji: TIntegerField;
    Qslipgaji: TUniQuery;
    DSRslipgaji: TUniDataSource;
    Qslipgajiid_gaji: TStringField;
    QslipgajiNama_Karyawan: TStringField;
    Qslipgajitanggal: TDateField;
    Qslipgajibulan: TStringField;
    Qslipgajitahun: TIntegerField;
    Qslipgajinik: TStringField;
    Qslipgajiid_jabatan: TStringField;
    QslipgajiTunjangan_Jabatan: TIntegerField;
    QslipgajiGaji_Pokok: TIntegerField;
    QslipgajiTunjangan_Anak: TIntegerField;
    QslipgajiTunjangan_Masa_Kerja: TIntegerField;
    QslipgajiPotongan_Tabungan: TIntegerField;
    QslipgajiTotal_Gaji: TIntegerField;
    Qpenarikanid_penarikan: TStringField;
    Qpenarikantanggal: TDateField;
    Qpenarikannik: TStringField;
    Qpenarikanjumlah_penarikan: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
