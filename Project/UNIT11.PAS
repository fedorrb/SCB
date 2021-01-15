unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm11.FormShow(Sender: TObject);
begin
 DM2.Vzrez.Active:=true;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
 DM2.Vzrez.Active:=false;
 Close;
end;

end.
