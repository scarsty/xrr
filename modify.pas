unit modify;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    ScrollBarx: TScrollBar;
    ScrollBar2: TScrollBar;
    GroupBox2: TGroupBox;
    ScrollBar1: TScrollBar;
    ScrollBary: TScrollBar;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    procedure ScrollBarxChange(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBaryChange(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses mainform;
{$R *.lfm}

procedure TForm3.ScrollBar1Change(Sender: TObject);
begin
  //label7.Caption := inttostr(ScrollBar1.Position);
  Form1.Curve;
end;

procedure TForm3.ScrollBaryChange(Sender: TObject);
begin
  Form1.Curve;
end;

procedure TForm3.ScrollBar2Change(Sender: TObject);
begin
  Form1.edit10.Text := floattostr(ScrollBarx.Position / 100);
  Form1.edit9.Text := floattostr((ScrollBarx.Position + ScrollBar2.Position)/ 100);
  Form1.Curve;
end;

procedure TForm3.ScrollBarxChange(Sender: TObject);
begin
  Form1.edit10.Text := floattostr(ScrollBarx.Position / 100);
  Form1.edit9.Text := floattostr((ScrollBarx.Position + ScrollBar2.Position)/ 100);
  Form1.Curve;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  Form1.Curve;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  Edit1.Text := '1000';
  ScrollBarx.Position := 0;
  ScrollBar1.Position := 350;
  ScrollBary.Position := 100;
  ScrollBar2.Position := 50;
end;

end.
