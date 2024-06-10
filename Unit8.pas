unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm8 = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm8.Button1Click(Sender: TObject);
begin
DM.UTpenarikan.append;
DBEdit2.SetFocus;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
DM.UTpenarikan.post;
DM.UTkaryawan.Edit;
DM.UTkaryawan ['saldo_tabungan'] := DM.UTkaryawan ['saldo_tabungan']- StrToInt (DBEdit5.Text);
DM.UTkaryawan.Post;
ShowMessage('DATA PENAARIKAN SUKSES DISIMPAN');

end;

procedure TForm8.Button3Click(Sender: TObject);
begin
DM.UTpenarikan.Cancel;

end;

procedure TForm8.Button4Click(Sender: TObject);
begin
DM.UTpenarikan.Edit;
DM.UTkaryawan.Edit;
DM.UTkaryawan ['saldo_tabungan'] := DM.UTkaryawan ['saldo_tabungan']+ StrToInt (DBEdit5.Text);
DM.UTkaryawan.Post;
DBEdit5.Clear;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
DM.UTkaryawan.Edit;
DM.UTkaryawan ['saldo_tabungan'] := DM.UTkaryawan ['saldo_tabungan']+ StrToInt (DBEdit5.Text);
DM.UTpenarikan.Delete;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
Close;
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
if Not DM.UTpenarikan.Locate ('id_penarikan', Edit1.Text, [loPartialKey]) then
Begin
ShowMessage('ID Penarikan Tidak Dittemukan');
Edit1.Clear;
edit1.SetFocus;
end;
end;


procedure TForm8.DBEdit5Exit(Sender: TObject);
begin
if StrToInt (DBEdit5.Text)> StrtoInt (DBEdit4.Text) then
Begin
  Showmessage ('ADUH!! Saldo Tabungan Tidak Cukup Boss');
  DBEdit5.Clear;
  DBEdit5.SetFocus;
End;

end;

end.
