unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm6 = class(TForm)
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit4, Unit2;

{$R *.DFM}

procedure TForm6.FormCreate(Sender: TObject);
begin
 DTP1.Date:=Date-30;
 DTP2.Date:=Date;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
 ModalResult:=mrCancel;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
 if DTP2.Date > DTP1.Date then ModalResult:=mrOk
  else ShowMessage('Невірно введено дати!');
end;

end.
