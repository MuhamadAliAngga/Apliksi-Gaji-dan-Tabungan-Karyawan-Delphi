object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 554
  ClientWidth = 624
  Color = 13040379
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label7: TLabel
    Left = 169
    Top = 8
    Width = 319
    Height = 40
    Caption = 'DATA PENARIKAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 79
    Height = 17
    Caption = 'ID Penarikan'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 100
    Width = 49
    Height = 17
    Caption = 'Tanggal'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 129
    Width = 22
    Height = 17
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 155
    Width = 36
    Height = 17
    Caption = 'Nama'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 183
    Width = 99
    Height = 17
    Caption = 'Saldo Tabungan'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 211
    Width = 110
    Height = 17
    Caption = 'Jumlah Penarikan'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 71
    Width = 145
    Height = 23
    DataField = 'id_penarikan'
    DataSource = DM.DSpenarikan
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 99
    Width = 145
    Height = 23
    DataField = 'tanggal'
    DataSource = DM.DSpenarikan
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 152
    Top = 127
    Width = 145
    Height = 23
    DataField = 'nik'
    DataSource = DM.DSpenarikan
    KeyField = 'nik'
    ListField = 'nik'
    ListSource = DM.DSkaryawan
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 152
    Top = 154
    Width = 145
    Height = 23
    DataField = 'nama'
    DataSource = DM.DSkaryawan
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 152
    Top = 182
    Width = 145
    Height = 23
    DataField = 'saldo_tabungan'
    DataSource = DM.DSkaryawan
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 211
    Width = 145
    Height = 23
    DataField = 'jumlah_penarikan'
    DataSource = DM.DSpenarikan
    TabOrder = 5
    OnExit = DBEdit5Exit
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 288
    Width = 561
    Height = 258
    DataSource = DM.DSpenarikan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_penarikan'
        Title.Alignment = taCenter
        Title.Caption = 'ID Penarikan'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Title.Caption = 'NIK'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_penarikan'
        Title.Alignment = taCenter
        Title.Caption = 'Jumlah Penarikan'
        Width = 141
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 392
    Top = 63
    Width = 184
    Height = 210
    Caption = 'Tombol'
    Color = 10352633
    ParentBackground = False
    ParentColor = False
    TabOrder = 7
    object Button1: TButton
      Left = 7
      Top = 19
      Width = 73
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 9
      Top = 49
      Width = 71
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 10
      Top = 80
      Width = 71
      Height = 25
      Caption = 'Batal'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 104
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 104
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 104
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 5
      OnClick = Button6Click
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 115
      Width = 145
      Height = 86
      Caption = 'Cari ID Penarikan'
      Color = 5501172
      ParentBackground = False
      ParentColor = False
      TabOrder = 6
      object Edit1: TEdit
        Left = 13
        Top = 18
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object Button7: TButton
        Left = 39
        Top = 45
        Width = 75
        Height = 25
        Caption = 'CARI'
        TabOrder = 1
        OnClick = Button7Click
      end
    end
  end
end
