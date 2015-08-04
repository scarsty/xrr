unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Form1.Edit1.Text := floattostr(7.0787E-06*strtofloat(Edit1.Text)/2.20);
  Form1.Edit2.Text := floattostr(1.1310E-08*strtofloat(Edit1.Text)/2.20);
  Close;
  Form1.Curve;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
