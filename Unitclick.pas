unit Unitclick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Timer2: TTimer;
    Label1: TLabel;
    HotKey1: THotKey;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure HotKey1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
timer1.Interval :=STRToint(edit1.Text);
timer1.Enabled :=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled :=False;
Timer2.Enabled :=False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
application.Destroy;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
timer2.Interval :=STRToint(edit1.Text);
timer2.Enabled :=True;
end;

procedure TForm1.HotKey1Change(Sender: TObject);
begin
application.Destroy;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Mouse_event(MOUSEEVENTF_LEFTDOWN,0,0,0,0);
Mouse_event(MOUSEEVENTF_LEFTUP,0,0,0,0);

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Mouse_event(MOUSEEVENTF_RIGHTDOWN,0,0,0,0);
Mouse_event(MOUSEEVENTF_RIGHTUP,0,0,0,0);
end;

end.
