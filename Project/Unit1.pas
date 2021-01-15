unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus, ComCtrls, ToolWin;

type
  TForm1 = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    MainMenu1: TMainMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N5: TMenuItem;
    N14: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit7, Unit8, Unit9, Unit10, Unit11, Unit4, Unit2;

{$R *.DFM}

procedure TForm1.N6Click(Sender: TObject);
begin
 if MessageDlg('Закінчити роботу?',mtConfirmation,[mbYes,mbNo],0) = mrYes then Application.Terminate;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
 Form11.Show;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
 Form7.ShowModal;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
 Form8.ShowModal;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_F4) and (ssAlt in Shift) then
  begin
   Form1.N6Click(Sender);
   Key:=VK_Menu;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 KeyPreview:=true;
 DateSeparator:='.';
 ShortDateFormat:='dd.mm.yy'; 
end;

procedure TForm1.N9Click(Sender: TObject);
begin
 About.ShowModal;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 Form10.Show;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 Form3.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
if FileExists('c:\scb\help\scb.hlp') then
   begin
    Application.HelpFile:='c:\scb\help\scb.hlp';
    Application.HelpCommand(HELP_FINDER,0);
   end else ShowMessage('Відсутній файл c:\scb\help\scb.hlp');
end;

procedure TForm1.N14Click(Sender: TObject);
begin
 Form4.Show;
end;

end.
