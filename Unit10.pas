unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm10 = class(TForm)
    Label7: TLabel;
    DBGrid1: TDBGrid;
    frxDBjABATAN: TfrxDBDataset;
    frxRjabatan: TfrxReport;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit2, Unit1;

procedure TForm10.Button1Click(Sender: TObject);
begin
DM.Qjabatan.Close;
DM.Qjabatan.SQL.Clear;
DM.Qjabatan.SQL.Add(' Select *From tjabatan');
if RadioButton1.Checked = true then DM.Qjabatan.SQL.Add('Where ID_JABATAN Like'+QuotedStr ('%'+Edit1.Text+'%'));
if RadioButton2.Checked = true then DM.Qjabatan.SQL.Add('Where NAMA_JABATAN Like'+QuotedStr ('%'+Edit2.Text+'%'));
DM.Qjabatan.Open;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
frxRjabatan.ShowReport();
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm10.RadioButton1Click(Sender: TObject);
begin
Edit1.Visible := True;
Edit2.Visible := False;
Edit1.Text :=' ';
Edit1.SetFocus;
end;

procedure TForm10.RadioButton2Click(Sender: TObject);
begin
Edit2.Visible := True;
Edit1.Visible := False;
Edit2.Text :=' ';
Edit2.SetFocus;
end;

procedure TForm10.RadioButton3Click(Sender: TObject);
begin
Edit2.Visible := False;
Edit1.Visible := False;
DM.Qjabatan.Close;
DM.Qjabatan.SQL.Clear;
DM.Qjabatan.SQL.Add(' Select *From tjabatan');
DM.Qjabatan.Open;
end;

end.
