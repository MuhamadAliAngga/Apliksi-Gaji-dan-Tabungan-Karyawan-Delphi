unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm11 = class(TForm)
    Label7: TLabel;
    DBGrid1: TDBGrid;
    frxDBPENGGAJIAN: TfrxDBDataset;
    frxRPENGGAJIAN: TfrxReport;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    frxDBPenggajian2: TfrxDBDataset;
    frxRPenggajian2: TfrxReport;
    Button4: TButton;
    Edit3: TEdit;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm11.Button1Click(Sender: TObject);
begin
DM.Qpenggajian.Close;
DM.Qpenggajian.SQL.Clear;
DM.Qpenggajian.SQL.Add(' Select *From tgaji');
if RadioButton1.Checked = true then DM.Qpenggajian.SQL.Add('Where NIK Like'+QuotedStr ('%'+Edit1.Text+'%'));
if RadioButton2.Checked = true then DM.Qpenggajian.SQL.Add('Where Nama_karyawan Like'+QuotedStr ('%'+Edit2.Text+'%'));
if RadioButton4.Checked = true then DM.Qpenggajian.SQL.Add('Where bulan Like'+Quotedstr ('%'+Edit3.Text+'%'));
DM.Qpenggajian.Open;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
frxRPENGGAJIAN.ShowReport() ;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm11.Button4Click(Sender: TObject);
begin
frxRpenggajian2.ShowReport() ;
end;

procedure TForm11.RadioButton1Click(Sender: TObject);
begin
Button2.Visible := True;
Edit1.Visible := True;
Edit2.Visible := False;
Edit3.Visible := False;
Edit1.Text :=' ';
Edit1.SetFocus;
end;

procedure TForm11.RadioButton2Click(Sender: TObject);
begin
Button2.Visible := True;
Edit2.Visible := True;
Edit1.Visible := False;
Edit3.Visible := False;
Edit2.Text :=' ';
Edit2.SetFocus;
end;

procedure TForm11.RadioButton3Click(Sender: TObject);
begin
Button2.Visible := False;
Edit3.Visible := False;
Edit2.Visible := False;
Edit1.Visible := False;
DM.Qpenggajian.Close;
DM.Qpenggajian.SQL.Clear;
DM.Qpenggajian.SQL.Add(' Select *From tgaji');
DM.Qpenggajian.Open;
end;

procedure TForm11.RadioButton4Click(Sender: TObject);
begin
Button2.Visible := True;
Edit1.Visible := False;
Edit2.Visible := False;
Edit3.Visible := True;
Edit1.Text :=' ';
Edit3.SetFocus;
end;

end.
