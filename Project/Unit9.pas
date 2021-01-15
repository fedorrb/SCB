unit Unit9;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, MMSystem;

type
  TAbout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure wavhow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.DFM}

procedure TAbout.OKButtonClick(Sender: TObject);
begin
 PlaySound(nil,0,0);
 About.ModalResult:=mrOK;
// Close;
end;

procedure TAbout.wavhow(Sender: TObject);
begin
 if FileExists('c:\scb\aboutsound.wav') then
  PlaySound('c:\scb\aboutsound.wav',0,snd_async+snd_loop);
end;

procedure TAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 PlaySound(nil,0,0);
end;

end.
 
