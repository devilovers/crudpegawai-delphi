unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.SqlExpr, Data.Win.ADODB, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnTambah: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnSimpan: TButton;
    btnBatal: TButton;
    ADOTable1: TADOTable;
    ADOTable1nip: TWideStringField;
    ADOTable1nama: TWideStringField;
    ADOTable1golongan: TWideStringField;
    ADOTable1tgl_lahir: TDateField;
    ADOTable1gaji_pokok: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    procedure btnTambahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTambahClick(Sender: TObject);
begin
ADOTable1.Append;
end;

procedure TForm1.btnBatalClick(Sender: TObject);
begin
ADOTable1.Cancel;
end;

procedure TForm1.btnEditClick(Sender: TObject);
begin
ADOTable1.Edit;
end;

procedure TForm1.btnHapusClick(Sender: TObject);
begin
ADOTable1.Delete;
end;

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
ADOTable1.Post;
end;

end.
