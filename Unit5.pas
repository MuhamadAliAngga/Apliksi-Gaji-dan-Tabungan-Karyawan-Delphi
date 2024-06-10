unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
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
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm5.Button1Click(Sender: TObject);
begin
DM.UTKaryawan.append;
DBEdit1.SetFocus;
DBEdit6.Text := '0';
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
DM.UTKaryawan.post;
ShowMessage('DATA SUKSES DISIMPAN');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
DM.UTKaryawan.Cancel;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
DM.UTKaryawan.Edit;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
DM.UTKaryawan.Delete;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
Close;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
if Not DM.UTkaryawan.Locate ('nik', Edit1.Text, [loPartialKey]) then
Begin
ShowMessage('NIK Tidak Dittemukan');
Edit1.Clear;
edit1.SetFocus;
End;

end;

end.
