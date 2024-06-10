unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm12 = class(TForm)
    Label7: TLabel;
    DBGrid1: TDBGrid;
    frxDBpenarikan: TfrxDBDataset;
    frxRpenarikan: TfrxReport;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton4: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit2, Unit1;

procedure TForm12.Button1Click(Sender: TObject);
begin
DM.Qpenarikan.Close;
DM.Qpenarikan.SQL.Clear;
DM.Qpenarikan.SQL.Add(' Select *From tpenarikan');
if RadioButton1.Checked = true then DM.Qpenarikan.SQL.Add('Where NIK Like'+QuotedStr ('%'+Edit2.Text+'%'));
if RadioButton2.Checked = true then DM.Qpenarikan.SQL.Add('Where id_penarikan Like'+QuotedStr ('%'+Edit1.Text+'%'));
DM.Qpenarikan.Open;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
frxRpenarikan.ShowReport();
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm12.RadioButton1Click(Sender: TObject);
begin
Edit1.Visible := True;
Edit2.Visible := False;
Edit1.Text :='';
Edit1.SetFocus;
end;

procedure TForm12.RadioButton2Click(Sender: TObject);
begin
Edit1.Visible := False;
Edit2.Visible := True;
Edit2.Text :='';
Edit2.SetFocus;
end;

procedure TForm12.RadioButton4Click(Sender: TObject);
begin
Edit2.Visible := False;
Edit1.Visible := False;
DM.Qpenarikan.Close;
DM.Qpenarikan.SQL.Clear;
DM.Qpenarikan.SQL.Add(' Select *From tpenarikan');
DM.Qpenarikan.Open;
end;

end.
