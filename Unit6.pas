unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm6.Button1Click(Sender: TObject);
begin
DM.UTjabatan.append;
DBEdit1.SetFocus;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
DM.UTjabatan.post;
ShowMessage('DATA SUKSES DISIMPAN');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
DM.UTjabatan.cancel;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
DM.UTjabatan.edit;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
DM.UTjabatan.delete;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
if Not DM.UTjabatan.Locate ('id_jabatan', Edit1.Text, [loPartialKey]) then
Begin
ShowMessage('ID Jabatan Tidak Dittemukan');
Edit1.Clear;
edit1.SetFocus;
end;
end;

end.
