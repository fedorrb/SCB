program SCB;

{%ToDo 'SCB.todo'}

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DM2: TDataModule},
  Unit3 in 'Unit3.pas' {Form3},
  Unit7 in 'Unit7.pas' {Form7},
  Dialogs,
  Unit8 in 'Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {About},
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'SCB';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  try
  Application.CreateForm(TDM2, DM2);
 except
  ShowMessage('Не запущено InterBase Guardian!');
  Exit;
 end;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
