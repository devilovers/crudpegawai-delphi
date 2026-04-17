object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Data Pegawai'
  ClientHeight = 553
  ClientWidth = 824
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 56
    Top = 80
    Width = 19
    Height = 15
    Caption = 'NIP'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 128
    Width = 32
    Height = 15
    Caption = 'Nama'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 176
    Width = 52
    Height = 15
    Caption = 'Golongan'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 56
    Top = 224
    Width = 71
    Height = 15
    Caption = 'Tanggal Lahir'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 56
    Top = 272
    Width = 56
    Height = 15
    Caption = 'Gaji Pokok'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 328
    Top = 16
    Width = 148
    Height = 28
    Caption = 'DATA PEGAWAI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 433
    Width = 824
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnTambah: TButton
    Left = 56
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 1
    OnClick = btnTambahClick
  end
  object btnEdit: TButton
    Left = 152
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 248
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btnHapusClick
  end
  object btnSimpan: TButton
    Left = 344
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 440
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 96
    Width = 304
    Height = 23
    DataField = 'nip'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 144
    Width = 561
    Height = 23
    DataField = 'nama'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 192
    Width = 154
    Height = 23
    DataField = 'golongan'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 240
    Width = 154
    Height = 23
    DataField = 'tgl_lahir'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit5: TDBEdit
    Left = 56
    Top = 288
    Width = 154
    Height = 23
    DataField = 'gaji_pokok'
    DataSource = DataSource1
    TabOrder = 10
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=pegaw' +
      'ai_db'
    LoginPrompt = False
    Left = 744
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 744
    Top = 176
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'pegawai'
    Left = 744
    Top = 104
    object ADOTable1nip: TWideStringField
      FieldName = 'nip'
    end
    object ADOTable1nama: TWideStringField
      FieldName = 'nama'
      Size = 50
    end
    object ADOTable1golongan: TWideStringField
      FieldName = 'golongan'
      Size = 10
    end
    object ADOTable1tgl_lahir: TDateField
      FieldName = 'tgl_lahir'
    end
    object ADOTable1gaji_pokok: TIntegerField
      FieldName = 'gaji_pokok'
    end
  end
end
