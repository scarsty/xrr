unit mainform;

{$MODE Delphi}

interface


uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms,
  Dialogs, Math, StdCtrls, ExtCtrls, Buttons, ComCtrls, ucomplex;

type
  {Complex = record
    a: Extended;
    b: Extended;
    //procedure FromAB(p1, p2: Extended);
    //procedure FromB(p: Extended);
    //procedure Zero;
  end;}

  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Labelths: TLabel;
    Labelthe: TLabel;
    LabelRU: TLabel;
    LabelRD: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox2: TGroupBox;
    Edit9: TEdit;
    Edit10: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    LabelRM: TLabel;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure DrawCurve(n2, n3: Complex; rough1, rough2, d2, th_start, th_end: extended;
      n, m, Ox, Oy, isLg: integer);
    procedure Curve;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  {function CPlus(c1: Complex; c2: Complex): Complex;
  function CMinus(c1: Complex; c2: Complex): Complex;
  function CMultiply(c1: Complex; c2: Complex): Complex;
  function CDivide(c1: Complex; c2: Complex): Complex;
  function CSqrt(c1: Complex): Complex;
  function CAbs(c1: Complex): Extended;
  function ComputeX(n2, n3: Complex; rough1, rough2, d2, theta1: Extended): Complex;
  function CExp(c1: Complex): Complex;}



var
  Form1: TForm1;
//r12, r23, r_12, r_23, R1, T1, k, k1, k2 ,k3, n1, n2 ,n3, ctheta1, ctheta2, ctheta3: Complex;
//rough1, rough2, d2: Real;
//m: Integer;
//theta1: Real;

implementation

uses Data, modify, hiddensetting;

{$R *.lfm}
//复数的定义和运算
{procedure Complex.FromAB(p1, p2: Extended);
begin
  a := p1;
  b := p2;
end;

procedure Complex.FromB(p: Extended);
begin
  a := 0;
  b := p;
end;

procedure Complex.Zero;
begin
  a := 0;
  b := 0;
end;
}
{
function CPlus(c1: Complex; c2: Complex): Complex;
begin
  Result.a := c1.a + c2.a;
  Result.b := c1.b + c2.b;
end;

function CMinus(c1: Complex; c2: Complex): Complex;
begin
  Result.a := c1.a - c2.a;
  Result.b := c1.b - c2.b;
end;

function CMultiply(c1: Complex; c2: Complex): Complex;
begin
  Result.a := c1.a*c2.a - c1.b*c2.b;
  Result.b := c1.a*c2.b + c1.b*c2.a;
end;

function CDivide(c1: Complex; c2: Complex): Complex;
var
  p: Extended;
begin
  p := c2.a*c2.a + c2.b*c2.b;
  //showmessage(floattostr(p));
  Result.a := (c1.a*c2.a + c1.b*c2.b)/p;
  //showmessage(floattostr(c1.a));
  /// (c2.a*c2.a + c2.b*c2.b);
  Result.b := (c2.a*c1.b - c1.a*c2.b)/p;// (c2.a*c2.a + c2.b*c2.b);
end;

function CSqrt(c1: Complex): Complex;
begin
  Result.a := 1/sqrt(2)*sqrt(sqrt(c1.a*c1.a + c1.b*c1.b) + c1.a);
  Result.b := 1/sqrt(2)*sqrt(sqrt(c1.a*c1.a + c1.b*c1.b) - c1.a) * sign(c1.b);
end;

function CExp(c1: Complex): Complex;
begin
  Result.a := exp(c1.a)*cos(c1.b);
  Result.b := exp(c1.a)*sin(c1.b);
end;
}

function ComputeX(n2, n3: Complex; rough1, rough2, d2, theta1: extended): Complex;
var
  r12, r23, r_12, r_23, k, k1, k2, k3, ctheta1{, ctheta2, ctheta3}: Complex;
  Crough1, Crough2, I1, Cd2, CTT: Complex;
