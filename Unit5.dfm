object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 574
  ClientWidth = 785
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 89
    Width = 27
    Height = 17
    Caption = 'NIK'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 120
    Width = 42
    Height = 17
    Caption = 'Nama'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 154
    Width = 51
    Height = 17
    Caption = 'Alamat'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 183
    Width = 95
    Height = 17
    Caption = 'Jumlah Anak'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 215
    Width = 30
    Height = 17
    Caption = 'TMT'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 249
    Width = 117
    Height = 17
    Caption = 'Saldo Tabungan'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 232
    Top = 17
    Width = 315
    Height = 40
    Caption = 'DATA KARYAWAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 175
    Top = 86
    Width = 129
    Height = 23
    DataField = 'nik'
    DataSource = DM.DSkaryawan
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 175
    Top = 117
    Width = 185
    Height = 23
    DataField = 'nama'
    DataSource = DM.DSkaryawan
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 175
    Top = 148
    Width = 185
    Height = 23
    DataField = 'alamat'
    DataSource = DM.DSkaryawan
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 175
    Top = 180
    Width = 129
    Height = 23
    DataField = 'jumlah_anak'
    DataSource = DM.DSkaryawan
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 175
    Top = 212
    Width = 129
    Height = 23
    DataField = 'tmt'
    DataSource = DM.DSkaryawan
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 175
    Top = 246
    Width = 129
    Height = 23
    DataField = 'saldo_tabungan'
    DataSource = DM.DSkaryawan
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 448
    Top = 86
    Width = 249
    Height = 227
    Caption = 'Tombol'
    Color = 16744576
    ParentBackground = False
    ParentColor = False
    TabOrder = 6
    object Button1: TButton
      Left = 32
      Top = 21
      Width = 73
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 32
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 32
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 136
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Ubah'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 136
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 136
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 5
      OnClick = Button6Click
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 111
      Width = 217
      Height = 105
      Caption = 'Cari NIK'
      Color = 12615680
      ParentBackground = False
      ParentColor = False
      TabOrder = 6
      object Edit1: TEdit
        Left = 48
        Top = 24
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object Button7: TButton
        Left = 72
        Top = 53
        Width = 75
        Height = 25
        Caption = 'CARI'
        TabOrder = 1
        OnClick = Button7Click
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 326
    Width = 721
    Height = 233
    DataSource = DM.DSkaryawan
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Title.Caption = 'NIK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Title.Caption = 'Alamat'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_anak'
        Title.Alignment = taCenter
        Title.Caption = 'Jumlah Anak'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tmt'
        Title.Alignment = taCenter
        Title.Caption = 'TMT'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_tabungan'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Tabungan'
        Width = 99
        Visible = True
      end>
  end
end
