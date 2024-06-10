object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'Form11'
  ClientHeight = 500
  ClientWidth = 1096
  Color = 33023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label7: TLabel
    Left = 367
    Top = 11
    Width = 426
    Height = 32
    Caption = 'LAPORAN DATA PENGGAJIAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = -3
    Top = 280
    Width = 1100
    Height = 225
    DataSource = DM.DSRpenggajian
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_gaji'
        Title.Alignment = taCenter
        Title.Caption = 'ID Gaji'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_Karyawan'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Karyawan'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bulan'
        Title.Alignment = taCenter
        Title.Caption = 'Bulan'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tahun'
        Title.Alignment = taCenter
        Title.Caption = 'Tahun'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Title.Alignment = taCenter
        Title.Caption = 'NIK'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_jabatan'
        Title.Alignment = taCenter
        Title.Caption = 'ID Jabatan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tunjangan_Jabatan'
        Title.Alignment = taCenter
        Title.Caption = 'Tunjangan Jabatan'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gaji_Pokok'
        Title.Alignment = taCenter
        Title.Caption = 'Gaji Pokok'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tunjangan_Anak'
        Title.Alignment = taCenter
        Title.Caption = 'Tunjangan Anak'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tunjangan_Masa_Kerja'
        Title.Alignment = taCenter
        Title.Caption = 'Tunjangan Masa Kerja'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Potongan_Tabungan'
        Title.Alignment = taCenter
        Title.Caption = 'Potongan Tabungan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Gaji'
        Title.Alignment = taCenter
        Title.Caption = 'Total Gaji'
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 272
    Top = 49
    Width = 585
    Height = 202
    Caption = 'DATA PENGGAJIAN'
    Color = 5869288
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
  end
  object RadioButton1: TRadioButton
    Left = 352
    Top = 90
    Width = 113
    Height = 17
    Caption = 'NIK'
    TabOrder = 2
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 352
    Top = 129
    Width = 113
    Height = 17
    Caption = 'NAMA'
    TabOrder = 3
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 352
    Top = 209
    Width = 113
    Height = 17
    Caption = 'SEMUA'
    TabOrder = 4
    OnClick = RadioButton3Click
  end
  object Edit1: TEdit
    Left = 464
    Top = 87
    Width = 169
    Height = 23
    TabOrder = 5
    Visible = False
  end
  object Edit2: TEdit
    Left = 464
    Top = 126
    Width = 169
    Height = 23
    TabOrder = 6
    Visible = False
  end
  object Button1: TButton
    Left = 697
    Top = 86
    Width = 96
    Height = 25
    Caption = 'Cari'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 697
    Top = 164
    Width = 96
    Height = 25
    Caption = 'Cetak Slip Gaji'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 697
    Top = 205
    Width = 96
    Height = 25
    Caption = 'Keluar'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 697
    Top = 125
    Width = 96
    Height = 25
    Caption = 'Cetak Laporan'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 464
    Top = 165
    Width = 169
    Height = 23
    TabOrder = 11
    Visible = False
  end
  object RadioButton4: TRadioButton
    Left = 352
    Top = 168
    Width = 106
    Height = 17
    Caption = 'BULAN'
    TabOrder = 12
    OnClick = RadioButton4Click
  end
  object frxDBPENGGAJIAN: TfrxDBDataset
    UserName = 'frxDBnggajian'
    CloseDataSource = False
    DataSource = DM.DSRpenggajian
    BCDToCurrency = False
    Left = 235
    Top = 83
  end
  object frxRPENGGAJIAN: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45092.590941377300000000
    ReportOptions.LastChange = 45092.590941377300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 235
    Top = 139
    Datasets = <
      item
        DataSet = frxDBPENGGAJIAN
        DataSetName = 'frxDBnggajian'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 200.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 408.189240000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        DataSet = frxDBPENGGAJIAN
        DataSetName = 'frxDBnggajian'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'ID Gaji')
          ParentFont = False
          Style = 'Header'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 190.795300000000000000
          Top = 139.842610000000000000
          Width = 157.763760000000000000
          Height = 18.897650000000000000
          DataField = 'id_gaji'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBnggajian."id_gaji"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Nama Karyawan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 190.795300000000000000
          Top = 102.047310000000000000
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Nama_Karyawan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBnggajian."Nama_Karyawan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 190.795300000000000000
          Top = 64.252010000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBnggajian."tanggal"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Top = 177.637910000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'NIK')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 190.795300000000000000
          Top = 177.637910000000000000
          Width = 41.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBnggajian."nik"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 215.433210000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'ID Jabatan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 190.795300000000000000
          Top = 215.433210000000000000
          Width = 41.000000000000000000
          Height = 18.897650000000000000
          DataField = 'id_jabatan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBnggajian."id_jabatan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 102.047310000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Tunjangan Jabatan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 568.748300000000000000
          Top = 102.047310000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Tunjangan_Jabatan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Tunjangan_Jabatan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 64.252010000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Gaji Pokok')
          ParentFont = False
          Style = 'Header'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 568.748300000000000000
          Top = 64.252010000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Gaji_Pokok'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Gaji_Pokok"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 139.842610000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Tunjangan Anak')
          ParentFont = False
          Style = 'Header'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 568.748300000000000000
          Top = 139.842610000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Tunjangan_Anak'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Tunjangan_Anak"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 177.637910000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Tunjangan Masa Kerja')
          ParentFont = False
          Style = 'Header'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 568.748300000000000000
          Top = 177.637910000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Tunjangan_Masa_Kerja'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Tunjangan_Masa_Kerja"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 215.433210000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Potongan Tabungan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 568.748300000000000000
          Top = 215.433210000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Potongan_Tabungan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Potongan_Tabungan"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 253.228510000000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Total Gaji')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 568.748300000000000000
          Top = 253.228510000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Total_Gaji'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Total_Gaji"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 693.472790000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            'Slip Gaji')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 302.362400000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bagian Keuangan')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 374.173470000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(.......................)')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 302.362400000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Karyawan')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 374.173470000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '( [frxDBnggajian."Nama_Karyawan"])')
          ParentFont = False
        end
      end
    end
  end
  object frxDBPenggajian2: TfrxDBDataset
    UserName = 'frxDBslipgaji'
    CloseDataSource = False
    DataSource = DM.DSRslipgaji
    BCDToCurrency = False
    Left = 899
    Top = 91
  end
  object frxRPenggajian2: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45092.599770937500000000
    ReportOptions.LastChange = 45092.599770937500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 899
    Top = 147
    Datasets = <
      item
        DataSet = frxDBPENGGAJIAN
        DataSetName = 'frxDBnggajian'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN PENGGAJIAN KARYAWAN')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 89.149737530000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Gaji')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 81.590677530000000000
          Width = 122.458727030000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Karyawan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 200.269874570000000000
          Width = 59.204527560000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 259.474402130000000000
          Width = 28.469685040000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'NIK')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 287.944087170000000000
          Width = 81.338590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'ID Jabatan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 369.282677170000000000
          Width = 129.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Tunjangan Jabatan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 498.282677170000000000
          Width = 76.607742780000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Gaji Pokok')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 574.890419950000000000
          Width = 111.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Tunjangan Anak')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 685.890419950000000000
          Width = 153.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Tunjangan Masa Kerja')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 838.890419950000000000
          Width = 137.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Potongan Tabungan')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 975.890419950000000000
          Width = 71.038713910000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Gaji')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBPENGGAJIAN
        DataSetName = 'frxDBnggajian'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Width = 89.149737530000000000
          Height = 18.897650000000000000
          DataField = 'id_gaji'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."id_gaji"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 81.590677530000000000
          Width = 122.458727030000000000
          Height = 18.897650000000000000
          DataField = 'Nama_Karyawan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."Nama_Karyawan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 200.269874570000000000
          Width = 59.204527560000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."tanggal"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 259.474402130000000000
          Width = 28.469685040000000000
          Height = 18.897650000000000000
          DataField = 'nik'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."nik"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 287.944087170000000000
          Width = 81.338590000000000000
          Height = 18.897650000000000000
          DataField = 'id_jabatan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."id_jabatan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 369.282677170000000000
          Width = 129.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Tunjangan_Jabatan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."Tunjangan_Jabatan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 498.282677170000000000
          Width = 76.607742780000000000
          Height = 18.897650000000000000
          DataField = 'Gaji_Pokok'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBnggajian."Gaji_Pokok"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 574.890419950000000000
          Width = 111.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Tunjangan_Anak'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."Tunjangan_Anak"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 685.890419950000000000
          Width = 153.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Tunjangan_Masa_Kerja'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."Tunjangan_Masa_Kerja"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 838.890419950000000000
          Width = 137.000000000000000000
          Height = 18.897650000000000000
          DataField = 'Potongan_Tabungan'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."Potongan_Tabungan"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 975.890419950000000000
          Width = 71.038713910000000000
          Height = 18.897650000000000000
          DataField = 'Total_Gaji'
          DataSet = frxDBPENGGAJIAN
          DataSetName = 'frxDBnggajian'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBnggajian."Total_Gaji"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
end
