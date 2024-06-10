unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit2, Unit1;

procedure TForm4.Button1Click(Sender: TObject);
begin
DM.UToperator.Locate('usser_name',Edit1.Text, [loPartialKey]) ;
if (DM.UToperator['usser_name']= Edit1.Text) AND (DM.UToperator['password']= Edit2.Text)then
Begin
Form1.KARYAWAN1.Enabled := True;
form1.JABATAN1.Enabled := True;
form1.PENGGAJIAN1.Enabled := true;
form1.PENARIKAN1.Enabled := true;
form1.KARYAWAN2.Enabled := true;
form1.JABATAN3.Enabled := True;
Form1.PENGGAJIAN2.Enabled := True;
Form1.PENARIKAN2.Enabled := True;
Form1.LOGOUT1.Enabled := True;
Form1.MANAGEMENTOPERATOR1.Enabled := True;
Form1.LOGIN1.Enabled := False;
Close;
End
else
ShowMessage('USER NAME ATAU PASSWORD SALAH');
Edit1.Clear;
Edit2.Clear;
Edit1.SetFocus;

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.

