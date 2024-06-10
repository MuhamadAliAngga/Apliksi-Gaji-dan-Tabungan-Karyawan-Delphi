object DM: TDM
  Height = 548
  Width = 484
  PixelsPerInch = 96
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'dbgajidantabungan'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 16
  end
  object DSoperator: TUniDataSource
    DataSet = UToperator
    Left = 40
    Top = 88
  end
  object UToperator: TUniTable
    TableName = 'toperator'
    Connection = UniConnection1
    Active = True
    Left = 112
    Top = 88
    object UToperatorusser_name: TStringField
      FieldName = 'usser_name'
      Required = True
      Size = 10
    end
    object UToperatorpassword: TStringField
      FieldName = 'password'
      Required = True
      Size = 10
    end
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 289
    Top = 15
  end
  object DSkaryawan: TUniDataSource
    DataSet = UTkaryawan
    Left = 40
    Top = 144
  end
  object UTkaryawan: TUniTable
    TableName = 'tkaryawaan'
    Connection = UniConnection1
    Active = True
    Left = 112
    Top = 144
    object UTkaryawannik: TStringField
      DisplayWidth = 10
      FieldName = 'nik'
      Required = True
      Size = 5
    end
    object UTkaryawannama: TStringField
      DisplayWidth = 21
      FieldName = 'nama'
      Required = True
    end
    object UTkaryawanalamat: TStringField
      DisplayWidth = 19
      FieldName = 'alamat'
      Required = True
      Size = 50
    end
    object UTkaryawanjumlah_anak: TIntegerField
      DisplayWidth = 11
      FieldName = 'jumlah_anak'
      Required = True
    end
    object UTkaryawantmt: TDateField
      DisplayWidth = 11
      FieldName = 'tmt'
      Required = True
    end
    object UTkaryawansaldo_tabungan: TIntegerField
      DisplayWidth = 17
      FieldName = 'saldo_tabungan'
      Required = True
    end
  end
  object UTjabatan: TUniTable
    TableName = 'tjabatan'
    Connection = UniConnection1
    Active = True
    Left = 112
    Top = 208
    object UTjabatanid_jabatan: TStringField
      FieldName = 'id_jabatan'
      Required = True
      Size = 5
    end
    object UTjabatannama_jabatan: TStringField
      FieldName = 'nama_jabatan'
      Required = True
      Size = 15
    end
    object UTjabatanTunjangan_jabatan: TIntegerField
      FieldName = 'Tunjangan_jabatan'
      Required = True
    end
    object UTjabatanGaji_Pokok: TIntegerField
      FieldName = 'Gaji_Pokok'
      Required = True
    end
  end
  object DSjabatan: TUniDataSource
    DataSet = UTjabatan
    Left = 40
    Top = 208
  end
  object UTgaji: TUniTable
    TableName = 'tgaji'
    Connection = UniConnection1
    Active = True
    Left = 112
    Top = 274
    object UTgajiid_gaji: TStringField
      FieldName = 'id_gaji'
      Required = True
      Size = 25
    end
    object UTgajiNama_Karyawan: TStringField
      FieldName = 'Nama_Karyawan'
      Required = True
    end
    object UTgajitanggal: TDateField
      FieldName = 'tanggal'
    end
    object UTgajibulan: TStringField
      FieldName = 'bulan'
      Required = True
      Size = 25
    end
    object UTgajitahun: TIntegerField
      FieldName = 'tahun'
      Required = True
    end
    object UTgajinik: TStringField
      FieldName = 'nik'
      Required = True
      Size = 5
    end
    object UTgajiid_jabatan: TStringField
      FieldName = 'id_jabatan'
      Required = True
      Size = 5
    end
    object UTgajiTunjangan_Jabatan: TIntegerField
      FieldName = 'Tunjangan_Jabatan'
      Required = True
    end
    object UTgajiGaji_Pokok: TIntegerField
      FieldName = 'Gaji_Pokok'
      Required = True
    end
    object UTgajiTunjangan_Anak: TIntegerField
      FieldName = 'Tunjangan_Anak'
      Required = True
    end
    object UTgajiTunjangan_Masa_Kerja: TIntegerField
      FieldName = 'Tunjangan_Masa_Kerja'
      Required = True
    end
    object UTgajiPotongan_Tabungan: TIntegerField
      FieldName = 'Potongan_Tabungan'
      Required = True
    end
    object UTgajiTotal_Gaji: TIntegerField
      FieldName = 'Total_Gaji'
      Required = True
    end
  end
  object DSgaji: TUniDataSource
    DataSet = UTgaji
    Left = 40
    Top = 274
  end
  object DSpenarikan: TUniDataSource
    DataSet = UTpenarikan
    Left = 32
    Top = 338
  end
  object UTpenarikan: TUniTable
    TableName = 'tpenarikan'
    Connection = UniConnection1
    Active = True
    Left = 112
    Top = 338
    object UTpenarikanid_penarikan: TStringField
      FieldName = 'id_penarikan'
      Required = True
      Size = 5
    end
    object UTpenarikantanggal: TDateField
      FieldName = 'tanggal'
    end
    object UTpenarikannik: TStringField
      FieldName = 'nik'
      Required = True
      Size = 5
    end
    object UTpenarikanjumlah_penarikan: TIntegerField
      FieldName = 'jumlah_penarikan'
      Required = True
    end
  end
  object QCari: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *FROM tkaryawaan'
      '&WHERE'
      '&ORDERBY')
    Left = 368
    Top = 96
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'ORDERBY'
      end>
  end
  object DSCari: TUniDataSource
    DataSet = QCari
    Left = 296
    Top = 96
  end
  object Qjabatan: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *FROM tjabatan'
      '&WHERE'
      '&ORDERBY')
    Left = 368
    Top = 160
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'ORDERBY'
      end>
  end
  object DSRJabatan: TUniDataSource
    DataSet = Qjabatan
    Left = 296
    Top = 160
  end
  object Qpenggajian: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *FROM tgaji'
      '&WHERE'
      '&ORDERBY')
    Active = True
    Left = 368
    Top = 224
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'ORDERBY'
      end>
  end
  object Qpenarikan: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *FROM tpenarikan'
      '&WHERE'
      '&ORDERBY')
    Active = True
    Left = 368
    Top = 368
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'ORDERBY'
      end>
    object Qpenarikanid_penarikan: TStringField
      FieldName = 'id_penarikan'
      Required = True
      Size = 5
    end
    object Qpenarikantanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qpenarikannik: TStringField
      FieldName = 'nik'
      Required = True
      Size = 5
    end
    object Qpenarikanjumlah_penarikan: TIntegerField
      FieldName = 'jumlah_penarikan'
      Required = True
    end
  end
  object DSRpenggajian: TUniDataSource
    DataSet = Qpenggajian
    Left = 288
    Top = 224
  end
  object DSRpenarikan: TUniDataSource
    DataSet = Qpenarikan
    Left = 288
    Top = 368
  end
  object Qslipgaji: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT *FROM tgaji'
      '&WHERE'
      '&ORDERBY')
    Left = 368
    Top = 296
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'ORDERBY'
      end>
    object Qslipgajiid_gaji: TStringField
      FieldName = 'id_gaji'
      Required = True
      Size = 25
    end
    object QslipgajiNama_Karyawan: TStringField
      FieldName = 'Nama_Karyawan'
      Required = True
    end
    object Qslipgajitanggal: TDateField
      FieldName = 'tanggal'
    end
    object Qslipgajibulan: TStringField
      FieldName = 'bulan'
      Required = True
      Size = 25
    end
    object Qslipgajitahun: TIntegerField
      FieldName = 'tahun'
      Required = True
    end
    object Qslipgajinik: TStringField
      FieldName = 'nik'
      Required = True
      Size = 5
    end
    object Qslipgajiid_jabatan: TStringField
      FieldName = 'id_jabatan'
      Required = True
      Size = 5
    end
    object QslipgajiTunjangan_Jabatan: TIntegerField
      FieldName = 'Tunjangan_Jabatan'
      Required = True
    end
    object QslipgajiGaji_Pokok: TIntegerField
      FieldName = 'Gaji_Pokok'
      Required = True
    end
    object QslipgajiTunjangan_Anak: TIntegerField
      FieldName = 'Tunjangan_Anak'
      Required = True
    end
    object QslipgajiTunjangan_Masa_Kerja: TIntegerField
      FieldName = 'Tunjangan_Masa_Kerja'
      Required = True
    end
    object QslipgajiPotongan_Tabungan: TIntegerField
      FieldName = 'Potongan_Tabungan'
      Required = True
    end
    object QslipgajiTotal_Gaji: TIntegerField
      FieldName = 'Total_Gaji'
      Required = True
    end
  end
  object DSRslipgaji: TUniDataSource
    DataSet = Qslipgaji
    Left = 288
    Top = 296
  end
end