begin
  k := 2 * pi / 0.1542;
  k1 := 2 * Pi / 0.1542 * sin(theta1);
  I1 := 1;
  Crough1 := -2 * rough1 * rough1;
  Crough2 := -2 * rough2 * rough2;
  Cd2 := 2 * d2 * i;
  //showmessage(floattostr(cd2.a));
  //ttt.a := 0; ttt.b:=0;
  ctheta1 := cos(theta1);
  //ctheta2 := CMultiply(ttt, cdivide(I1, n2));
  //ctheta2.a := 1/n2.a*cos(theta1);
  //ctheta2.b := 0;
  //if ctheta2.a > 1 then ctheta2.a :=1;
  //ctheta3 := CMultiply(ttt, cdivide(I1, n3));
  //ctheta3.a := 1/n3.a*cos(theta1);
  //ctheta3.b := 0;
  //if ctheta3.a > 1 then ctheta3.a :=1;
  //k2 := k1;
  //k2 := sqrt(1-ctheta)
  k2 := k * CSqrt(n2 * n2 - ctheta1 * ctheta1);
  //showmessage(floattostr(cabs(CMinus(CMultiply(n2, n2), CMultiply(ctheta2, ctheta2)))));
  k3 := k * CSqrt(n3 * n3 - ctheta1 * ctheta1);
  //if ctheta2.a > 1 then begin k2.a:=0;k2.b:=0; end;
  //showmessage(floattostr(cabs(k2)/k1.a));
  r12 := (k1 - k2) / (k1 + k2);
  //showmessage(floattostr(cabs(r12)));
  r23 := (k2 - k3) / (k2 + k3);
  //showmessage(floattostr(cabs(r12))+chr(13)+chr(10)+floattostr(cabs(r23)));
  //r23.a := 1; r23.b := 0;
  //showmessage(floattostr(r23.a));
  r_12 := r12 * CExp(k1 * k2 * Crough1);
  //showmessage(floattostr(CExp(CMultiply(CMultiply(k1, k2),Crough1)).a));
  r_23 := r23 * CExp(k2 * k3 * Crough2);
  //k2.b :=0;
  //Ctt.a := 1;
  //ctt.b := 0;
  CTT := CExp(k2 * Cd2);
  //form1.label1.caption :=  floattostr(k2.a*cd2.b);
  //showmessage(floattostr(ctt.a));
  //ctt.a := ctt.a*2;
  //showmessage(floattostr(Cabs(r12))+floattostr(Cabs(r23)));
  Result := (r_12 + r_23 * CTT) / (I1 + (r_12 * r_23 * CTT));
  //showmessage(floattostr((cabs(r12)+cabs(r23))/(1+cabs(r12)*cabs(r23))));
end;

procedure TForm1.DrawCurve(n2, n3: Complex; rough1, rough2, d2, th_start, th_end: extended;
  n, m, Ox, Oy, isLg: integer);
var
  i: integer;
  th, R, RN: extended;
  //xx: Complex;
begin
  {Ox := 0;
  Oy := 0;

  n2.a :=1 - strtofloat(edit1.Text);
  n2.b := strtofloat(edit2.Text);
  n3.a := 1 - strtofloat(edit3.Text);
  n3.b := strtofloat(edit4.Text);

  rough1 := strtofloat(edit5.Text);
  rough2 := strtofloat(edit6.Text);
  d2 := strtofloat(edit7.Text);
  th_start := strtofloat(edit10.Text);
  th_end := strtofloat(edit9.Text);
  n := strtoint(edit8.Text);
  }
  RN := cmod(ComputeX(n2, n3, rough1, rough2, d2, 1 / 10000 / 180 * pi));

  R := cmod(ComputeX(n2, n3, rough1, rough2, d2, th_start / 180 * pi)) / RN;
  //Image1.Canvas.LineTo(Ox, Oy);
  Image1.Canvas.Pen.Color := clWhite;
  Image1.Canvas.LineTo(0, Oy - trunc(log10(R) * m));
  Image1.Canvas.Rectangle(0, 0, 1000, 1000);
  Image1.Canvas.Pen.Color := clred;

  if isLg = 0 then
  begin
    for i := trunc(n * th_start) + 1 to trunc(n * th_end) do
    begin
      th := i / n;
      R := cmod(ComputeX(n2, n3, rough1, rough2, d2, th / 180 * pi)) / RN;
      Image1.Canvas.LineTo(trunc((i / n - th_start) * 500 / (th_end - th_start)) + Ox,
        Oy - trunc(log10(R) * m));
      //showmessage(floattostr(R));
    end;
  end
  else
  begin
    for i := trunc(n * th_start) + 1 to trunc(n * th_end) do
    begin
      th := i / n;
      R := cmod(ComputeX(n2, n3, rough1, rough2, d2, th / 180 * pi)) / RN;
      Image1.Canvas.LineTo(trunc((i / n - th_start) * 500 / (th_end - th_start)) + Ox,
        Oy + m - trunc(R * R * m));
      //showmessage(floattostr(R));
    end;
  end;
