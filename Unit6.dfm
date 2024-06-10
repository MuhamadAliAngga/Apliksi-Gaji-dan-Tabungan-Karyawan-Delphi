object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 573
  ClientWidth = 784
  Color = 6605512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 53
    Top = 94
    Width = 54
    Height = 15
    Caption = 'ID Jabatan'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 53
    Top = 142
    Width = 75
    Height = 15
    Caption = 'Nama Jabatan'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 53
    Top = 190
    Width = 99
    Height = 15
    Caption = 'Tunjangan Jabatan'
    FocusControl = DBEdit3
  end
  object Label7: TLabel
    Left = 285
    Top = 17
    Width = 276
    Height = 40
    Caption = 'DATA JABATAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 53
    Top = 235
    Width = 58
    Height = 15
    Caption = 'Gaji_Pokok'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 170
    Top = 89
    Width = 121
    Height = 23
    DataField = 'id_jabatan'
    DataSource = DM.DSjabatan
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 170
    Top = 137
    Width = 154
    Height = 23
    DataField = 'nama_jabatan'
    DataSource = DM.DSjabatan
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 170
    Top = 185
    Width = 154
    Height = 23
    DataField = 'Tunjangan_jabatan'
    DataSource = DM.DSjabatan
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 456
    Top = 77
    Width = 249
    Height = 227
    Caption = 'Tombol'
    Color = 7454136
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
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
      Caption = 'Cari ID Jabatan'
      Color = 4227200
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
    Left = 24
    Top = 310
    Width = 721
    Height = 233
    DataSource = DM.DSjabatan
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_jabatan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_jabatan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tunjangan_jabatan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gaji_Pokok'
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit
    Left = 170
    Top = 232
    Width = 154
    Height = 23
    DataField = 'Gaji_Pokok'
    DataSource = DM.DSjabatan
    TabOrder = 5
  end
end
