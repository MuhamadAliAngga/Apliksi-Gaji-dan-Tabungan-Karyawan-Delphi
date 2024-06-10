unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TForm9 = class(TForm)
    Label7: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    frxDBPencarian: TfrxDBDataset;
    frxRkaryawan: TfrxReport;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm9.Button1Click(Sender: TObject);
begin
DM.QCari.Close;
DM.QCari.SQL.Clear;
DM.QCari.SQL.Add(' Select *From tkaryawaan');
if RadioButton1.Checked = true then DM.QCari.SQL.Add('Where NIK Like'+QuotedStr ('%'+Edit1.Text+'%'));
if RadioButton2.Checked = true then DM.QCari.SQL.Add('Where NAMA Like'+QuotedStr ('%'+Edit2.Text+'%'));
DM.QCari.Open;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
frxRkaryawan.ShowReport() ;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm9.RadioButton1Click(Sender: TObject);
begin
Edit1.Visible := True;
Edit2.Visible := False;
Edit1.Text :='';
Edit1.SetFocus;
end;

procedure TForm9.RadioButton2Click(Sender: TObject);
begin
Edit2.Visible := True;
Edit1.Visible := False;
Edit2.Text :='';
Edit2.SetFocus;
end;

procedure TForm9.RadioButton3Click(Sender: TObject);
begin
Edit2.Visible := False;
Edit1.Visible := False;
DM.QCari.Close;
DM.QCari.SQL.Clear;
DM.QCari.SQL.Add(' Select *From tkaryawaan');
DM.QCari.Open;
end;

end.