end;

procedure TForm1.Curve;
var
  n2, n3: Complex;
  rough1, rough2, d2, th_start, th_end: extended;
  n, m, Ox, Oy, isLg: integer;
begin
  n2.re := 1 - strtofloat(edit1.Text);
  n2.im := strtofloat(edit2.Text);
  n3.re := 1 - strtofloat(edit3.Text);
  n3.im := strtofloat(edit4.Text);

  rough1 := strtofloat(edit5.Text);
  rough2 := strtofloat(edit6.Text);
  d2 := strtofloat(edit7.Text);
  th_start := strtofloat(edit10.Text);
  th_end := strtofloat(edit9.Text);

  n := StrToInt(Form3.Edit1.Text);
  m := Form3.ScrollBar1.Position;
  Ox := 0;
  Oy := -Form3.ScrollBary.Position + 100;
  isLg := Form4.RadioGroup1.ItemIndex;

  DrawCurve(n2, n3, rough1, rough2, d2, th_start, th_end, n, m, Ox, Oy, isLg);

  if isLg = 0 then
  begin
    LabelRU.Caption := '1e' + floattostr(roundto(Oy * 2 / m, -2));
    LabelRD.Caption := '1e' + floattostr(roundto((Oy - 350) * 2 / m, -2));
    LabelRM.Caption := '1e' + floattostr(roundto((Oy - 175) * 2 / m, -2));
  end
  else
  begin
    LabelRU.Caption := floattostr(roundto((Oy + m) / m, -2));
    LabelRD.Caption := floattostr(roundto((Oy + m - 350) / m, -2));
    LabelRM.Caption := floattostr(roundto((Oy + m - 175) / m, -2));
  end;
  Labelths.Caption := edit10.Text;
  Labelthe.Caption := edit9.Text;
  Form3.ScrollBarx.Position := trunc((strtofloat(edit10.Text) * 100));
  Form3.ScrollBar2.Position :=
    trunc((strtofloat(edit9.Text) - strtofloat(edit10.Text)) * 100);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form4.ShowModal;
  //d2 := unit2.d2;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Curve;
  //Form3.Show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  fn: TFilename;
  h, i: integer;
  line: shortstring;

  n2, n3: Complex;
  rough1, rough2, d2, th_start, th_end, RN, R, th: extended;
  n: integer;

begin
  SaveDialog1.Execute;
  fn := SaveDialog1.FileName;
  h := filecreate(fn);

  if h <> -1 then
  begin
    n2.re := 1 - strtofloat(edit1.Text);
    n2.im := strtofloat(edit2.Text);
    n3.re := 1 - strtofloat(edit3.Text);
    n3.im := strtofloat(edit4.Text);

    rough1 := strtofloat(edit5.Text);
    rough2 := strtofloat(edit6.Text);
    d2 := strtofloat(edit7.Text);
    th_start := strtofloat(edit10.Text);
    th_end := strtofloat(edit9.Text);

    n := StrToInt(Form3.Edit1.Text);
    RN := cmod(ComputeX(n2, n3, rough1, rough2, d2, 1 / 10000 / 180 * pi));
    line := '';

    for i := trunc(n * th_start) + 1 to trunc(n * th_end) do
    begin
      th := i / n;
      R := cmod(ComputeX(n2, n3, rough1, rough2, d2, th / 180 * pi)) / RN;
      line := floattostr(th) + chr(9) + floattostr(R * R) + Chr(13) + Chr(10);
      FileWrite(h, line[1], length(line));
    end;
    FileClose(h);
  end;

end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  Curve;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  Curve;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  Curve;
end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  Curve;
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
  Curve;
end;

end.
