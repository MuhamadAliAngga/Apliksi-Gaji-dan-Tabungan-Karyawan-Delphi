unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, DateUtils, frxClass, frxDBSet,
  Vcl.Buttons;

type
  TForm7 = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    DBGrid1: TDBGrid;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    Button8: TButton;
    frxDBDatapenggajian: TfrxDBDataset;
    frxRPenggajian: TfrxReport;
    Button2: TButton;
    BitBtn1: TBitBtn;
    DBEdit11: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtPrintClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit2, Unit6;

procedure TForm7.Button1Click(Sender: TObject);
begin
DM.UTgaji.append;
DBEdit2.SetFocus;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
frxRPenggajian.ShowReport();
end;

procedure TForm7.BtPrintClick(Sender: TObject);
begin
DM.UTGaji.post;
DM.UTkaryawan.Edit;
DM.UTkaryawan ['saldo_tabungan'] := DM.UTkaryawan ['saldo_tabungan']+ StrToInt (DBEdit14.Text);
DM.UTkaryawan.Post;
ShowMessage('DATA SUKSES DISIMPAN');
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
DM.UTgaji.Cancel;
DBEdit2.SetFocus;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
DM.UTgaji.Edit;
DM.UTkaryawan.Edit;
DM.UTkaryawan ['saldo_tabungan'] := DM.UTkaryawan ['saldo_tabungan']- StrToInt (DBEdit14.Text);
DBEdit14.Clear;
DM.UTkaryawan.Post;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
DM.UTkaryawan.Edit;
DM.UTkaryawan ['saldo_tabungan'] := DM.UTkaryawan ['saldo_tabungan']- StrToInt (DBEdit14.Text);
DM.UTkaryawan.Post;
DM.UTgaji.Delete;
DBEdit2.SetFocus;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
Close;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
if Not DM.UTgaji.Locate ('id_gaji', Edit1.Text, [loPartialKey]) then
Begin
ShowMessage('ID Gaji Tidak Ditemukan');
Edit1.Clear;
edit1.SetFocus;
end;
end;


procedure TForm7.Button8Click(Sender: TObject);
begin
DBEdit15.Text := inttostr (Strtoint (DBEdit10.Text) +Strtoint (DBEdit3.Text)+Strtoint(DBEdit12.Text)+Strtoint(DBEdit13.Text)-Strtoint(DBEdit14.Text));
DBEdit11.Text := IntToStr (StrToInt (DBEdit3.Text) +0);
DBEdit17.Text := IntToStr (StrToInt (DBEdit10.Text) +0);
DBEdit16.Text := DBEdit8.Text + ' ';
end;

procedure TForm7.DBComboBox1Change(Sender: TObject);
begin
DBEdit1.Text := DBLookupComboBox1.text+ '-'+ DBComboBox1.Text+ '-'+DBEdit4.Text;
end;

procedure TForm7.DBEdit4Change(Sender: TObject);
begin
DBEdit1.Text := DBLookupComboBox1.text+ '-'+ DBComboBox1.Text+ '-'+DBEdit4.Text;
end;

procedure TForm7.DBLookupComboBox1Click(Sender: TObject);
begin
DBEdit1.Text := DBLookupComboBox1.text+ '-'+ DBComboBox1.Text+ '-'+DBEdit4.Text;
DBEdit12.Text := inttostr (Strtoint (DBEdit5.Text)* 75000);
DBEdit13.Text := inttostr (YearsBetween(DateOf(Now), strtoDate (DBEdit6.Text))*100000);

end;

end.
