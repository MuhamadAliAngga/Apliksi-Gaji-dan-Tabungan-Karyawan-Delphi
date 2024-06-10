unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Label1: TLabel;
    INPUTDATA1: TMenuItem;
    KARYAWAN1: TMenuItem;
    JABATAN1: TMenuItem;
    JABATAN2: TMenuItem;
    PENCARIANDANLAPORAN1: TMenuItem;
    OPERATOR1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    MANAGEMENTOPERATOR1: TMenuItem;
    MANAGEMENTOPERATOR2: TMenuItem;
    PENGGAJIAN1: TMenuItem;
    PENARIKAN1: TMenuItem;
    KARYAWAN2: TMenuItem;
    JABATAN3: TMenuItem;
    PENGGAJIAN2: TMenuItem;
    PENARIKAN2: TMenuItem;
    Label2: TLabel;
    Timer1: TTimer;
    procedure MANAGEMENTOPERATOR1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LOGIN1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
    procedure KARYAWAN1Click(Sender: TObject);
    procedure MANAGEMENTOPERATOR2Click(Sender: TObject);
    procedure JABATAN1Click(Sender: TObject);
    procedure PENGGAJIAN1Click(Sender: TObject);
    procedure PENARIKAN1Click(Sender: TObject);
    procedure KARYAWAN2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure JABATAN3Click(Sender: TObject);
    procedure PENGGAJIAN2Click(Sender: TObject);
    procedure PENARIKAN2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12;

procedure TForm1.FormActivate(Sender: TObject);
begin
KARYAWAN1.Enabled := False;
JABATAN1.Enabled := False;
PENGGAJIAN1.Enabled := False;
PENARIKAN1.Enabled := False;
KARYAWAN2.Enabled := False;
JABATAN3.Enabled := False;
PENGGAJIAN2.Enabled := False;
PENARIKAN2.Enabled := FalsE;
LOGOUT1.Enabled := False;
MANAGEMENTOPERATOR1.Enabled := False;

end;

procedure TForm1.JABATAN1Click(Sender: TObject);
begin
Form6.Showmodal;
end;

procedure TForm1.JABATAN3Click(Sender: TObject);
begin
form10.showmodal;
end;

procedure TForm1.KARYAWAN1Click(Sender: TObject);
begin
Form5.Showmodal;
end;

procedure TForm1.KARYAWAN2Click(Sender: TObject);
begin
Form9.Showmodal;
end;

procedure TForm1.LOGIN1Click(Sender: TObject);
begin
Form4.Showmodal;
end;

procedure TForm1.LOGOUT1Click(Sender: TObject);
begin
KARYAWAN1.Enabled := False;
JABATAN1.Enabled := False;
PENGGAJIAN1.Enabled := False;
PENARIKAN1.Enabled := False;
KARYAWAN2.Enabled := False;
JABATAN3.Enabled := False;
PENGGAJIAN2.Enabled := False;
PENARIKAN2.Enabled := FalsE;
LOGOUT1.Enabled := False;
MANAGEMENTOPERATOR1.Enabled := False;
LOGIN1.Enabled := True;
end;

procedure TForm1.MANAGEMENTOPERATOR1Click(Sender: TObject);
begin
Form3.showmodal;
end;

procedure TForm1.MANAGEMENTOPERATOR2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.PENARIKAN1Click(Sender: TObject);
begin
Form8.showmodal;
end;

procedure TForm1.PENARIKAN2Click(Sender: TObject);
begin
Form12.showmodal;
end;

procedure TForm1.PENGGAJIAN1Click(Sender: TObject);
begin
Form7.showmodal;
end;

procedure TForm1.PENGGAJIAN2Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if label1.Visible and label2.Visible then
Begin
  Label1.visible := False;
  Label2.visible := False;
End
Else
Begin
  Label1.visible := True;
  Label2.visible := True;
End;

end;

end.
