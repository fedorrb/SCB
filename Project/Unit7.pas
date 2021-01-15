unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, ComObj, ActiveX, OleServer, Excel97;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    DTP1: TDateTimePicker;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    RadioGroup2: TRadioGroup;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    XLApp:Excel97.TExcelApplication;
    procedure CreateExcel(NewInstance:boolean);
    procedure ShowExcel;
    procedure ReleaseExcel;
    function AddWorkBook(const WorkBookName:string):Excel97.ExcelWorkBook;
  public
    { Public declarations }
    property IXLApp:Excel97.TExcelApplication read XLApp;
  end;

type TRecord = packed record
      ID:string;
      Number:string;
      DateBegin:string; //[17]
      DateEnd:string;
      ExDateBegin:string;
      ExDateEnd:string;
      Trivalist:integer;
      SH:string[2];
      PH:string[2];
      Slujba:string[1];
      Systema:string[1];
      Station1:string[30];
      Station2:string[30];
      Proyava:string[75];
      Element:string[25];
      Cause1:string[50];
      Cause2:string[50];
      Cause3:string[50];
      Cause4:string[50];
      Cause5:string[50];
      Cause6:string[50];
      Clas1:string[40];
      Clas2:string[40];
      Proizd:integer;
      WOProizd:integer;
      Priglasit:integer;
      Closed:integer;
      Pasajir:integer;
      Primiskih:integer;
      Vantajnih:integer;
      TimePas:integer;
      TimePrim:integer;
      TimeVant:integer;
      Incident:string[1];
      PrimIncid:string[50];
      PrimClosed:string[50];
      NumberPrib:string;
      Made:string;
      PribChecked:string; //[8]
      NumberElem:string[50];
      Primitka:ansistring;
      Texts1:ansistring;
//      Modified:boolean;
                           end; //record

type
  TTrain = record
    DateBegin: string;
    SH: string[2];
    Pasajir: integer;
    Primiskih: integer;
    Vantajnih: integer;
    TimePas: integer;
    TimePrim: integer;
    TimeVant: integer;
    Station1: string;
    Station2: string;
    Primitka: string;
  end;

type TMas = packed array of TRecord;
type TMasOfTrain = array of TTrain;

var
  Form7: TForm7;
  Mas1,Mas2: TMas;
  Train1,Train2: TMasOfTrain;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm7.CreateExcel(NewInstance:boolean);
begin
try
 if not Assigned(IXLApp) then begin
   XLApp:=Excel97.TExcelApplication.Create(Self);
    if NewInstance then XLApp.ConnectKind:=ckNewInstance;
     XLApp.Connect;
                              end;
except
 ShowMessage('Помилка при роботі з Excel!');
end; //try-except
end;

procedure TForm7.ShowExcel;
begin
 if Assigned(IXLApp) then
  begin
   IXLApp.Visible[0]:=true;
    if IXLApp.WindowState[0] = TOLEEnum(Excel97.xlMinimized) then
     IXLApp.WindowState[0]:=TOLEEnum(Excel97.xlNormal);
     IXLApp.ScreenUpdating[0]:=true;
  end;
end;

procedure TForm7.ReleaseExcel;
begin
  if Assigned(IXLApp) then
   begin
    if (IXLApp.Workbooks.Count > 0) and (not IXLApp.Visible[0]) then
     begin
      IXLApp.WindowState[0] := TOLEEnum(xlMinimized);
      IXLApp.Visible[0] := true;
       if not(csDestroying in ComponentState) then Self.SetFocus;
      Application.BringToFront;
     end;
   end;
   FreeAndNil(XLApp);
end;

function TForm7.AddWorkbook(const WorkbookName: string): Excel97.ExcelWorkbook;
begin
  Result := nil;
  if Assigned(XLApp) and (trim(WorkbookName) <> '') then begin
    Result := XLApp.Workbooks.Add(WorkbookName, 0);
  end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TForm7.FormCreate(Sender: TObject);
 var Y,M,D:word;
begin
if (Screen.Width > 800) and (Screen.Height > 600) then Form7.Position:=poScreenCenter;
// DTP1.Date:=date;
 DTP2.Date:=date;
  while DayOfWeek(DTP2.Date) <> 1 do DTP2.Date:=DTP2.Date-1;
 DTP1.Date:=DTP2.Date-6;
 DTP1.Time:=StrToTime('00:00:00');
 DTP2.Time:=StrToTime('00:00:00');
  DecodeDate(Date,Y,M,D);
   RadioGroup1.Items.Clear;
   RadioGroup1.Items.Add(IntToStr(Y-2));
   RadioGroup1.Items.Add(IntToStr(Y-1));
   RadioGroup1.Items.Add(IntToStr(Y));
   RadioGroup1.Items.Add('За період...');
   RadioGroup1.ItemIndex:=2;
end;

procedure TForm7.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex = 3 then
     begin
      Label1.Enabled:=true;
      Label2.Enabled:=true;
      DTP1.Enabled:=true;
      DTP2.Enabled:=true;
      RadioGroup2.Enabled:=false;
     end
     else begin
           Label1.Enabled:=false;
           Label2.Enabled:=false;
           DTP1.Enabled:=false;
           DTP2.Enabled:=false;
           RadioGroup2.Enabled:=true;
            if RadioGroup2.ItemIndex = 19 then
             begin
              Label2.Enabled:=true;
              DTP2.Enabled:=true;
             end;
          end;
end;

procedure TForm7.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 19 then
     begin
      Label2.Enabled:=true;
      DTP2.Enabled:=true;
     end
     else begin
           Label2.Enabled:=false;
           DTP2.Enabled:=false;
          end;
end;

procedure TForm7.Button1Click(Sender: TObject);
 var Date11,Date12,Date21,Date22:TDate;
     SDate11,SDate12,SDate21,SDate22:string;
     Y,Y1,M,M1,D,D1:word;
     i,j,R,C,C1,R1:integer;
     LaunchDir:string;
     IWorkBook:Excel97.ExcelWorkBook;
     ISheet:Excel97.ExcelWorkSheet;
     IRange:Excel97.Range;
     ValueArray,ValueArray2:OLEVariant;
     DataMas:packed array [1..92,1..24] of integer;
     Texosn1:packed array [1..18] of double;         //Технічна оснащеність
     Texosn2:packed array [1..18] of double;         //Технічна оснащеність
     Vzrez1,Vzrez2:smallint;                         //Розрізи стрілок
     Year,Month,Period:string;
     Station,Cause:string;
     Primitka:ansistring;
     SaveCursor:TCursor;
     TimeVidn:packed array [1..12] of integer;       //час відновлення
     More1Year:boolean;                              //довідка за період більше 1 року
     PosMas1: integer;
     IfRep: boolean;

 procedure AddTrain;
  var t: integer;
  begin
   PosMas1:=Length(Mas1);
//   PosMas2:=Length(Mas2);
    if Length(Train1) > 0 then
      for t:=0 to high(Train1) do
       begin
        SetLength(Mas1,Length(Mas1)+1);
        Mas1[high(Mas1)].DateBegin:=Train1[t].DateBegin;
        Mas1[high(Mas1)].SH:=Train1[t].SH;
        Mas1[high(Mas1)].Station1:=Train1[t].Station1;
         if Train1[t].Station1 <> Train1[t].Station2 then
             Mas1[high(Mas1)].Station2:=Train1[t].Station2 else
             Mas1[high(Mas1)].Station2:=' ';
        Mas1[high(Mas1)].Pasajir:=Train1[t].Pasajir;
        Mas1[high(Mas1)].Primiskih:=Train1[t].Primiskih;
        Mas1[high(Mas1)].Vantajnih:=Train1[t].Vantajnih;
        Mas1[high(Mas1)].TimePas:=Train1[t].TimePas;
        Mas1[high(Mas1)].TimePrim:=Train1[t].TimePrim;
        Mas1[high(Mas1)].TimeVant:=Train1[t].TimeVant;
        Mas1[high(Mas1)].Primitka:=Train1[t].Primitka;
        Mas1[high(Mas1)].Texts1:=Train1[t].Primitka;
        Mas1[high(Mas1)].Number:='0';
        Mas1[high(Mas1)].Slujba:='Ш';
       end;  //for
{    if Length(Train2) > 0 then
      for t:=0 to high(Train2) do
       begin
        SetLength(Mas2,Length(Mas2)+1);
        Mas2[high(Mas2)].DateBegin:=Train2[t].DateBegin;
        Mas2[high(Mas2)].SH:=Train2[t].SH;
        Mas2[high(Mas2)].Station1:=Train2[t].Station1;
        Mas2[high(Mas2)].Station2:=Train2[t].Station2;
        Mas2[high(Mas2)].Pasajir:=Train2[t].Pasajir;
        Mas2[high(Mas2)].Primiskih:=Train2[t].Primiskih;
        Mas2[high(Mas2)].Vantajnih:=Train2[t].Vantajnih;
        Mas2[high(Mas2)].TimePas:=Train2[t].TimePas;
        Mas2[high(Mas2)].TimePrim:=Train2[t].TimePrim;
        Mas2[high(Mas2)].TimeVant:=Train2[t].TimeVant;
        Mas2[high(Mas2)].Primitka:=Train2[t].Primitka;
        Mas2[high(Mas2)].Texts1:=Train2[t].Primitka;
        Mas2[high(Mas2)].Number:='0';
        Mas2[high(Mas2)].Slujba:='Ш';
       end;  //for}
  end;

 procedure DelTrain;
  begin
   SetLength(Mas1,PosMas1);
//   SetLength(Mas2,PosMas2);
  end;

 function GetCause:string;
 var Klass,GetC:string;
  begin
   R1:=7;
   GetC:=Copy(Mas1[i].Cause2,0,Pos('  ',Mas1[i].Cause2));
   if Pos('  ',Mas1[i].Cause3) > 1 then GetC:=Copy(Mas1[i].Cause2,0,Pos('  ',Mas1[i].Cause2)) +
       ', ' + Copy(Mas1[i].Cause3,0,Pos('  ',Mas1[i].Cause3));
   if Pos('  ',Mas1[i].Cause4) > 1 then GetC:=Copy(Mas1[i].Cause3,0,Pos('  ',Mas1[i].Cause3)) +
       ', ' + Copy(Mas1[i].Cause4,0,Pos('  ',Mas1[i].Cause4));
   if Pos('  ',Mas1[i].Cause5) > 1 then GetC:=Copy(Mas1[i].Cause4,0,Pos('  ',Mas1[i].Cause4)) +
       ', ' + Copy(Mas1[i].Cause5,0,Pos('  ',Mas1[i].Cause5));
   if Pos('  ',Mas1[i].Cause6) > 1 then GetC:=Copy(Mas1[i].Cause5,0,Pos('  ',Mas1[i].Cause5)) +
       ', ' + Copy(Mas1[i].Cause6,0,Pos('  ',Mas1[i].Cause6));
    Klass:='Порушення умов експлуатації';
   if Mas1[i].Clas1 = 'Експлуатацiйнi                          ' then
     begin
      if Mas1[i].Clas2 = 'Неякiсний ремонт в РТД СЦБ              ' then
        begin
         Klass:='Порушення технології ремонту в РТД';
         R1:=3;
        end;
      if Mas1[i].Clas2 = 'Неякiсний ремонт в майстернi ШЧ         ' then
        begin
         Klass:='Неякісний ремонт в майстерні СЦБ';
         R1:=5;
        end;
     end;
   if Mas1[i].Clas1 = 'Схемно-конструктивнi                    ' then
     begin
      if Mas1[i].Clas2 = 'Конструктивні                           ' then
        begin
         Klass:='Конструктивний недолік';
         R1:=15;
        end;
      if Mas1[i].Clas2 = 'Проектні                                ' then
        begin
         Klass:='Схемний недолік';
         R1:=17;
        end;
     end;
   if Mas1[i].Clas1 = 'Виробничi (заводськi)                   ' then
     begin
      Klass:='Неякісне виготовлення на заводі';
      R1:=9;
     end;
   if Mas1[i].Clas1 = 'Проектні                                ' then
    begin
     Klass:='Схемний недолік';
     R1:=17;
    end;
   if Mas1[i].Clas1 = 'Грозовi перенапруження                  ' then
     begin
      Klass:='Грозові перенапруження';
      R1:=11;
     end;
   if Mas1[i].Clas1 = 'Комутацiйнi перенапруження              ' then
     begin
      Klass:='Комутаційні перенапруження';
      R1:=13;
     end;
    Result:=GetC + ', ' + Klass;
  end;

 function GetR1:integer;
  begin
   R1:=8;
   if Mas2[i].Clas1 = 'Експлуатацiйнi                          ' then
     begin
      if Mas2[i].Clas2 = 'Неякiсний ремонт в РТД СЦБ              ' then R1:=4;
      if Mas2[i].Clas2 = 'Неякiсний ремонт в майстернi ШЧ         ' then R1:=6;
     end;
   if Mas2[i].Clas1 = 'Схемно-конструктивнi                    ' then
     begin
      if Mas2[i].Clas2 = 'Конструктивні                           ' then R1:=16;
      if Mas2[i].Clas2 = 'Проектні                                ' then R1:=18;
     end;
   if Mas2[i].Clas1 = 'Виробничi (заводськi)                   ' then R1:=10;
   if Mas2[i].Clas1 = 'Проектні                                ' then R1:=18;
   if Mas2[i].Clas1 = 'Грозовi перенапруження                  ' then R1:=12;
   if Mas2[i].Clas1 = 'Комутацiйнi перенапруження              ' then R1:=14;
   Result:=R1;
  end;

begin  { DONE 4 -oРуслан -cДоделать : Отчеты за период более 1 года }
 // Визначення дат
LaunchDir:='c:\scb\reports\';
SaveCursor:=Screen.Cursor;
Screen.Cursor := crHourglass;
More1Year:=false;                  //Період більше 1 року
 if RadioGroup1.ItemIndex = 3 then
  begin
   Date11:=DTP1.Date;
   Date12:=DTP2.Date+1;  //включительно по введенную дату
   Period:='За період з ' + DateToStr(Date11) + ' по ' + DateToStr(DTP2.Date);
    if DTP2.Date-DTP1.Date > 365 then More1Year:=true;
  end
  else begin
        Period:='';
        DecodeDate(Date,Y,M,D);
         case RadioGroup1.ItemIndex of
                0:Y:=Y-2;
                1:Y:=Y-1;
         end; //case
             Year:=IntToStr(Y) + ' р.';
          D:=1;
           D1:=1;
            Y1:=Y;
         case RadioGroup2.ItemIndex of
                0:begin  //січень
                   Month:='За січень ';
                   M:=1;
                   M1:=2;
                  end;
                1:begin  //лютий
                   Month:='За лютий ';
                   M:=2;
                   M1:=3;
                  end;
                2:begin   //березень
                   Month:='За березень ';
                   M:=3;
                   M1:=4;
                  end;
                3:begin   //квітень
                   Month:='За квітень ';
                   M:=4;
                   M1:=5;
                  end;
                4:begin   //травень
                   Month:='За травень ';
                   M:=5;
                   M1:=6;
                  end;
                5:begin   //червень
                   Month:='За червень ';
                   M:=6;
                   M1:=7;
                  end;
                6:begin   //липень
                   Month:='За липень ';
                   M:=7;
                   M1:=8;
                  end;
                7:begin   //серпень
                   Month:='За серпень ';
                   M:=8;
                   M1:=9;
                  end;
                8:begin    //вересень
                   Month:='За вересень ';
                   M:=9;
                   M1:=10;
                  end;
                9:begin    //жовтень
                   Month:='За жовтень ';
                   M:=10;
                   M1:=11;
                  end;
                10:begin   //листопад
                    Month:='За листопад ';
                    M:=11;
                    M1:=12;
                   end;
                11:begin   //грудень
                    Month:='За грудень ';
                    M:=12;
                    M1:=1;
                    Y1:=Y+1;
                   end;
                12:begin   //1-й квартал
                    Month:='За 1-й квартал ';
                    M:=1;
                    M1:=4;
                   end;
                13:begin    //2-й квартал
                    Month:='За 2-й квартал ';
                    M:=4;
                    M1:=7;
                   end;
                14:begin    //3-й
                    Month:='За 3-й квартал ';
                    M:=7;
                    M1:=10;
                   end;
                15:begin    //4-й
                    Month:='За 4-й квартал ';
                    M:=10;
                    M1:=1;
                    Y1:=Y+1;
                   end;
                16:begin     //1-ше півріччя
                    Month:='За 1-ше півріччя ';
                    M:=1;
                    M1:=7;
                   end;
                17:begin      //2-ге
                    Month:='За 2-ге півріччя ';
                    M:=7;
                    M1:=1;
                    Y1:=Y+1;
                   end;
                18:begin  //рік
                    Month:='За ';
                    M:=1;
                    M1:=1;
                    Y1:=Y+1;
                   end;
                19:begin  //з початку року
                    Month:='З початку ';
                    M:=1;
                    DecodeDate(DTP2.Date+1,Y1,M1,D1);
                   end;
         end; //case
           Period:=Month+Year;
            if RadioGroup2.ItemIndex = 19 then Period:=Period + ' по ' + DateToStr(DTP2.Date);
          Date11:=EncodeDate(Y,M,D);
          Date12:=EncodeDate(Y1,M1,D1);
       end;
    DecodeDate(Date11,Y,M,D);
     Dec(Y);
      Date21:=EncodeDate(Y,M,D);
    DecodeDate(Date12,Y,M,D);
     Dec(Y);
      Date22:=EncodeDate(Y,M,D);
        SDate11:=DateToStr(Date11);
        SDate12:=DateToStr(Date12);
        SDate21:=DateToStr(Date21);
        SDate22:=DateToStr(Date22);

    if Date11 > Date12 then
     begin
      ShowMessage('Невірно введено дати!');
      Screen.Cursor:=SaveCursor;
      Exit;
     end;

//    Робота З БД
 i:=0;
  with DM2.Otkaz do
   begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from Otkaz');
    SQL.Add('where (DateBegin >= "' + SDate11 + '") and (DateBegin < "' + SDate12 + '")');
     Screen.Cursor:=crSQLWait;
    Open;
     Screen.Cursor:=crHourglass;
    First;
     while not EOF do begin
                       inc(i);
                       Next;
                      end;

      if i > 0 then begin
                     SetLength(Mas1,i);
                      First;
                       i:=0;
                     while not EOF do
                       begin
            Mas1[i].ID:=Fields[0].AsString;
            Mas1[i].Number:=Fields[1].AsString;
            Mas1[i].DateBegin:=Fields[2].AsString;
            Mas1[i].DateEnd:=Fields[3].AsString;
            Mas1[i].ExDateBegin:=Fields[4].AsString;
            Mas1[i].ExDateEnd:=Fields[5].AsString;
            Mas1[i].Trivalist:=Fields[6].AsInteger;
            Mas1[i].SH:=Fields[7].AsString;
            Mas1[i].PH:=Fields[8].AsString;
            Mas1[i].Slujba:=Fields[9].AsString;
            Mas1[i].Systema:=Fields[10].AsString;
            Mas1[i].Station1:=Fields[11].AsString;
            Mas1[i].Station2:=Fields[12].AsString;
            Mas1[i].Proyava:=Fields[13].AsString;
            Mas1[i].Element:=Fields[14].AsString;
            Mas1[i].Cause1:=Fields[15].AsString;
            Mas1[i].Cause2:=Fields[16].AsString;
            Mas1[i].Cause3:=Fields[17].AsString;
            Mas1[i].Cause4:=Fields[18].AsString;
            Mas1[i].Cause5:=Fields[19].AsString;
            Mas1[i].Cause6:=Fields[20].AsString;
            Mas1[i].Clas1:=Fields[21].AsString;
            Mas1[i].Clas2:=Fields[22].AsString;
            Mas1[i].Proizd:=Fields[23].AsInteger;
            Mas1[i].WOProizd:=Fields[24].AsInteger;
            Mas1[i].Priglasit:=Fields[25].AsInteger;
            Mas1[i].Closed:=Fields[26].AsInteger;
            Mas1[i].Pasajir:=Fields[27].AsInteger;
            Mas1[i].Primiskih:=Fields[28].AsInteger;
            Mas1[i].Vantajnih:=Fields[29].AsInteger;
            Mas1[i].TimePas:=Fields[30].AsInteger;
            Mas1[i].TimePrim:=Fields[31].AsInteger;
            Mas1[i].TimeVant:=Fields[32].AsInteger;
            Mas1[i].Incident:=Fields[33].AsString;
            Mas1[i].PrimIncid:=Fields[34].AsString;
            Mas1[i].PrimClosed:=Fields[35].AsString;
            Mas1[i].NumberPrib:=Fields[36].AsString;
            Mas1[i].Made:=Fields[37].AsString;
            Mas1[i].PribChecked:=Fields[38].AsString;
            Mas1[i].NumberElem:=Fields[39].AsString;
            Mas1[i].Primitka:=Fields[40].AsString;
            Mas1[i].Texts1:=Fields[41].AsString;
//           Mas1[i].Modified:=false;

             if (Mas1[i].Cause3 = '                                                  ')
              and (Mas1[i].Cause4 <> '                                                  ') then
              begin
               Mas1[i].Cause3:=Mas1[i].Cause4;
               Mas1[i].Cause4:='';
               ShowMessage(Mas1[i].id + '  Cause');
              end;

               inc(i);
                Next;
                       end;       //while not eof
                    end;       //if i > 0
   i:=0;
    Close;


{
    SQL.Clear;
    SQL.Add('Select * from Otkaz');
    SQL.Add('where ((DateBegin >= "' + SDate11 + '") and (DateBegin < "' + SDate12 + '"))');
    SQL.Add('and ((cause3 = ' + #39+#39 +') and (cause4 <> ' + #39+#39 +'))');
    Open;
    First;
     while not EOF do
      begin
       for i:=0 to high(Mas1) do
        begin
         if Fields[0].AsString = Mas1[i].ID then
           begin
            Mas1[i].Cause3:=Mas1[i].Cause4;
            Mas1[i].Cause4:='';
           end;
        end;
       Next;
      end;

   i:=0;
    Close;
}
  if More1Year = false then
   begin
    SQL.Clear;
    SQL.Add('Select * from Otkaz');
    SQL.Add('where (DateBegin >= "' + SDate21 + '") and (DateBegin < "' + SDate22 + '")');
     Screen.Cursor := crSQLWait;
    Open;
     Screen.Cursor := crHourglass;
    First;

     while not EOF do begin
                       inc(i);
                       Next;
                      end;

      if i > 0 then begin
                     SetLength(Mas2,i);
                      First;
                       i:=0;
                     while not EOF do
                       begin
            Mas2[i].ID:=Fields[0].AsString;
            Mas2[i].Number:=Fields[1].AsString;
            Mas2[i].DateBegin:=Fields[2].AsString;
            Mas2[i].DateEnd:=Fields[3].AsString;
            Mas2[i].ExDateBegin:=Fields[4].AsString;
            Mas2[i].ExDateEnd:=Fields[5].AsString;
            Mas2[i].Trivalist:=Fields[6].AsInteger;
            Mas2[i].SH:=Fields[7].AsString;
            Mas2[i].PH:=Fields[8].AsString;
            Mas2[i].Slujba:=Fields[9].AsString;
            Mas2[i].Systema:=Fields[10].AsString;
            Mas2[i].Station1:=Fields[11].AsString;
            Mas2[i].Station2:=Fields[12].AsString;
            Mas2[i].Proyava:=Fields[13].AsString;
            Mas2[i].Element:=Fields[14].AsString;
            Mas2[i].Cause1:=Fields[15].AsString;
            Mas2[i].Cause2:=Fields[16].AsString;
            Mas2[i].Cause3:=Fields[17].AsString;
            Mas2[i].Cause4:=Fields[18].AsString;
            Mas2[i].Cause5:=Fields[19].AsString;
            Mas2[i].Cause6:=Fields[20].AsString;
            Mas2[i].Clas1:=Fields[21].AsString;
            Mas2[i].Clas2:=Fields[22].AsString;
            Mas2[i].Proizd:=Fields[23].AsInteger;
            Mas2[i].WOProizd:=Fields[24].AsInteger;
            Mas2[i].Priglasit:=Fields[25].AsInteger;
            Mas2[i].Closed:=Fields[26].AsInteger;
            Mas2[i].Pasajir:=Fields[27].AsInteger;
            Mas2[i].Primiskih:=Fields[28].AsInteger;
            Mas2[i].Vantajnih:=Fields[29].AsInteger;
            Mas2[i].TimePas:=Fields[30].AsInteger;
            Mas2[i].TimePrim:=Fields[31].AsInteger;
            Mas2[i].TimeVant:=Fields[32].AsInteger;
            Mas2[i].Incident:=Fields[33].AsString;
            Mas2[i].PrimIncid:=Fields[34].AsString;
            Mas2[i].PrimClosed:=Fields[35].AsString;
            Mas2[i].NumberPrib:=Fields[36].AsString;
            Mas2[i].Made:=Fields[37].AsString;
            Mas2[i].PribChecked:=Fields[38].AsString;
            Mas2[i].NumberElem:=Fields[39].AsString;
            Mas2[i].Primitka:=Fields[40].AsString;
            Mas2[i].Texts1:=Fields[41].AsString;
//           Mas2[i].Modified:=false;
               inc(i);
                Next;
                       end;       //while not eof
                    end;       //if i > 0
     Close;
   end;  //if more1year = false
   end;  //with DM2.Otkaz

 i:=0;
  with DM2.Train do
   begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from Train');
    SQL.Add('where (DateBegin >= "' + SDate11 + '") and (DateBegin < "' + SDate12 + '")');
     Screen.Cursor:=crSQLWait;
    Open;
     Screen.Cursor:=crHourglass;
    First;
     while not EOF do begin
                       inc(i);
                       Next;
                      end;

      if i > 0 then begin
                     SetLength(Train1,i);
                      First;
                       i:=0;
                     while not EOF do
                       begin
            Train1[i].DateBegin:=Fields[1].AsString;
            Train1[i].SH:=Fields[2].AsString;
            Train1[i].Station1:=Fields[9].AsString;
            Train1[i].Station2:=Fields[10].AsString;
            Train1[i].Pasajir:=Fields[3].AsInteger;
            Train1[i].Primiskih:=Fields[4].AsInteger;
            Train1[i].Vantajnih:=Fields[5].AsInteger;
            Train1[i].TimePas:=Fields[6].AsInteger;
            Train1[i].TimePrim:=Fields[7].AsInteger;
            Train1[i].TimeVant:=Fields[8].AsInteger;
            Train1[i].Primitka:=Fields[11].AsString;
               inc(i);
                Next;
                       end;       //while not eof
                    end;       //if i > 0
   i:=0;
    Close;
  if More1Year = false then
   begin
    SQL.Clear;
    SQL.Add('Select * from Train');
    SQL.Add('where (DateBegin >= "' + SDate21 + '") and (DateBegin < "' + SDate22 + '")');
     Screen.Cursor := crSQLWait;
    Open;
     Screen.Cursor := crHourglass;
    First;

     while not EOF do begin
                       inc(i);
                       Next;
                      end;

      if i > 0 then begin
                     SetLength(Train2,i);
                      First;
                       i:=0;
                     while not EOF do
                       begin
            Train2[i].DateBegin:=Fields[1].AsString;
            Train2[i].SH:=Fields[2].AsString;
            Train2[i].Station1:=Fields[9].AsString;
            Train2[i].Station2:=Fields[10].AsString;
            Train2[i].Pasajir:=Fields[3].AsInteger;
            Train2[i].Primiskih:=Fields[4].AsInteger;
            Train2[i].Vantajnih:=Fields[5].AsInteger;
            Train2[i].TimePas:=Fields[6].AsInteger;
            Train2[i].TimePrim:=Fields[7].AsInteger;
            Train2[i].TimeVant:=Fields[8].AsInteger;
            Train2[i].Primitka:=Fields[11].AsString;
               inc(i);
                Next;
                       end;       //while not eof
                    end;       //if i > 0
     Close;
   end;  //if more1year = false
   end;  //with DM2.Train

if CheckBox3.Checked or CheckBox1.Checked then
 begin
  Vzrez1:=0;
  Vzrez2:=0;
   for i:=1 to 18 do Texosn1[i]:=0;
   for i:=1 to 18 do Texosn2[i]:=0;
    with DM2.Vzrez do
     begin
      Active:=true;
      First;
       while not EOF do
        begin
         if (Fields[1].AsDateTime >= Date11) and (Fields[1].AsDateTime <= Date12) then
          Vzrez1:=Vzrez1 + Fields[2].AsInteger;
         if (Fields[1].AsDateTime >= Date21) and (Fields[1].AsDateTime <= Date22) then
          Vzrez2:=Vzrez2 + Fields[2].AsInteger;
         Next;
        end;
       Active:=false;
     end;
    with DM2.Tech do
     begin
      Active:=true;
      First;
       while not EOF do
        begin
         if Fields[1].AsInteger = 2000 + StrToInt(SDate11[7]+SDate11[8]) then
          begin
           if Fields[2].AsString = 'АБ   ' then Texosn1[14]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ЕЦ   ' then Texosn1[15]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'НАБ  ' then Texosn1[16]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-01' then Texosn1[1]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-02' then Texosn1[2]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-03' then Texosn1[3]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-04' then Texosn1[4]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-05' then Texosn1[5]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-06' then Texosn1[6]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-07' then Texosn1[7]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-08' then Texosn1[8]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-10' then Texosn1[9]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-11' then Texosn1[10]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-12' then Texosn1[11]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-13' then Texosn1[12]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-14' then Texosn1[13]:=Fields[3].AsFloat;
          end;
        if Fields[1].AsInteger = 2000 + StrToInt(SDate21[7]+SDate21[8]) then
          begin
           if Fields[2].AsString = 'АБ   ' then Texosn2[14]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ЕЦ   ' then Texosn2[15]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'НАБ  ' then Texosn2[16]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-01' then Texosn2[1]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-02' then Texosn2[2]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-03' then Texosn2[3]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-04' then Texosn2[4]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-05' then Texosn2[5]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-06' then Texosn2[6]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-07' then Texosn2[7]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-08' then Texosn2[8]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-10' then Texosn2[9]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-11' then Texosn2[10]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-12' then Texosn2[11]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-13' then Texosn2[12]:=Fields[3].AsFloat;
           if Fields[2].AsString = 'ШЧ-14' then Texosn2[13]:=Fields[3].AsFloat;
          end;
         Next;
        end;
       Active:=false;
     end;
       for i:=1 to 13 do Texosn1[18]:=Texosn1[18]+Texosn1[i];
       TexOsn1[17]:=Texosn1[18]-(Texosn1[14]+Texosn1[15]+Texosn1[16]);
       for i:=1 to 13 do Texosn2[18]:=Texosn2[18]+Texosn2[i];
       TexOsn2[17]:=Texosn2[18]-(Texosn2[14]+Texosn2[15]+Texosn2[16]);
 end;

//***********  Довідки  *************
if CheckBox1.Checked then    //Довідки для диспетчерської години
 begin
 try
  CreateExcel(true);
  //Довідка №1
  for R:=1 to 28 do for C:=1 to 14 do DataMas[R,C]:=0;
  for i:=0 to high(Mas1) do
   begin
    C:=0;
    R:=0;
    if Mas1[i].Slujba = 'Ш' then C:=1;
    if Mas1[i].Slujba = 'П' then C:=2;
    if Mas1[i].Slujba = 'Д' then C:=3;
    if Mas1[i].Slujba = 'Е' then C:=4;
    if Mas1[i].Slujba = 'Т' then C:=5;
    if Mas1[i].Slujba = 'В' then C:=6;
    if Mas1[i].Slujba = 'І' then C:=7;
    if Mas1[i].Systema = 'А' then R:=1;
    if Mas1[i].Systema = 'Е' then R:=3;
    if Mas1[i].Systema = 'Д' then R:=5;
    if Mas1[i].Systema = 'Н' then R:=7;
    if Mas1[i].Systema = 'М' then R:=9;
    if Mas1[i].Systema = 'П' then R:=11;
    if Mas1[i].Systema = 'Г' then R:=13;
    if (R = 0) or (C = 0) then
     begin
      R:=1;
      C:=1;
      ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
     end;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,8]:=DataMas[R,8]+1;
     DataMas[15,C]:=DataMas[15,C]+1;
     DataMas[15,8]:=DataMas[15,8]+1;
   end;  //for

   for i:=0 to high(Mas2) do          //за минулий рік
   begin
    R:=0;
    C:=0;
    if Mas2[i].Slujba = 'Ш' then C:=1;
    if Mas2[i].Slujba = 'П' then C:=2;
    if Mas2[i].Slujba = 'Д' then C:=3;
    if Mas2[i].Slujba = 'Е' then C:=4;
    if Mas2[i].Slujba = 'Т' then C:=5;
    if Mas2[i].Slujba = 'В' then C:=6;
    if Mas2[i].Slujba = 'І' then C:=7;
    if Mas2[i].Systema = 'А' then R:=2;
    if Mas2[i].Systema = 'Е' then R:=4;
    if Mas2[i].Systema = 'Д' then R:=6;
    if Mas2[i].Systema = 'Н' then R:=8;
    if Mas2[i].Systema = 'М' then R:=10;
    if Mas2[i].Systema = 'П' then R:=12;
    if Mas2[i].Systema = 'Г' then R:=14;
    if (R = 0) or (C = 0) then
     begin
      R:=2;
      C:=1;
      ShowMessage('Помилка! Дата ' + Mas2[i].DateBegin + ' Номер ' + Mas2[i].Number);
     end;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,8]:=DataMas[R,8]+1;
     DataMas[16,C]:=DataMas[16,C]+1;
     DataMas[16,8]:=DataMas[16,8]+1;
   end;  //for

      ValueArray:=VarArrayCreate([1,16,1,8],varVariant);
       for R:=1 to 16 do for C:=1 to 8 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

 for R:=1 to 28 do for C:=1 to 14 do DataMas[R,C]:=0;
// C:=1;
  for i:=0 to high(Mas1) do
   begin
    C:=0;
    if Mas1[i].Slujba = 'Ш' then C:=1;
    if Mas1[i].Slujba = 'П' then C:=2;
    if Mas1[i].Slujba = 'Д' then C:=3;
    if Mas1[i].Slujba = 'Е' then C:=4;
    if Mas1[i].Slujba = 'Т' then C:=5;
    if Mas1[i].Slujba = 'В' then C:=6;
    if Mas1[i].Slujba = 'І' then C:=7;
    if C = 0 then
     begin
      C:=1;
      ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
     end;
    if Mas1[i].Proizd <> 0 then begin
                                 DataMas[1,C]:=DataMas[1,C]+Mas1[i].Proizd;
                                 DataMas[3,C]:=DataMas[3,C]+Mas1[i].Proizd;
                                 DataMas[1,8]:=DataMas[1,8]+Mas1[i].Proizd;
                                 DataMas[3,8]:=DataMas[3,8]+Mas1[i].Proizd;
                                end;
    if Mas1[i].WoProizd <> 0 then begin
                                   DataMas[1,C]:=DataMas[1,C]+Mas1[i].WoProizd;
                                   DataMas[5,C]:=DataMas[5,C]+Mas1[i].WoProizd;
                                   DataMas[1,8]:=DataMas[1,8]+Mas1[i].WoProizd;
                                   DataMas[5,8]:=DataMas[5,8]+Mas1[i].WoProizd;
                                  end;
    if Mas1[i].Priglasit <> 0 then begin
                                    DataMas[7,C]:=DataMas[7,C]+Mas1[i].Priglasit;
                                    DataMas[7,8]:=DataMas[7,8]+Mas1[i].Priglasit;
                                   end;
    if Mas1[i].Closed <> 0 then begin
                                 DataMas[9,C]:=DataMas[9,C]+Mas1[i].Closed;
                                 DataMas[9,8]:=DataMas[9,8]+Mas1[i].Closed;
                                end;
    if Mas1[i].Incident = 'С' then begin
                                    DataMas[13,C]:=DataMas[13,C]+1;
                                    DataMas[11,C]:=DataMas[11,C]+1;
                                    DataMas[13,8]:=DataMas[13,8]+1;
                                    DataMas[11,8]:=DataMas[11,8]+1;
                                   end;
    if Mas1[i].Incident = 'І' then begin
                                    DataMas[15,C]:=DataMas[15,C]+1;
                                    DataMas[11,C]:=DataMas[11,C]+1;
                                    DataMas[15,8]:=DataMas[15,8]+1;
                                    DataMas[11,8]:=DataMas[11,8]+1;
                                   end;
    if Mas1[i].Incident = 'П' then begin
                                    DataMas[17,C]:=DataMas[17,C]+1;
                                    DataMas[11,C]:=DataMas[11,C]+1;
                                    DataMas[17,8]:=DataMas[17,8]+1;
                                    DataMas[11,8]:=DataMas[11,8]+1;
                                   end;
   end;

  for i:=0 to high(Mas2) do       //минулий рік
   begin
    C:=0;
    if Mas2[i].Slujba = 'Ш' then C:=1;
    if Mas2[i].Slujba = 'П' then C:=2;
    if Mas2[i].Slujba = 'Д' then C:=3;
    if Mas2[i].Slujba = 'Е' then C:=4;
    if Mas2[i].Slujba = 'Т' then C:=5;
    if Mas2[i].Slujba = 'В' then C:=6;
    if Mas2[i].Slujba = 'І' then C:=7;
    if C = 0 then
     begin
      C:=1;
      ShowMessage('Помилка! Дата ' + Mas2[i].DateBegin + ' Номер ' + Mas2[i].Number);
     end;
    if Mas2[i].Proizd <> 0 then begin
                                 DataMas[2,C]:=DataMas[2,C]+Mas2[i].Proizd;
                                 DataMas[4,C]:=DataMas[4,C]+Mas2[i].Proizd;
                                 DataMas[2,8]:=DataMas[2,8]+Mas2[i].Proizd;
                                 DataMas[4,8]:=DataMas[4,8]+Mas2[i].Proizd;
                                end;
    if Mas2[i].WoProizd <> 0 then begin
                                   DataMas[2,C]:=DataMas[2,C]+Mas2[i].WoProizd;
                                   DataMas[6,C]:=DataMas[6,C]+Mas2[i].WoProizd;
                                   DataMas[2,8]:=DataMas[2,8]+Mas2[i].WoProizd;
                                   DataMas[6,8]:=DataMas[6,8]+Mas2[i].WoProizd;
                                  end;
    if Mas2[i].Priglasit <> 0 then begin
                                    DataMas[8,C]:=DataMas[8,C]+Mas2[i].Priglasit;
                                    DataMas[8,8]:=DataMas[8,8]+Mas2[i].Priglasit;
                                   end;
    if Mas2[i].Closed <> 0 then begin
                                 DataMas[10,C]:=DataMas[10,C]+Mas2[i].Closed;
                                 DataMas[10,8]:=DataMas[10,8]+Mas2[i].Closed;
                                end;
    if Mas2[i].Incident = 'С' then begin
                                    DataMas[14,C]:=DataMas[14,C]+1;
                                    DataMas[12,C]:=DataMas[12,C]+1;
                                    DataMas[14,8]:=DataMas[14,8]+1;
                                    DataMas[12,8]:=DataMas[12,8]+1;
                                   end;
    if Mas2[i].Incident = 'І' then begin
                                    DataMas[16,C]:=DataMas[16,C]+1;
                                    DataMas[12,C]:=DataMas[12,C]+1;
                                    DataMas[16,8]:=DataMas[16,8]+1;
                                    DataMas[12,8]:=DataMas[12,8]+1;
                                   end;
    if Mas2[i].Incident = 'П' then begin
                                    DataMas[18,C]:=DataMas[18,C]+1;
                                    DataMas[12,C]:=DataMas[12,C]+1;
                                    DataMas[18,8]:=DataMas[18,8]+1;
                                    DataMas[12,8]:=DataMas[12,8]+1;
                                   end;
   end;

      ValueArray2:=VarArrayCreate([1,18,1,8],varVariant);
       for R:=1 to 18 do for C:=1 to 8 do
        if DataMas[R,C] <> 0 then ValueArray2[R,C]:=DataMas[R,C]
                             else ValueArray2[R,C]:='';

    if Assigned(IXLApp) then
     begin
      IWorkBook:=AddWorkBook(LaunchDir + 'Dovidka1.xls');
       try
        ISheet:=IWorkBook.Worksheets.Item['1'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,2].Value:=Period;    //Date
         IRange:=ISheet.Range['table11',EmptyParam];
          IRange.Value:=ValueArray;
         IRange:=ISheet.Range['table12',EmptyParam];
          IRange.Value:=ValueArray2;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end; //if assigned

//*********  End Dovidka 1    *************
//*********  Begin Dovidka 5  *************
 for R:=1 to 28 do for C:=1 to 14 do DataMas[R,C]:=0;
    for i:=0 to high(Mas1) do
     if Mas1[i].Slujba = 'Ш' then
      begin 
       C:=StrToInt(Mas1[i].SH);
        if C > 9 then dec(C);
       if Mas1[i].Clas1 = 'Експлуатацiйнi                          ' then
        begin
         DataMas[1,C]:=DataMas[1,C]+1;
         DataMas[1,14]:=DataMas[1,14]+1;
          if Mas1[i].Clas2 = 'Порушення правил виконання робiт        ' then
           begin
            DataMas[3,C]:=DataMas[3,C]+1;
            DataMas[3,14]:=DataMas[3,14]+1;
           end;
          if Mas1[i].Clas2 = 'Помилки при виконаннi робiт             ' then
           begin
            DataMas[5,C]:=DataMas[5,C]+1;
            DataMas[5,14]:=DataMas[5,14]+1;
           end;
          if Mas1[i].Clas2 = 'Недотрим. строкiв перевiрки, огляду     ' then
           begin
            DataMas[7,C]:=DataMas[7,C]+1;
            DataMas[7,14]:=DataMas[7,14]+1;
           end;
          if Mas1[i].Clas2 = 'Неякiсне виконання робiт                ' then
           begin
            DataMas[9,C]:=DataMas[9,C]+1;
            DataMas[9,14]:=DataMas[9,14]+1;
           end;
          if Mas1[i].Clas2 = 'Тривалий час усунення вiдмови           ' then
           begin
            DataMas[11,C]:=DataMas[11,C]+1;
            DataMas[11,14]:=DataMas[11,14]+1;
           end;
          if (Mas1[i].Clas2 = 'Неякiсний ремонт в РТД СЦБ              ') or
             (Mas1[i].Clas2 = 'Някiсний ремонт в КРП АЛСБ              ') then
           begin
            DataMas[13,C]:=DataMas[13,C]+1;
            DataMas[13,14]:=DataMas[13,14]+1;
           end;
        end;
       if Mas1[i].Clas1 = 'Причина не встановлена                  ' then
        begin
         DataMas[1,C]:=DataMas[1,C]+1;
         DataMas[15,C]:=DataMas[15,C]+1;
         DataMas[1,14]:=DataMas[1,14]+1;
         DataMas[15,14]:=DataMas[15,14]+1;
        end;
       if Mas1[i].Clas1 = 'Виробничi (заводськi)                   ' then
        begin
         DataMas[17,C]:=DataMas[17,C]+1;
         DataMas[17,14]:=DataMas[17,14]+1;
        end;
       if Mas1[i].Clas1 = 'Схемно-конструктивнi                    ' then
        begin
         DataMas[19,C]:=DataMas[19,C]+1;
         DataMas[19,14]:=DataMas[19,14]+1;
        end;
       if Mas1[i].Clas1 = 'Проектні                                ' then
        begin
         DataMas[21,C]:=DataMas[21,C]+1;
         DataMas[21,14]:=DataMas[21,14]+1;
         DataMas[19,C]:=DataMas[19,C]+1;
         DataMas[19,14]:=DataMas[19,14]+1;
        end;
       if Mas1[i].Clas1 = 'Грозовi перенапруження                  ' then
        begin
         DataMas[23,C]:=DataMas[23,C]+1;
         DataMas[23,14]:=DataMas[23,14]+1;
        end;
       if Mas1[i].Clas1 = 'Комутацiйнi перенапруження              ' then
        begin
         DataMas[25,C]:=DataMas[25,C]+1;
         DataMas[25,14]:=DataMas[25,14]+1;
        end;
         DataMas[27,C]:=DataMas[27,C]+1;
         DataMas[27,14]:=DataMas[27,14]+1;
      end;

    for i:=0 to high(Mas2) do
     if Mas2[i].Slujba = 'Ш' then
      begin
       C:=StrToInt(Mas2[i].SH);
        if C > 9 then dec(C);
       if Mas2[i].Clas1 = 'Експлуатацiйнi                          ' then
        begin
         DataMas[2,C]:=DataMas[2,C]+1;
         DataMas[2,14]:=DataMas[2,14]+1;
          if Mas2[i].Clas2 = 'Порушення правил виконання робiт        ' then
           begin
            DataMas[4,C]:=DataMas[4,C]+1;
            DataMas[4,14]:=DataMas[4,14]+1;
           end;
          if Mas2[i].Clas2 = 'Помилки при виконаннi робiт             ' then
           begin
            DataMas[6,C]:=DataMas[6,C]+1;
            DataMas[6,14]:=DataMas[6,14]+1;
           end;
          if Mas2[i].Clas2 = 'Недотрим. строкiв перевiрки, огляду     ' then
           begin
            DataMas[8,C]:=DataMas[8,C]+1;
            DataMas[8,14]:=DataMas[8,14]+1;
           end;
          if Mas2[i].Clas2 = 'Неякiсне виконання робiт                ' then
           begin
            DataMas[10,C]:=DataMas[10,C]+1;
            DataMas[10,14]:=DataMas[10,14]+1;
           end;
          if Mas2[i].Clas2 = 'Тривалий час усунення вiдмови           ' then
           begin
            DataMas[12,C]:=DataMas[12,C]+1;
            DataMas[12,14]:=DataMas[12,14]+1;
           end;
          if (Mas2[i].Clas2 = 'Неякiсний ремонт в РТД СЦБ              ') or
             (Mas2[i].Clas2 = 'Някiсний ремонт в КРП АЛСБ              ') then
           begin
            DataMas[14,C]:=DataMas[14,C]+1;
            DataMas[14,14]:=DataMas[14,14]+1;
           end;
        end;
       if Mas2[i].Clas1 = 'Причина не встановлена                  ' then
        begin
         DataMas[2,C]:=DataMas[2,C]+1;
         DataMas[16,C]:=DataMas[16,C]+1;
         DataMas[2,14]:=DataMas[2,14]+1;
         DataMas[16,14]:=DataMas[16,14]+1;
        end;
       if Mas2[i].Clas1 = 'Виробничi (заводськi)                   ' then
        begin
         DataMas[18,C]:=DataMas[18,C]+1;
         DataMas[18,14]:=DataMas[18,14]+1;
        end;
       if Mas2[i].Clas1 = 'Схемно-конструктивнi                    ' then
        begin
         DataMas[20,C]:=DataMas[20,C]+1;
         DataMas[20,14]:=DataMas[20,14]+1;
        end;
       if Mas2[i].Clas1 = 'Проектні                                ' then
        begin
         DataMas[22,C]:=DataMas[22,C]+1;
         DataMas[22,14]:=DataMas[22,14]+1;
         DataMas[20,C]:=DataMas[20,C]+1;
         DataMas[20,14]:=DataMas[20,14]+1;
        end;
       if Mas2[i].Clas1 = 'Грозовi перенапруження                  ' then
        begin
         DataMas[24,C]:=DataMas[24,C]+1;
         DataMas[24,14]:=DataMas[24,14]+1;
        end;
       if Mas2[i].Clas1 = 'Комутацiйнi перенапруження              ' then
        begin
         DataMas[26,C]:=DataMas[26,C]+1;
         DataMas[26,14]:=DataMas[26,14]+1;
        end;
         DataMas[28,C]:=DataMas[28,C]+1;
         DataMas[28,14]:=DataMas[28,14]+1;
      end;


      ValueArray:=VarArrayCreate([1,28,1,14],varVariant);
       for R:=1 to 28 do for C:=1 to 14 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['5'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,2].Value:=Period;    //Date
         IRange:=ISheet.Range['table6',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//*********  End Dovidka 5    *************
//*********  Begin Dovidka 2  *************
 for R:=1 to 28 do for C:=1 to 16 do DataMas[R,C]:=0;
  C:=1;
   R:=1;
  for i:=0 to high(Mas1) do
   begin
    if Mas1[i].Slujba = 'Ш' then C:=1;
    if Mas1[i].Slujba = 'П' then C:=2;
    if Mas1[i].Slujba = 'Д' then C:=3;
    if Mas1[i].Slujba = 'Е' then C:=4;
    if Mas1[i].Slujba = 'Т' then C:=5;
    if Mas1[i].Slujba = 'В' then C:=6;
    if Mas1[i].Slujba = 'І' then C:=7;
    if Mas1[i].SH = '01' then R:=1;
    if Mas1[i].SH = '02' then R:=3;
    if Mas1[i].SH = '03' then R:=5;
    if Mas1[i].SH = '04' then R:=7;
    if Mas1[i].SH = '05' then R:=9;
    if Mas1[i].SH = '06' then R:=11;
    if Mas1[i].SH = '07' then R:=13;
    if Mas1[i].SH = '08' then R:=15;
    if Mas1[i].SH = '10' then R:=17;
    if Mas1[i].SH = '11' then R:=19;
    if Mas1[i].SH = '12' then R:=21;
    if Mas1[i].SH = '13' then R:=23;
    if Mas1[i].SH = '14' then R:=25;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,8]:=DataMas[R,8]+1;
     DataMas[27,C]:=DataMas[27,C]+1;
     DataMas[27,8]:=DataMas[27,8]+1;
// довідка по загальному часу відмов по службах і дистанціях 9..16 1..28
     DataMas[R,C+8]:=DataMas[R,C+8]+Mas1[i].Trivalist;
     DataMas[R,16]:=DataMas[R,16]+Mas1[i].Trivalist;
     DataMas[27,C+8]:=DataMas[27,C+8]+Mas1[i].Trivalist;
     DataMas[27,16]:=DataMas[27,16]+Mas1[i].Trivalist;
   end;
  for i:=0 to high(Mas2) do
   begin
    if Mas2[i].Slujba = 'Ш' then C:=1;
    if Mas2[i].Slujba = 'П' then C:=2;
    if Mas2[i].Slujba = 'Д' then C:=3;
    if Mas2[i].Slujba = 'Е' then C:=4;
    if Mas2[i].Slujba = 'Т' then C:=5;
    if Mas2[i].Slujba = 'В' then C:=6;
    if Mas2[i].Slujba = 'І' then C:=7;
    if Mas2[i].SH = '01' then R:=2;
    if Mas2[i].SH = '02' then R:=4;
    if Mas2[i].SH = '03' then R:=6;
    if Mas2[i].SH = '04' then R:=8;
    if Mas2[i].SH = '05' then R:=10;
    if Mas2[i].SH = '06' then R:=12;
    if Mas2[i].SH = '07' then R:=14;
    if Mas2[i].SH = '08' then R:=16;
    if Mas2[i].SH = '10' then R:=18;
    if Mas2[i].SH = '11' then R:=20;
    if Mas2[i].SH = '12' then R:=22;
    if Mas2[i].SH = '13' then R:=24;
    if Mas2[i].SH = '14' then R:=26;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,8]:=DataMas[R,8]+1;
     DataMas[28,C]:=DataMas[28,C]+1;
     DataMas[28,8]:=DataMas[28,8]+1;

     DataMas[R,C+8]:=DataMas[R,C+8]+Mas2[i].Trivalist;
     DataMas[R,16]:=DataMas[R,16]+Mas2[i].Trivalist;
     DataMas[28,C+8]:=DataMas[28,C+8]+Mas2[i].Trivalist;
     DataMas[28,16]:=DataMas[28,16]+Mas2[i].Trivalist;
   end;

  ValueArray:=VarArrayCreate([1,28,1,8],varVariant);
   for R:=1 to 28 do for C:=1 to 8 do
    if DataMas[R,C+8] <> 0 then
     begin
      ValueArray[R,C]:='''' + IntToStr(DataMas[R,C]) + ' на ' + IntToStr(DataMas[R,C+8] div 60) + ':';
       if DataMas[R,C+8] mod 60 < 10 then ValueArray[R,C]:=ValueArray[R,C] + '0';
          ValueArray[R,C]:=ValueArray[R,C] + IntToStr(DataMas[R,C+8] mod 60);
     end
     else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['10'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['ttime',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;

       for R:=1 to 28 do for C:=1 to 8 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

      ValueArray2:=VarArrayCreate([1,28,1,15],varVariant); //массив для объедененного отчета 2 и 3
       for R:=1 to 28 do for C:=9 to 15 do
          ValueArray2[R,C]:=ValueArray[R,C-7];

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['2'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,3].Value:=Period;    //Date
         IRange:=ISheet.Range['table2',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//*********  End Dovidka 2    *************
//*********  Begin Dovidka 3  *************
 for R:=1 to 28 do for C:=1 to 17 do DataMas[R,C]:=0; //14 в наличии, а не 17
   R:=1;
  for i:=0 to high(Mas1) do
   if Mas1[i].Slujba = 'Ш' then
    begin
     if Mas1[i].SH = '01' then R:=1;
     if Mas1[i].SH = '02' then R:=3;
     if Mas1[i].SH = '03' then R:=5;
     if Mas1[i].SH = '04' then R:=7;
     if Mas1[i].SH = '05' then R:=9;
     if Mas1[i].SH = '06' then R:=11;
     if Mas1[i].SH = '07' then R:=13;
     if Mas1[i].SH = '08' then R:=15;
     if Mas1[i].SH = '10' then R:=17;
     if Mas1[i].SH = '11' then R:=19;
     if Mas1[i].SH = '12' then R:=21;
     if Mas1[i].SH = '13' then R:=23;
     if Mas1[i].SH = '14' then R:=25;
      DataMas[R,1]:=DataMas[R,1]+1;
      DataMas[27,1]:=DataMas[27,1]+1;
       C:=1;
     if Mas1[i].Pasajir <> 0 then
      begin
       if C = 1 then begin
                      DataMas[R,2]:=DataMas[R,2]+1;
                      DataMas[27,2]:=DataMas[27,2]+1;
                      C:=2;
                     end;
       DataMas[R,12]:=DataMas[R,12]+Mas1[i].Pasajir;       //kolvo
       DataMas[27,12]:=DataMas[27,12]+Mas1[i].Pasajir;
       DataMas[27,13]:=DataMas[27,13]+Mas1[i].TimePas;     //time
       DataMas[R,13]:=DataMas[R,13]+Mas1[i].TimePas;
      end;
     if Mas1[i].Primiskih <> 0 then
      begin
       if C = 1 then begin
                      DataMas[R,2]:=DataMas[R,2]+1;
                      DataMas[27,2]:=DataMas[27,2]+1;
                      C:=2;
                     end;
       DataMas[R,14]:=DataMas[R,14]+Mas1[i].Primiskih;
       DataMas[27,14]:=DataMas[27,14]+Mas1[i].Primiskih;
       DataMas[27,15]:=DataMas[27,15]+Mas1[i].TimePrim;
       DataMas[R,15]:=DataMas[R,15]+Mas1[i].TimePrim;
      end;
     if Mas1[i].Vantajnih <> 0 then
      begin
       if C = 1 then begin
                      DataMas[R,2]:=DataMas[R,2]+1;
                      DataMas[27,2]:=DataMas[27,2]+1;
                     end;
       DataMas[R,16]:=DataMas[R,16]+Mas1[i].Vantajnih;
       DataMas[27,16]:=DataMas[27,16]+Mas1[i].Vantajnih;
       DataMas[27,17]:=DataMas[27,17]+Mas1[i].TimeVant;
       DataMas[R,17]:=DataMas[R,17]+Mas1[i].TimeVant;
      end;
     if Mas1[i].Incident = 'С' then
      begin
       DataMas[R,3]:=DataMas[R,3]+1;
       DataMas[27,3]:=DataMas[27,3]+1;
       DataMas[R,4]:=DataMas[R,4]+1;
       DataMas[27,4]:=DataMas[27,4]+1;
      end;
     if Mas1[i].Incident = 'І' then
      begin
       DataMas[R,5]:=DataMas[R,5]+1;
       DataMas[27,5]:=DataMas[27,5]+1;
       DataMas[R,3]:=DataMas[R,3]+1;
       DataMas[27,3]:=DataMas[27,3]+1;
      end;
     if Mas1[i].Incident = 'П' then
      begin
       DataMas[R,6]:=DataMas[R,6]+1;
       DataMas[27,6]:=DataMas[27,6]+1;
       DataMas[R,3]:=DataMas[R,3]+1;
       DataMas[27,3]:=DataMas[27,3]+1;
      end;
     if Mas1[i].Closed <> 0 then
      begin
       DataMas[R,11]:=DataMas[R,11]+Mas1[i].Closed;
       DataMas[27,11]:=DataMas[27,11]+Mas1[i].Closed;
      end;
     if Mas1[i].Priglasit <> 0 then
      begin
       DataMas[R,10]:=DataMas[R,10]+Mas1[i].Priglasit;
       DataMas[27,10]:=DataMas[27,10]+Mas1[i].Priglasit;
      end;
     if Mas1[i].WOProizd <> 0 then
      begin
       DataMas[R,9]:=DataMas[R,9]+Mas1[i].WOProizd;
       DataMas[27,9]:=DataMas[27,9]+Mas1[i].WOProizd;
      end;
     if Mas1[i].Proizd <> 0 then
      begin
       if Mas1[i].Station2 <> '                              ' then
        begin  //перегін
         DataMas[R,8]:=DataMas[R,8]+Mas1[i].Proizd;
         DataMas[27,8]:=DataMas[27,8]+Mas1[i].Proizd;
        end
        else begin //станція
         DataMas[R,7]:=DataMas[R,7]+Mas1[i].Proizd;
         DataMas[27,7]:=DataMas[27,7]+Mas1[i].Proizd;
        end;
      end;
    end;

 R:=1;
  for i:=0 to high(Mas2) do        //last year
   if Mas2[i].Slujba = 'Ш' then
    begin
     if Mas2[i].SH = '01' then R:=2;
     if Mas2[i].SH = '02' then R:=4;
     if Mas2[i].SH = '03' then R:=6;
     if Mas2[i].SH = '04' then R:=8;
     if Mas2[i].SH = '05' then R:=10;
     if Mas2[i].SH = '06' then R:=12;
     if Mas2[i].SH = '07' then R:=14;
     if Mas2[i].SH = '08' then R:=16;
     if Mas2[i].SH = '10' then R:=18;
     if Mas2[i].SH = '11' then R:=20;
     if Mas2[i].SH = '12' then R:=22;
     if Mas2[i].SH = '13' then R:=24;
     if Mas2[i].SH = '14' then R:=26;
      DataMas[R,1]:=DataMas[R,1]+1;
      DataMas[28,1]:=DataMas[28,1]+1;
    C:=1;
     if Mas2[i].Pasajir <> 0 then
      begin
       if C = 1 then begin
                      DataMas[R,2]:=DataMas[R,2]+1;
                      DataMas[28,2]:=DataMas[28,2]+1;
                      C:=2;
                     end;
       DataMas[R,12]:=DataMas[R,12]+Mas2[i].Pasajir;
       DataMas[28,12]:=DataMas[28,12]+Mas2[i].Pasajir;
       DataMas[28,13]:=DataMas[28,13]+Mas2[i].TimePas;
       DataMas[R,13]:=DataMas[R,13]+Mas2[i].TimePas;
      end;
     if Mas2[i].Primiskih <> 0 then
      begin
       if C = 1 then begin
                      DataMas[R,2]:=DataMas[R,2]+1;
                      DataMas[28,2]:=DataMas[28,2]+1;
                      C:=2;
                     end;
       DataMas[R,14]:=DataMas[R,14]+Mas2[i].Primiskih;
       DataMas[28,14]:=DataMas[28,14]+Mas2[i].Primiskih;
       DataMas[28,15]:=DataMas[28,15]+Mas2[i].TimePrim;
       DataMas[R,15]:=DataMas[R,15]+Mas2[i].TimePrim;
      end;
     if Mas2[i].Vantajnih <> 0 then
      begin
       if C = 1 then begin
                      DataMas[R,2]:=DataMas[R,2]+1;
                      DataMas[28,2]:=DataMas[28,2]+1;
                     end;
       DataMas[R,16]:=DataMas[R,16]+Mas2[i].Vantajnih;
       DataMas[28,16]:=DataMas[28,16]+Mas2[i].Vantajnih;
       DataMas[28,17]:=DataMas[28,17]+Mas2[i].TimeVant;
       DataMas[R,17]:=DataMas[R,17]+Mas2[i].TimeVant;
      end;
     if Mas2[i].Incident = 'С' then
      begin
       DataMas[R,3]:=DataMas[R,3]+1;
       DataMas[28,3]:=DataMas[28,3]+1;
       DataMas[R,4]:=DataMas[R,4]+1;
       DataMas[28,4]:=DataMas[28,4]+1;
      end;
     if Mas2[i].Incident = 'І' then
      begin
       DataMas[R,5]:=DataMas[R,5]+1;
       DataMas[28,5]:=DataMas[28,5]+1;
       DataMas[R,3]:=DataMas[R,3]+1;
       DataMas[28,3]:=DataMas[28,3]+1;
      end;
     if Mas2[i].Incident = 'П' then
      begin
       DataMas[R,6]:=DataMas[R,6]+1;
       DataMas[28,6]:=DataMas[28,6]+1;
       DataMas[R,3]:=DataMas[R,3]+1;
       DataMas[28,3]:=DataMas[28,3]+1;
      end;
     if Mas2[i].Closed <> 0 then
      begin
       DataMas[R,11]:=DataMas[R,11]+Mas2[i].Closed;
       DataMas[28,11]:=DataMas[28,11]+Mas2[i].Closed;
      end;
     if Mas2[i].Priglasit <> 0 then
      begin
       DataMas[R,10]:=DataMas[R,10]+Mas2[i].Priglasit;
       DataMas[28,10]:=DataMas[28,10]+Mas2[i].Priglasit;
      end;
     if Mas2[i].WOProizd <> 0 then
      begin
       DataMas[R,9]:=DataMas[R,9]+Mas2[i].WOProizd;
       DataMas[28,9]:=DataMas[28,9]+Mas2[i].WOProizd;
      end;
     if Mas2[i].Proizd <> 0 then
      begin
       if Mas2[i].Station2 <> '                              ' then
        begin  //перегін
         DataMas[R,8]:=DataMas[R,8]+Mas2[i].Proizd;
         DataMas[28,8]:=DataMas[28,8]+Mas2[i].Proizd;
        end
        else begin //станція
         DataMas[R,7]:=DataMas[R,7]+Mas2[i].Proizd;
         DataMas[28,7]:=DataMas[28,7]+Mas2[i].Proizd;
        end;
      end;
    end;


  for i:=0 to high(Train1) do
    begin
     if Train1[i].SH = '01' then R:=1;
     if Train1[i].SH = '02' then R:=3;
     if Train1[i].SH = '03' then R:=5;
     if Train1[i].SH = '04' then R:=7;
     if Train1[i].SH = '05' then R:=9;
     if Train1[i].SH = '06' then R:=11;
     if Train1[i].SH = '07' then R:=13;
     if Train1[i].SH = '08' then R:=15;
     if Train1[i].SH = '10' then R:=17;
     if Train1[i].SH = '11' then R:=19;
     if Train1[i].SH = '12' then R:=21;
     if Train1[i].SH = '13' then R:=23;
     if Train1[i].SH = '14' then R:=25;

     DataMas[R,2]:=DataMas[R,2]+1; //add otkaz with train
     DataMas[27,2]:=DataMas[27,2]+1;

     if Train1[i].Pasajir > 0 then
      begin
       DataMas[R,12]:=DataMas[R,12]+Train1[i].Pasajir;
       DataMas[27,12]:=DataMas[27,12]+Train1[i].Pasajir;
       DataMas[27,13]:=DataMas[27,13]+Train1[i].TimePas;
       DataMas[R,13]:=DataMas[R,13]+Train1[i].TimePas;
      end;
     if Train1[i].Primiskih > 0 then
      begin
       DataMas[R,14]:=DataMas[R,14]+Train1[i].Primiskih;
       DataMas[27,14]:=DataMas[27,14]+Train1[i].Primiskih;
       DataMas[27,15]:=DataMas[27,15]+Train1[i].TimePrim;
       DataMas[R,15]:=DataMas[R,15]+Train1[i].TimePrim;
      end;
     if Train1[i].Vantajnih <> 0 then
      begin
       DataMas[R,16]:=DataMas[R,16]+Train1[i].Vantajnih;
       DataMas[27,16]:=DataMas[27,16]+Train1[i].Vantajnih;
       DataMas[27,17]:=DataMas[27,17]+Train1[i].TimeVant;
       DataMas[R,17]:=DataMas[R,17]+Train1[i].TimeVant;
      end;
    end;

 R:=1;
  for i:=0 to high(Train2) do        //last year
    begin
     if Train2[i].SH = '01' then R:=2;
     if Train2[i].SH = '02' then R:=4;
     if Train2[i].SH = '03' then R:=6;
     if Train2[i].SH = '04' then R:=8;
     if Train2[i].SH = '05' then R:=10;
     if Train2[i].SH = '06' then R:=12;
     if Train2[i].SH = '07' then R:=14;
     if Train2[i].SH = '08' then R:=16;
     if Train2[i].SH = '10' then R:=18;
     if Train2[i].SH = '11' then R:=20;
     if Train2[i].SH = '12' then R:=22;
     if Train2[i].SH = '13' then R:=24;
     if Train2[i].SH = '14' then R:=26;

     DataMas[R,2]:=DataMas[R,2]+1; //add otkaz with train
     DataMas[28,2]:=DataMas[28,2]+1;

     if Train2[i].Pasajir <> 0 then
      begin
       DataMas[R,12]:=DataMas[R,12]+Train2[i].Pasajir;
       DataMas[28,12]:=DataMas[28,12]+Train2[i].Pasajir;
       DataMas[28,13]:=DataMas[28,13]+Train2[i].TimePas;
       DataMas[R,13]:=DataMas[R,13]+Train2[i].TimePas;
      end;
     if Train2[i].Primiskih <> 0 then
      begin
       DataMas[R,14]:=DataMas[R,14]+Train2[i].Primiskih;
       DataMas[28,14]:=DataMas[28,14]+Train2[i].Primiskih;
       DataMas[28,15]:=DataMas[28,15]+Train2[i].TimePrim;
       DataMas[R,15]:=DataMas[R,15]+Train2[i].TimePrim;
      end;
     if Train2[i].Vantajnih <> 0 then
      begin
       DataMas[R,16]:=DataMas[R,16]+Train2[i].Vantajnih;
       DataMas[28,16]:=DataMas[28,16]+Train2[i].Vantajnih;
       DataMas[28,17]:=DataMas[28,17]+Train2[i].TimeVant;
       DataMas[R,17]:=DataMas[R,17]+Train2[i].TimeVant;
      end;
    end;


      ValueArray:=VarArrayCreate([1,28,1,14],varVariant);     //14 а не 17
       for R:=1 to 28 do for C:=1 to 11 do                    //11 а не 14
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

       for R:=1 to 28 do
        begin
         i:=12;
          C:=12;
         repeat
          if DataMas[R,i] <> 0 then
           ValueArray[R,C]:=''''+IntToStr(DataMas[R,i])+' на '+IntToStr(DataMas[R,i+1] div 60)+' г '+IntToStr(DataMas[R,i+1] mod 60)+' х';
           i:=i+2;
           C:=C+1;
         until i > 17;
        end;

       for R:=1 to 28 do ValueArray2[R,1]:=ValueArray[R,1];  //Dovidka #0
       for R:=1 to 28 do for C:=2 to 5 do
        ValueArray2[R,C]:=ValueArray[R,C+1];
       for R:=1 to 28 do for C:=6 to 8 do
        ValueArray2[R,C]:=ValueArray[R,C+6];
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table3',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//*********  End Dovidka 3    *************
//*********  Begin Dovidka 0  *************
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['0'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table1',EmptyParam];
          IRange.Value:=ValueArray2;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;

//*********  End Dovidka 0    *************
//*********  Begin Dovidka 4  *************
 for R:=1 to 42 do for C:=1 to 14 do DataMas[R,C]:=0;
    for i:=0 to high(Mas1) do
     if Mas1[i].Slujba = 'Ш' then
      begin
       C:=StrToInt(Mas1[i].SH);
        if C > 9 then dec(C);
       if Mas1[i].Element = 'Pейковi кола             ' then
         begin
          DataMas[1,C]:=DataMas[1,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[1,14]:=DataMas[1,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
           if Pos('Крадiжка (пошкодження стороннiми)',Mas1[i].Cause3) <> 0 then
            begin
             DataMas[41,C]:=DataMas[41,C]+1;
             DataMas[41,14]:=DataMas[41,14]+1;
            end;
         end;
       if Mas1[i].Element = 'Приводи                  ' then
         begin
          DataMas[3,C]:=DataMas[3,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[3,14]:=DataMas[3,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Гарнітура                ' then
         begin
          DataMas[5,C]:=DataMas[5,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[5,14]:=DataMas[5,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Двигуни                  ' then
         begin
          DataMas[7,C]:=DataMas[7,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[7,14]:=DataMas[7,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Сигнали                  ' then
         begin
          if Mas1[i].Cause2 = 'Биття лiнз стороннiми особами                     ' then
               begin
                DataMas[41,C]:=DataMas[41,C]+1;
                DataMas[41,14]:=DataMas[41,14]+1;
               end;
          if Mas1[i].Cause2 = 'Крадiжка, биття свiтлофорних ламп                 ' then
               begin
                DataMas[41,C]:=DataMas[41,C]+1;
                DataMas[41,14]:=DataMas[41,14]+1;
               end;
          if (Mas1[i].Cause2 = 'Перегорання свiтлофорної лампи                    ') or
             (Mas1[i].Cause2 = 'Крадiжка, биття свiтлофорних ламп                 ') then
               begin
                DataMas[11,C]:=DataMas[11,C]+1;
                DataMas[39,C]:=DataMas[39,C]+1;
                DataMas[11,14]:=DataMas[11,14]+1;
                DataMas[39,14]:=DataMas[39,14]+1;
               end
               else begin
                     DataMas[9,C]:=DataMas[9,C]+1;
                     DataMas[39,C]:=DataMas[39,C]+1;
                     DataMas[9,14]:=DataMas[9,14]+1;
                     DataMas[39,14]:=DataMas[39,14]+1;
                    end;
         end;
       if Mas1[i].Element = 'Прилади                  ' then
         begin
          if Pos('Перетворювач',Mas1[i].Cause1) = 0 then
           begin
            DataMas[13,C]:=DataMas[13,C]+1;
            DataMas[39,C]:=DataMas[39,C]+1;
            DataMas[13,14]:=DataMas[13,14]+1;
            DataMas[39,14]:=DataMas[39,14]+1;
           end else
           begin
            DataMas[15,C]:=DataMas[15,C]+1;
            DataMas[39,C]:=DataMas[39,C]+1;
            DataMas[15,14]:=DataMas[15,14]+1;
            DataMas[39,14]:=DataMas[39,14]+1;
           end;
         end;
       if (Mas1[i].Element = 'Випрямлячi               ') or
          (Mas1[i].Element = 'Трансформатори           ') then
         begin
          DataMas[15,C]:=DataMas[15,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[15,14]:=DataMas[15,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Установчi вироби         ' then
         begin
          DataMas[17,C]:=DataMas[17,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[17,14]:=DataMas[17,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Прилади захисту          ' then
         begin
          DataMas[19,C]:=DataMas[19,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[19,14]:=DataMas[19,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Запобiжники              ' then
         begin
          DataMas[21,C]:=DataMas[21,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[21,14]:=DataMas[21,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Електричнi кола          ' then
         begin
          DataMas[23,C]:=DataMas[23,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[23,14]:=DataMas[23,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Апарати управлiння       ' then
         begin
          DataMas[25,C]:=DataMas[25,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[25,14]:=DataMas[25,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Джерела живлення         ' then
         begin
          DataMas[27,C]:=DataMas[27,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[27,14]:=DataMas[27,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Кабельнi лiнiї           ' then
         begin
          DataMas[29,C]:=DataMas[29,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[29,14]:=DataMas[29,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
           if Mas1[i].Cause2 = 'Вина стороннiх осiб i органiзацiй                 ' then
            begin
             DataMas[41,C]:=DataMas[41,C]+1;
             DataMas[41,14]:=DataMas[41,14]+1;
            end;
         end;
       if Mas1[i].Element = 'Повiтрянi лiнiї          ' then
         begin
          DataMas[31,C]:=DataMas[31,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[31,14]:=DataMas[31,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if (Mas1[i].Element = 'Гiрковi пристрої         ') or (Mas1[i].Element = 'Інші елементи            ') then
         begin
          DataMas[33,C]:=DataMas[33,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[33,14]:=DataMas[33,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if Mas1[i].Element = 'Елемент не визначений    ' then
         begin
          DataMas[35,C]:=DataMas[35,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[35,14]:=DataMas[35,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
         end;
       if (Mas1[i].Element = 'Крадіжка                 ') or
          (Mas1[i].Element = 'Навмисне пошкодження     ') then
         begin
          DataMas[37,C]:=DataMas[37,C]+1;
          DataMas[39,C]:=DataMas[39,C]+1;
          DataMas[37,14]:=DataMas[37,14]+1;
          DataMas[39,14]:=DataMas[39,14]+1;
          DataMas[41,C]:=DataMas[41,C]+1;
          DataMas[41,14]:=DataMas[41,14]+1;
         end;
      end;

    for i:=0 to high(Mas2) do
     if Mas2[i].Slujba = 'Ш' then
      begin
       C:=StrToInt(Mas2[i].SH);
        if C > 9 then dec(C);
       if Mas2[i].Element = 'Pейковi кола             ' then
         begin
          DataMas[2,C]:=DataMas[2,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[2,14]:=DataMas[2,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
           if Pos('Крадiжка (пошкодження стороннiми)',Mas2[i].Cause3) <> 0 then
            begin
             DataMas[42,C]:=DataMas[42,C]+1;
             DataMas[42,14]:=DataMas[42,14]+1;
            end;
         end;
       if Mas2[i].Element = 'Приводи                  ' then
         begin
          DataMas[4,C]:=DataMas[4,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[4,14]:=DataMas[4,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Гарнітура                ' then
         begin
          DataMas[6,C]:=DataMas[6,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[6,14]:=DataMas[6,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Двигуни                  ' then
         begin
          DataMas[8,C]:=DataMas[8,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[8,14]:=DataMas[8,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Сигнали                  ' then
         begin
          if Mas2[i].Cause2 = 'Биття лiнз стороннiми особами                     ' then
               begin
                DataMas[42,C]:=DataMas[42,C]+1;
                DataMas[42,14]:=DataMas[42,14]+1;
               end;
          if Mas2[i].Cause2 = 'Крадiжка, биття свiтлофорних ламп                 ' then
               begin
                DataMas[42,C]:=DataMas[42,C]+1;
                DataMas[42,14]:=DataMas[42,14]+1;
               end;
          if (Mas2[i].Cause2 = 'Перегорання свiтлофорної лампи                    ') or
             (Mas2[i].Cause2 = 'Крадiжка, биття свiтлофорних ламп                 ') then
               begin
                DataMas[12,C]:=DataMas[12,C]+1;
                DataMas[40,C]:=DataMas[40,C]+1;
                DataMas[12,14]:=DataMas[12,14]+1;
                DataMas[40,14]:=DataMas[40,14]+1;
               end
               else begin
                     DataMas[10,C]:=DataMas[10,C]+1;
                     DataMas[40,C]:=DataMas[40,C]+1;
                     DataMas[10,14]:=DataMas[10,14]+1;
                     DataMas[40,14]:=DataMas[40,14]+1;
                    end;
         end;
       if Mas2[i].Element = 'Прилади                  ' then
         begin
          if Pos('Перетворювач',Mas2[i].Cause1) = 0 then
           begin
            DataMas[14,C]:=DataMas[14,C]+1;
            DataMas[40,C]:=DataMas[40,C]+1;
            DataMas[14,14]:=DataMas[14,14]+1;
            DataMas[40,14]:=DataMas[40,14]+1;
           end else
           begin
            DataMas[16,C]:=DataMas[16,C]+1;
            DataMas[40,C]:=DataMas[40,C]+1;
            DataMas[16,14]:=DataMas[16,14]+1;
            DataMas[40,14]:=DataMas[40,14]+1;
           end;
         end;
       if (Mas2[i].Element = 'Випрямлячi               ') or
          (Mas2[i].Element = 'Трансформатори           ') then
         begin
          DataMas[16,C]:=DataMas[16,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[16,14]:=DataMas[16,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Установчi вироби         ' then
         begin
          DataMas[18,C]:=DataMas[18,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[18,14]:=DataMas[18,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Прилади захисту          ' then
         begin
          DataMas[20,C]:=DataMas[20,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[20,14]:=DataMas[20,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Запобiжники              ' then
         begin
          DataMas[22,C]:=DataMas[22,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[22,14]:=DataMas[22,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Електричнi кола          ' then
         begin
          DataMas[24,C]:=DataMas[24,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[24,14]:=DataMas[24,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Апарати управлiння       ' then
         begin
          DataMas[26,C]:=DataMas[26,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[26,14]:=DataMas[26,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Джерела живлення         ' then
         begin
          DataMas[28,C]:=DataMas[28,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[28,14]:=DataMas[28,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Кабельнi лiнiї           ' then
         begin
          DataMas[30,C]:=DataMas[30,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[30,14]:=DataMas[30,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
           if Mas2[i].Cause2 = 'Вина стороннiх осiб i органiзацiй                 ' then
            begin
             DataMas[42,C]:=DataMas[42,C]+1;
             DataMas[42,14]:=DataMas[42,14]+1;
            end;
         end;
       if Mas2[i].Element = 'Повiтрянi лiнiї          ' then
         begin
          DataMas[32,C]:=DataMas[32,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[32,14]:=DataMas[32,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if (Mas2[i].Element = 'Гiрковi пристрої         ') or (Mas2[i].Element = 'Інші елементи            ') then
         begin
          DataMas[34,C]:=DataMas[34,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[34,14]:=DataMas[34,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if Mas2[i].Element = 'Елемент не визначений    ' then
         begin
          DataMas[36,C]:=DataMas[36,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[36,14]:=DataMas[36,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
         end;
       if (Mas2[i].Element = 'Крадіжка                 ') or
          (Mas2[i].Element = 'Навмисне пошкодження     ') then
         begin
          DataMas[38,C]:=DataMas[38,C]+1;
          DataMas[40,C]:=DataMas[40,C]+1;
          DataMas[38,14]:=DataMas[38,14]+1;
          DataMas[40,14]:=DataMas[40,14]+1;
          DataMas[42,C]:=DataMas[42,C]+1;
          DataMas[42,14]:=DataMas[42,14]+1;
         end;
      end;

      ValueArray:=VarArrayCreate([1,42,1,14],varVariant);
       for R:=1 to 42 do for C:=1 to 14 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['4'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table4',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//*********  End Dovidka 4    *************
//*********     Graph10       *************
 for R:=1 to 92 do for C:=1 to 24 do DataMas[R,C]:=0;
  for i:=0 to high(Mas1) do
   begin
    C:=StrToInt(Mas1[i].SH);
     if C > 9 then dec(C);
    if Mas1[i].Slujba = 'Ш' then
     begin
      DataMas[1,C]:=DataMas[1,C]+1;
      DataMas[3,C]:=DataMas[3,C]+Mas1[i].Trivalist;
     end;
    DataMas[2,C]:=DataMas[2,C]+1;
    DataMas[4,C]:=DataMas[4,C]+Mas1[i].Trivalist;
   end;
{1,2 - кол-во отказов
3,4 - время
5,6 - время/техосн.
7,8 - время/кол-во}
for R:=5 to 6 do for C:=1 to 13 do
 if Texosn1[C] > 0 then DataMas[R,C]:=Round(DataMas[R-2,C]/Texosn1[C]);

for R:=7 to 8 do for C:=1 to 13 do
 if DataMas[R-6,C] > 0 then DataMas[R,C]:=Round(DataMas[R-4,C]/DataMas[R-6,C]);

      ValueArray:=VarArrayCreate([1,2,1,13],varVariant);
       for R:=1 to 2 do for C:=1 to 13 do
        if DataMas[R+4,C] <> 0 then ValueArray[R,C]:=DataMas[R+4,C]
                               else ValueArray[R,C]:='';

      ValueArray2:=VarArrayCreate([1,2,1,13],varVariant); //массив для объедененного отчета 2 и 3
       for R:=1 to 2 do for C:=1 to 13 do
        if DataMas[R+6,C] <> 0 then ValueArray2[R,C]:=DataMas[R+6,C]
                               else ValueArray2[R,C]:='';
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['9'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,2].Value:=Period;    //Date
         IRange:=ISheet.Range['table10',EmptyParam];
          IRange.Value:=ValueArray;
         IRange:=ISheet.Range['table101',EmptyParam];
          IRange.Value:=ValueArray2;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//*********   End Graph10     *************
//********* Довідка про затримки **********
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['6'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,3].Value:=Period;    //Date
  R:=6;
   C:=0;  //номера відмов 1,2,3...
    AddTrain;
    for i:=0 to high(Mas1) do
     if (Mas1[i].Slujba = 'Ш') and ((Mas1[i].Pasajir <> 0) or (Mas1[i].Primiskih <> 0) or (Mas1[i].Vantajnih <> 0)) then
      begin
       inc(C);
        Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
         if Pos(' ',Mas1[i].Station2) <> 1 then
          Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
       ISheet.Cells.Item[R,1]:=C;
       ISheet.Cells.Item[R,2]:=Copy(Mas1[i].DateBegin,0,8);
       ISheet.Cells.Item[R,3]:=Mas1[i].SH;
       ISheet.Cells.Item[R,4]:=Station;
        if Mas1[i].Number <> '0' then
         Mas1[i].Texts1:=Mas1[i].Texts1 + #10 + 'Час відмови ' + Copy(Mas1[i].DateBegin,10,5) +
          ' – ' + Copy(Mas1[i].DateEnd,10,5) + #10;

          while Pos(#13, Mas1[i].Texts1) > 0 do
           Mas1[i].Texts1[Pos(#13, Mas1[i].Texts1)] := ' ';
       ISheet.Cells.Item[R,5]:=Mas1[i].Texts1;
        Primitka:='';
         if Mas1[i].Pasajir > 0 then
          begin
           Primitka:=IntToStr(Mas1[i].Pasajir) + ' пас на ' +
            IntToStr(Mas1[i].TimePas div 60);
             if Mas1[i].TimePas mod 60 < 10 then Primitka:=Primitka + ':0'
                                            else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimePas mod 60) + #10;
          end;
         if Mas1[i].Primiskih > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Primiskih) + ' прим на ' +
            IntToStr(Mas1[i].TimePrim div 60);
              if Mas1[i].TimePrim mod 60 < 10 then Primitka:=Primitka + ':0'
                                              else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimePrim mod 60) + #10;
          end;
         if Mas1[i].Vantajnih > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Vantajnih) + ' вант на ' +
            IntToStr(Mas1[i].TimeVant div 60);
              if Mas1[i].TimeVant mod 60 < 10 then Primitka:=Primitka + ':0'
                                              else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimeVant mod 60) + #10;
          end;
         if Mas1[i].Clas2 = 'Порушення правил виконання робiт        ' then Primitka:=Primitka + 'ППВР';
         if Mas1[i].Incident = 'І' then Primitka:=Primitka + 'Інцидент';
         if Mas1[i].Incident = 'П' then Primitka:=Primitka + 'Порушення';
         if Mas1[i].Incident = 'С' then Primitka:=Primitka + 'Сер. інцидент';
      ISheet.Cells.Item[R,6]:=Primitka;
       inc(R);
      end;
       finally
        IRange:=nil;
        ISheet:=nil;
//        IWorkBook:=nil;
       end;
      DelTrain;
     end;
//****** Кінець довідки про затримки ******
//******       Довідка про ППВР      ******
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['7'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,3].Value:=Period;    //Date
  R:=6;
   C:=0;  //номера відмов 1,2,3...
    for i:=0 to high(Mas1) do
     if (Mas1[i].Slujba = 'Ш') and (Mas1[i].Clas2 = 'Порушення правил виконання робiт        ') then
      begin
       inc(C);
        Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
         if Pos(' ',Mas1[i].Station2) <> 1 then
          Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
       ISheet.Cells.Item[R,1]:=C;
       ISheet.Cells.Item[R,2]:=Copy(Mas1[i].DateBegin,0,8);
       ISheet.Cells.Item[R,3]:=Mas1[i].SH;
       ISheet.Cells.Item[R,4]:=Station;
        if (Mas1[i].Pasajir = 0) and (Mas1[i].Primiskih = 0) and (Mas1[i].Vantajnih = 0) then
         begin
          Mas1[i].Texts1:=Mas1[i].Texts1 + #10 + 'Час відмови ' + Copy(Mas1[i].DateBegin,10,5) +
           ' – ' + Copy(Mas1[i].DateEnd,10,5) + #10;
           while Pos(#13, Mas1[i].Texts1) > 0 do
            Mas1[i].Texts1[Pos(#13, Mas1[i].Texts1)] := ' ';
         end;
       ISheet.Cells.Item[R,5]:=Mas1[i].Texts1;
        Primitka:='';
         if Mas1[i].Pasajir > 0 then
          begin
           Primitka:=IntToStr(Mas1[i].Pasajir) + ' пас на ' +
            IntToStr(Mas1[i].TimePas div 60);
             if Mas1[i].TimePas mod 60 < 10 then Primitka:=Primitka + ':0'
                                            else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimePas mod 60) + #10;
          end;
         if Mas1[i].Primiskih > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Primiskih) + ' прим на ' +
            IntToStr(Mas1[i].TimePrim div 60);
              if Mas1[i].TimePrim mod 60 < 10 then Primitka:=Primitka + ':0'
                                              else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimePrim mod 60) + #10;
          end;
         if Mas1[i].Vantajnih > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Vantajnih) + ' вант на ' +
            IntToStr(Mas1[i].TimeVant div 60);
              if Mas1[i].TimeVant mod 60 < 10 then Primitka:=Primitka + ':0'
                                              else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimeVant mod 60) + #10;
          end;
         if Mas1[i].Incident = 'І' then Primitka:=Primitka + 'Інцидент';
         if Mas1[i].Incident = 'П' then Primitka:=Primitka + 'Порушення';
         if Mas1[i].Incident = 'С' then Primitka:=Primitka + 'Сер. інцидент';
      ISheet.Cells.Item[R,6]:=Primitka;
       inc(R);
      end;
       finally
        IRange:=nil;
        ISheet:=nil;
//        IWorkBook:=nil;
       end;
     end;
//****** Кінець довідки про ППВР     ******
//****** Довідка про інциденти та порушення ******
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['8'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,3].Value:=Period;    //Date
  R:=6;
   C:=0;  //номера відмов 1,2,3...
    for i:=0 to high(Mas1) do
     if (Mas1[i].Slujba = 'Ш') and (Mas1[i].Incident <> ' ') then
      begin
       inc(C);
        Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
         if Pos(' ',Mas1[i].Station2) <> 1 then
          Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
       ISheet.Cells.Item[R,1]:=C;
       ISheet.Cells.Item[R,2]:=Copy(Mas1[i].DateBegin,0,8);
       ISheet.Cells.Item[R,3]:=Mas1[i].SH;
       ISheet.Cells.Item[R,4]:=Station;
         Mas1[i].Texts1:=Mas1[i].Texts1 + #10 + 'Час відмови ' + Copy(Mas1[i].DateBegin,10,5) +
          ' – ' + Copy(Mas1[i].DateEnd,10,5) + #10;
          while Pos(#13, Mas1[i].Texts1) > 0 do
           Mas1[i].Texts1[Pos(#13, Mas1[i].Texts1)] := ' ';
       ISheet.Cells.Item[R,5]:=Mas1[i].Texts1;
        Primitka:='';
         if Mas1[i].Incident = 'І' then Primitka:=Primitka + 'Інцидент' + #10;
         if Mas1[i].Incident = 'П' then Primitka:=Primitka + 'Порушення' + #10;
         if Mas1[i].Incident = 'С' then Primitka:=Primitka + 'Сер. інцидент' + #10;
          Primitka:=Primitka + Mas1[i].PrimIncid + #10;
         if Mas1[i].Pasajir > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Pasajir) + ' пас на ' +
            IntToStr(Mas1[i].TimePas div 60);
             if Mas1[i].TimePas mod 60 < 10 then Primitka:=Primitka + ':0'
                                            else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimePas mod 60) + #10;
          end;
         if Mas1[i].Primiskih > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Primiskih) + ' прим на ' +
            IntToStr(Mas1[i].TimePrim div 60);
              if Mas1[i].TimePrim mod 60 < 10 then Primitka:=Primitka + ':0'
                                              else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimePrim mod 60) + #10;
          end;
         if Mas1[i].Vantajnih > 0 then
          begin
           Primitka:=Primitka + IntToStr(Mas1[i].Vantajnih) + ' вант на ' +
            IntToStr(Mas1[i].TimeVant div 60);
              if Mas1[i].TimeVant mod 60 < 10 then Primitka:=Primitka + ':0'
                                              else Primitka:=Primitka + ':';
             Primitka:=Primitka + IntToStr(Mas1[i].TimeVant mod 60) + #10;
          end;
         if Mas1[i].Clas2 = 'Порушення правил виконання робiт        ' then Primitka:=Primitka + 'ППВР';
      ISheet.Cells.Item[R,6]:=Primitka;
       inc(R);
      end;
       finally
        IRange:=nil;
        ISheet:=nil;
        IWorkBook:=nil;
       end;
     end;
//****** Кінець довідки про інциденти ******
  finally
  ShowExcel;
  ReleaseExcel;
  end;
 end;

if CheckBox2.Checked then    //Довідки по рейковим колам
 begin
 try
  CreateExcel(true);
  //Довідка №1
  for R:=1 to 42 do for C:=1 to 16 do DataMas[R,C]:=0;
   R:=1;
  for i:=0 to high(Mas1) do
   if (Mas1[i].Slujba = 'Ш') and (Mas1[i].Element = 'Pейковi кола             ') then
    begin
     C:=StrToInt(Mas1[i].SH);
      if C > 9 then dec(C);
     if Mas1[i].Cause2 = 'Закорочування рейкового кола                      ' then
      if Mas1[i].Cause1 = 'Р.к. на станції                                   ' then R:=1 else R:=3;
     if Mas1[i].Cause2 = 'Порушення регул. режиму персоналом                ' then R:=5;
     if (Mas1[i].Cause2 = 'Обрив бутлежних перемичок                         ') or
        (Mas1[i].Cause2 = 'Несправнiсть ДТ-перемичок                         ') then R:=7;
     if Mas1[i].Cause3 = 'Стрiлочної гарнiтури                              ' then R:=9;
     if Mas1[i].Cause2 = 'Обрив тягов. i джемперн. перемичок                ' then R:=11;
     if Mas1[i].Cause2 = 'Обрив, вiдсутнiсть з’єднувачiв                    ' then R:=13;
     if Mas1[i].Cause2 = 'Iншi пошкодження                                  ' then R:=15;
     if Mas1[i].Cause2 = 'Втрата шунтової чутливості                        ' then R:=20;
     if (Mas1[i].Cause2 = 'Підвищення напруги з вини ШЧ                      ') or
        (Mas1[i].Cause2 = 'Неправильні дії працівників ШЧ                    ') then R:=22;
     if Mas1[i].Cause2 = 'Підживлення реле від сторонніх джерел             ' then R:=24;
     if Mas1[i].Cause2 = 'Несправність перемичок з’єднувачів                ' then R:=26;
     if Mas1[i].Cause2 = 'Несправність апаратури, монтажу, кабелів          ' then R:=28;
     if (Mas1[i].Cause2 = 'Порушення чергування полярності і пробій стика    ') or
        (Mas1[i].Cause2 = 'Інші причини                                      ') then R:=30;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,14]:=DataMas[R,14]+1;
     DataMas[35,C]:=DataMas[35,C]+1;
     DataMas[35,14]:=DataMas[35,14]+1;
      if R < 17 then
       begin
        DataMas[17,14]:=DataMas[17,14]+1;
        DataMas[17,C]:=DataMas[17,C]+1;
       end else
       begin
        DataMas[32,14]:=DataMas[32,14]+1;
        DataMas[32,C]:=DataMas[32,C]+1;
       end;
    end;  //for

  for i:=0 to high(Mas2) do
   if (Mas2[i].Slujba = 'Ш') and (Mas2[i].Element = 'Pейковi кола             ') then
    begin
     C:=StrToInt(Mas2[i].SH);
      if C > 9 then dec(C);
     if Mas2[i].Cause2 = 'Закорочування рейкового кола                      ' then
      if Mas2[i].Cause1 = 'Р.к. на станції                                   ' then R:=2 else R:=4;
     if Mas2[i].Cause2 = 'Порушення регул. режиму персоналом                ' then R:=6;
     if (Mas2[i].Cause2 = 'Обрив бутлежних перемичок                         ') or
        (Mas2[i].Cause2 = 'Несправнiсть ДТ-перемичок                         ') then R:=8;
     if Mas2[i].Cause3 = 'Стрiлочної гарнiтури                              ' then R:=10;
     if Mas2[i].Cause2 = 'Обрив тягов. i джемперн. перемичок                ' then R:=12;
     if Mas2[i].Cause2 = 'Обрив, вiдсутнiсть з’єднувачiв                    ' then R:=14;
     if Mas2[i].Cause2 = 'Iншi пошкодження                                  ' then R:=16;
     if Mas2[i].Cause2 = 'Втрата шунтової чутливості                        ' then R:=21;
     if (Mas2[i].Cause2 = 'Підвищення напруги з вини ШЧ                      ') or
        (Mas2[i].Cause2 = 'Неправильні дії працівників ШЧ                    ') then R:=23;
     if Mas2[i].Cause2 = 'Підживлення реле від сторонніх джерел             ' then R:=25;
     if Mas2[i].Cause2 = 'Несправність перемичок з’єднувачів                ' then R:=27;
     if Mas2[i].Cause2 = 'Несправність апаратури, монтажу, кабелів          ' then R:=29;
     if (Mas2[i].Cause2 = 'Порушення чергування полярності і пробій стика    ') or
        (Mas2[i].Cause2 = 'Інші причини                                      ') then R:=31;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,14]:=DataMas[R,14]+1;
     DataMas[36,C]:=DataMas[36,C]+1;
     DataMas[36,14]:=DataMas[36,14]+1;
      if R < 17 then
       begin
        DataMas[18,14]:=DataMas[18,14]+1;
        DataMas[18,C]:=DataMas[18,C]+1;
       end else
       begin
        DataMas[33,14]:=DataMas[33,14]+1;
        DataMas[33,C]:=DataMas[33,C]+1;
       end;
    end;  //for

      ValueArray:=VarArrayCreate([1,36,1,14],varVariant);
       for R:=1 to 36 do for C:=1 to 14 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
    if Assigned(IXLApp) then
     begin
//      LaunchDir:='C:\Scb\Reports\';
      IWorkBook:=AddWorkBook(LaunchDir + 'Slujba.xls');
       try
        ISheet:=IWorkBook.WorkSheets.Item['1'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table1s',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
//        IWorkBook:=nil;
       end;
     end;

//   Довідка №3

  for R:=1 to 42 do for C:=1 to 16 do DataMas[R,C]:=0;
  for i:=0 to high(Mas1) do
   if Mas1[i].Slujba = 'Е' then
    begin
     C:=StrToInt(Mas1[i].SH);
      if C > 9 then dec(C);
       Cause:='Iншi причини             ';
     if Mas1[i].Element = 'Pейковi кола             ' then
       Cause:=Mas1[i].Cause4;
     if Mas1[i].Element = 'Кабельнi лiнiї           ' then
       Cause:=Mas1[i].Cause3;
     if Mas1[i].Element = 'Повiтрянi лiнiї          ' then
       Cause:=Mas1[i].Cause3;
     if Mas1[i].Element = 'Пристрої СЦБ справні     ' then
       Cause:=Mas1[i].Cause1;
     R:=17;
     if Cause = 'Вимкнення електроенергiї                          ' then R:=1;
     if Cause = 'Подання завищеної напруги                         ' then R:=3;
     if Cause = 'Подання заниженої напруги                         ' then R:=3;
     if Cause = 'Неправильне заземлення при роботах                ' then R:=5;
     if Cause = 'Несправнiсть iскрових промiжкiв                   ' then R:=7;
     if Cause = 'Тривалий час перемикання фiдерiв                  ' then R:=9;
     if Cause = 'К.з. в контактнiй мережi                          ' then R:=11;
     if Cause = 'К.з. в линiї автоблокування                       ' then R:=11;
     if Cause = 'Пробиття кабеля тяговим струмом                   ' then R:=13;
     if Cause = 'Розрядження акумуляторiв                          ' then R:=15;
     if Cause = 'Iншi причини                                      ' then R:=17;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[19,C]:=DataMas[19,C]+1;
      DataMas[R,14]:=DataMas[R,14]+1;
      DataMas[19,14]:=DataMas[19,14]+1;
    end;
  for i:=0 to high(Mas2) do
   if Mas2[i].Slujba = 'Е' then
    begin
       C:=StrToInt(Mas2[i].SH);
        if C > 9 then dec(C);
       Cause:='Iншi причини             ';
     if Mas2[i].Element = 'Pейковi кола             ' then
       Cause:=Mas2[i].Cause4;
     if Mas2[i].Element = 'Кабельнi лiнiї           ' then
       Cause:=Mas2[i].Cause3;
     if Mas2[i].Element = 'Повiтрянi лiнiї          ' then
       Cause:=Mas2[i].Cause3;
     if Mas2[i].Element = 'Пристрої СЦБ справні     ' then
       Cause:=Mas2[i].Cause1;
     R:=18;
     if Cause = 'Вимкнення електроенергiї                          ' then R:=2;
     if Cause = 'Подання завищеної напруги                         ' then R:=4;
     if Cause = 'Подання заниженої напруги                         ' then R:=4;
     if Cause = 'Неправильне заземлення при роботах                ' then R:=6;
     if Cause = 'Несправнiсть iскрових промiжкiв                   ' then R:=8;
     if Cause = 'Тривалий час перемикання фiдерiв                  ' then R:=10;
     if Cause = 'К.з. в контактнiй мережi                          ' then R:=12;
     if Cause = 'К.з. в линiї автоблокування                       ' then R:=12;
     if Cause = 'Пробиття кабеля тяговим струмом                   ' then R:=14;
     if Cause = 'Розрядження акумуляторiв                          ' then R:=16;
     if Cause = 'Iншi причини                                      ' then R:=18;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[20,C]:=DataMas[20,C]+1;
      DataMas[R,14]:=DataMas[R,14]+1;
      DataMas[20,14]:=DataMas[20,14]+1;
    end;

      ValueArray:=VarArrayCreate([1,20,1,14],varVariant);
       for R:=1 to 20 do for C:=1 to 14 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table3s',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;

//Довідка №2

 for R:=1 to 42 do for C:=1 to 24 do DataMas[R,C]:=0;
   C:=1;
  for i:=0 to high(Mas1) do
   if (Mas1[i].Slujba = 'П') and (Mas1[i].Element = 'Pейковi кола             ') then
    begin
     if Mas1[i].SH = '01' then
      begin
       if Mas1[i].PH = '2 ' then C:=1;
       if Mas1[i].PH = '3 ' then C:=2;
       if Mas1[i].PH = '13' then C:=3;
      end;
     if Mas1[i].SH = '02' then C:=4;
     if Mas1[i].SH = '03' then C:=5;
     if Mas1[i].SH = '04' then
      begin
       if Mas1[i].PH = '9 ' then C:=6;
       if Mas1[i].PH = '19' then C:=7;
      end;
     if Mas1[i].SH = '05' then
      begin
       if Mas1[i].PH = '19' then C:=8;
       if Mas1[i].PH = '20' then C:=9;
      end;
     if Mas1[i].SH = '06' then C:=10;
     if Mas1[i].SH = '07' then
      begin
       if Mas1[i].PH = '11' then C:=11;
       if Mas1[i].PH = '13' then C:=12;
      end;
     if Mas1[i].SH = '08' then
      begin
       if Mas1[i].PH = '1 ' then C:=13;
       if Mas1[i].PH = '14' then C:=14;
      end;
     if Mas1[i].SH = '10' then
      begin
       if Mas1[i].PH = '1 ' then C:=15;
       if Mas1[i].PH = '6 ' then C:=16;
      end;
     if Mas1[i].SH = '11' then
      begin
       if Mas1[i].PH = '5 ' then C:=17;
       if Mas1[i].PH = '10' then C:=18;
      end;
     if Mas1[i].SH = '12' then C:=19;
     if Mas1[i].SH = '13' then
      begin
       if Mas1[i].PH = '13' then C:=20;
       if Mas1[i].PH = '15' then C:=21;
      end;
     if Mas1[i].SH = '14' then
      begin
       if Mas1[i].PH = '8 ' then C:=22;
       if Mas1[i].PH = '20' then C:=23;
      end;
    R:=27;
     if Mas1[i].Cause4 = 'Згін iзостика                                     ' then R:=1;
     if Mas1[i].Cause4 = 'Розтяжка iзостика                                 ' then R:=1;
     if Mas1[i].Cause4 = 'Угон рейки                                        ' then R:=1;
     if Mas1[i].Cause4 = 'Несправнiсть клеєболтового стика                  ' then R:=3;
     if Mas1[i].Cause4 = 'Стружка, окалина                                  ' then R:=5;
     if Mas1[i].Cause4 = 'Стороннi предмети                                 ' then R:=5;
     if Mas1[i].Cause3 = 'Стрiлочної гарнiтури                              ' then R:=7;
     if Mas1[i].Cause3 = 'Стяжної смуги                                     ' then R:=7;
     if Mas1[i].Cause3 = 'Серег                                             ' then R:=7;
     if Mas1[i].Cause3 = 'Розпiрок хрестовини                               ' then R:=7;
     if Mas1[i].Cause2 = 'Закорочування рейкового кола                      ' then
      begin
        if Mas1[i].Cause1 = 'Р.к. на станції                                   ' then R:=9 else R:=11;
        if Mas1[i].Cause3 = 'При колiйних роботах                              ' then R:=13;
        if Mas1[i].Cause3 = 'Зниження iзоляцiї залiзобет. шпал                 ' then R:=21;
        if Mas1[i].Cause3 = 'Несправнiсть настилiв на переїздi                 ' then R:=23;
      end;
     if Mas1[i].Cause2 = 'Обрив, вiдсутнiсть з’єднувачiв                    ' then R:=15;
     if Mas1[i].Cause2 = 'Обрив тягов. i джемперн. перемичок                ' then R:=15;
     if Mas1[i].Cause2 = 'Обрив бутлежних перемичок                         ' then R:=15;
     if Mas1[i].Cause2 = 'Несправнiсть ДТ-перемичок                         ' then R:=15;

     if Mas1[i].Cause2 = 'Неякiсне графiтне мастило                         ' then R:=17;
     if Mas1[i].Cause2 = 'Зниження опору iзоляцiї баласту                   ' then R:=19;
     if Mas1[i].Cause2 = 'Злам рейки                                        ' then R:=25;
     if Mas1[i].Cause2 = 'Iншi пошкодження                                  ' then R:=27;
     if Mas1[i].Proyava = 'Несправжня вільність рейкового кола                                        ' then R:=29;
     if Mas1[i].Proyava = 'Несправжня вільність р.к.                                                  ' then R:=29;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[R,24]:=DataMas[R,24]+1;
      DataMas[31,C]:=DataMas[31,C]+1;
      DataMas[31,24]:=DataMas[31,24]+1;
    end;

  for i:=0 to high(Mas2) do
   if (Mas2[i].Slujba = 'П') and (Mas2[i].Element = 'Pейковi кола             ') then
    begin
     if Mas2[i].SH = '01' then
      begin
       if Mas2[i].PH = '2 ' then C:=1;
       if Mas2[i].PH = '3 ' then C:=2;
       if Mas2[i].PH = '13' then C:=3;
      end;
     if Mas2[i].SH = '02' then C:=4;
     if Mas2[i].SH = '03' then C:=5;
     if Mas2[i].SH = '04' then
      begin
       if Mas2[i].PH = '9 ' then C:=6;
       if Mas2[i].PH = '19' then C:=7;
      end;
     if Mas2[i].SH = '05' then
      begin
       if Mas2[i].PH = '19' then C:=8;
       if Mas2[i].PH = '20' then C:=9;
      end;
     if Mas2[i].SH = '06' then C:=10;
     if Mas2[i].SH = '07' then
      begin
       if Mas2[i].PH = '11' then C:=11;
       if Mas2[i].PH = '13' then C:=12;
      end;
     if Mas2[i].SH = '08' then
      begin
       if Mas2[i].PH = '1 ' then C:=13;
       if Mas2[i].PH = '14' then C:=14;
      end;
     if Mas2[i].SH = '10' then
      begin
       if Mas2[i].PH = '1 ' then C:=15;
       if Mas2[i].PH = '6 ' then C:=16;
      end;
     if Mas2[i].SH = '11' then
      begin
       if Mas2[i].PH = '5 ' then C:=17;
       if Mas2[i].PH = '10' then C:=18;
      end;
     if Mas2[i].SH = '12' then C:=19;
     if Mas2[i].SH = '13' then
      begin
       if Mas2[i].PH = '13' then C:=20;
       if Mas2[i].PH = '15' then C:=21;
      end;
     if Mas2[i].SH = '14' then
      begin
       if Mas2[i].PH = '8 ' then C:=22;
       if Mas2[i].PH = '20' then C:=23;
      end;
    R:=28;
     if Mas2[i].Cause4 = 'Згін iзостика                                     ' then R:=2;
     if Mas2[i].Cause4 = 'Розтяжка iзостика                                 ' then R:=2;
     if Mas2[i].Cause4 = 'Угон рейки                                        ' then R:=2;
     if Mas2[i].Cause4 = 'Несправнiсть клеєболтового стика                  ' then R:=4;
     if Mas2[i].Cause4 = 'Стружка, окалина                                  ' then R:=6;
     if Mas2[i].Cause4 = 'Стороннi предмети                                 ' then R:=6;
     if Mas2[i].Cause3 = 'Стрiлочної гарнiтури                              ' then R:=8;
     if Mas2[i].Cause3 = 'Стяжної смуги                                     ' then R:=8;
     if Mas2[i].Cause3 = 'Серег                                             ' then R:=8;
     if Mas2[i].Cause3 = 'Розпiрок хрестовини                               ' then R:=8;
     if Mas2[i].Cause2 = 'Закорочування рейкового кола                      ' then
      begin
        if Mas2[i].Cause1 = 'Р.к. на станції                                   ' then R:=10 else R:=12;
        if Mas2[i].Cause3 = 'При колiйних роботах                              ' then R:=14;
        if Mas2[i].Cause3 = 'Зниження iзоляцiї залiзобет. шпал                 ' then R:=22;
        if Mas2[i].Cause3 = 'Несправнiсть настилiв на переїздi                 ' then R:=24;
      end;
     if Mas2[i].Cause2 = 'Обрив, вiдсутнiсть з’єднувачiв                    ' then R:=16;
     if Mas2[i].Cause2 = 'Обрив тягов. i джемперн. перемичок                ' then R:=16;
     if Mas2[i].Cause2 = 'Обрив бутлежних перемичок                         ' then R:=16;
     if Mas2[i].Cause2 = 'Несправнiсть ДТ-перемичок                         ' then R:=16;
     if Mas2[i].Cause2 = 'Неякiсне графiтне мастило                         ' then R:=18;
     if Mas2[i].Cause2 = 'Зниження опору iзоляцiї баласту                   ' then R:=20;
     if Mas2[i].Cause2 = 'Злам рейки                                        ' then R:=26;
     if Mas2[i].Cause2 = 'Iншi пошкодження                                  ' then R:=28;
     if Mas2[i].Proyava = 'Несправжня вільність рейкового кола                                        ' then R:=30;
     if Mas2[i].Proyava = 'Несправжня вільність р.к.                                                  ' then R:=30;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[R,24]:=DataMas[R,24]+1;
      DataMas[32,C]:=DataMas[32,C]+1;
      DataMas[32,24]:=DataMas[32,24]+1;
    end;

     ValueArray:=VarArrayCreate([1,32,1,24],varVariant);
       for R:=1 to 32 do for C:=1 to 24 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['2'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table2s',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
        IWorkBook:=nil;
       end;
     end;
  finally
   ShowExcel;
   ReleaseExcel;
  end;
 end; //if checked2


if CheckBox3.Checked then    //Довідки для Укрзалізниці
 begin
 try
  CreateExcel(true);
  //Розподіл відмов по службах
  for R:=1 to 47 do for C:=1 to 3 do DataMas[R,C]:=0;
  for i:=0 to high(Mas1) do
   begin
    DataMas[1,1]:=DataMas[1,1]+1;      //1
     if Mas1[i].Slujba = 'Ш' then      //2
       begin
        DataMas[2,1]:=DataMas[2,1]+1;
         if Mas1[i].Element = 'Pейковi кола             ' then DataMas[3,1]:=DataMas[3,1]+1;
       end;
     if Mas1[i].Slujba = 'П' then      //3
       begin
        DataMas[4,1]:=DataMas[4,1]+1;
         if Mas1[i].Element = 'Pейковi кола             ' then DataMas[5,1]:=DataMas[5,1]+1;
         if Mas1[i].Element = 'Гарнітура                ' then DataMas[6,1]:=DataMas[6,1]+1;
       end;
     if Mas1[i].Slujba = 'Д' then      //4
       begin
        DataMas[7,1]:=DataMas[7,1]+1;
         if Mas1[i].Element = 'Пристрої СЦБ справні     ' then DataMas[8,1]:=DataMas[8,1]+1;
       end;
     if Mas1[i].Slujba = 'Е' then      //5
       begin
        DataMas[10,1]:=DataMas[10,1]+1;
         Cause:='';
         if Mas1[i].Element = 'Pейковi кола             ' then
           Cause:=Mas1[i].Cause4;
         if Mas1[i].Element = 'Кабельнi лiнiї           ' then
           Cause:=Mas1[i].Cause3;
         if Mas1[i].Element = 'Повiтрянi лiнiї          ' then
           Cause:=Mas1[i].Cause3;
         if Mas1[i].Element = 'Пристрої СЦБ справні     ' then
           Cause:=Mas1[i].Cause1;
             if Cause = 'Вимкнення електроенергiї                          ' then DataMas[11,1]:=DataMas[11,1]+1;
             if Cause = 'Подання завищеної напруги                         ' then DataMas[12,1]:=DataMas[12,1]+1;
             if Cause = 'Подання заниженої напруги                         ' then DataMas[12,1]:=DataMas[12,1]+1;
       end;
     if Mas1[i].Slujba = 'Т' then DataMas[13,1]:=DataMas[13,1]+1; //6
     if Mas1[i].Slujba = 'В' then DataMas[13,1]:=DataMas[13,1]+1;
     if Mas1[i].Slujba = 'І' then DataMas[13,1]:=DataMas[13,1]+1;
     if Mas1[i].Proizd <> 0 then    //7
       begin
        DataMas[14,1]:=DataMas[14,1]+Mas1[i].Proizd;
         if Mas1[i].Slujba = 'Ш' then
           begin
            DataMas[15,1]:=DataMas[15,1]+Mas1[i].Proizd;
            DataMas[16,1]:=DataMas[16,1]+Mas1[i].Proizd;
           end;
         if Mas1[i].Slujba = 'П' then DataMas[18,1]:=DataMas[18,1]+Mas1[i].Proizd;
         if Mas1[i].Slujba = 'Е' then DataMas[19,1]:=DataMas[19,1]+Mas1[i].Proizd;
         if Mas1[i].Slujba = 'Д' then DataMas[20,1]:=DataMas[20,1]+Mas1[i].Proizd;
         if Mas1[i].Slujba = 'Т' then DataMas[21,1]:=DataMas[21,1]+Mas1[i].Proizd;
         if Mas1[i].Slujba = 'В' then DataMas[21,1]:=DataMas[21,1]+Mas1[i].Proizd;
         if Mas1[i].Slujba = 'І' then DataMas[21,1]:=DataMas[21,1]+Mas1[i].Proizd;
       end;
     if Mas1[i].WoProizd <> 0 then    //7
       begin
        DataMas[14,1]:=DataMas[14,1]+Mas1[i].WoProizd;
         if Mas1[i].Slujba = 'Ш' then
           begin
            DataMas[15,1]:=DataMas[15,1]+Mas1[i].WoProizd;
            DataMas[17,1]:=DataMas[17,1]+Mas1[i].WoProizd;
           end;
         if Mas1[i].Slujba = 'П' then DataMas[18,1]:=DataMas[18,1]+Mas1[i].WoProizd;
         if Mas1[i].Slujba = 'Е' then DataMas[19,1]:=DataMas[19,1]+Mas1[i].WoProizd;
         if Mas1[i].Slujba = 'Д' then DataMas[20,1]:=DataMas[20,1]+Mas1[i].WoProizd;
         if Mas1[i].Slujba = 'Т' then DataMas[21,1]:=DataMas[21,1]+Mas1[i].WoProizd;
         if Mas1[i].Slujba = 'В' then DataMas[21,1]:=DataMas[21,1]+Mas1[i].WoProizd;
         if Mas1[i].Slujba = 'І' then DataMas[21,1]:=DataMas[21,1]+Mas1[i].WoProizd;
       end;
     if Mas1[i].Priglasit <> 0 then    //8
       begin
        DataMas[22,1]:=DataMas[22,1]+1;
         if Mas1[i].Slujba = 'Ш' then DataMas[23,1]:=DataMas[23,1]+1;
         if Mas1[i].Slujba = 'П' then DataMas[24,1]:=DataMas[24,1]+1;
         if Mas1[i].Slujba = 'Е' then DataMas[25,1]:=DataMas[25,1]+1;
         if Mas1[i].Slujba = 'Д' then DataMas[26,1]:=DataMas[26,1]+1;
         if Mas1[i].Slujba = 'Т' then DataMas[27,1]:=DataMas[27,1]+1;
         if Mas1[i].Slujba = 'В' then DataMas[27,1]:=DataMas[27,1]+1;
         if Mas1[i].Slujba = 'І' then DataMas[27,1]:=DataMas[27,1]+1;
       end;
     if Mas1[i].Closed <> 0 then    //9
       begin
        DataMas[28,1]:=DataMas[28,1]+1;
         if Mas1[i].Slujba = 'Ш' then DataMas[29,1]:=DataMas[29,1]+1;
         if Mas1[i].Slujba = 'П' then DataMas[30,1]:=DataMas[30,1]+1;
         if Mas1[i].Slujba = 'Е' then DataMas[31,1]:=DataMas[31,1]+1;
         if Mas1[i].Slujba = 'Д' then DataMas[32,1]:=DataMas[32,1]+1;
         if Mas1[i].Slujba = 'Т' then DataMas[33,1]:=DataMas[33,1]+1;
         if Mas1[i].Slujba = 'В' then DataMas[33,1]:=DataMas[33,1]+1;
         if Mas1[i].Slujba = 'І' then DataMas[33,1]:=DataMas[33,1]+1;
       end;
     if (Mas1[i].Pasajir <> 0) or (Mas1[i].Primiskih <> 0) or (Mas1[i].Vantajnih <> 0) then
       DataMas[34,1]:=DataMas[34,1]+1;
     if Mas1[i].Pasajir <> 0 then DataMas[35,1]:=DataMas[35,1]+Mas1[i].Pasajir;
     if Mas1[i].Primiskih <> 0 then DataMas[37,1]:=DataMas[37,1]+Mas1[i].Primiskih;
     if Mas1[i].Vantajnih <> 0 then DataMas[39,1]:=DataMas[39,1]+Mas1[i].Vantajnih;
     if Mas1[i].TimePas <> 0 then DataMas[36,1]:=DataMas[36,1]+Mas1[i].TimePas;
     if Mas1[i].TimePrim <> 0 then DataMas[38,1]:=DataMas[38,1]+Mas1[i].TimePrim;
     if Mas1[i].TimeVant <> 0 then DataMas[40,1]:=DataMas[40,1]+Mas1[i].TimeVant;
     if (Mas1[i].Incident <> ' ') and (Mas1[i].Slujba = 'Ш') then
       begin
        DataMas[41,1]:=DataMas[41,1]+1;
         if Mas1[i].Incident = 'І' then DataMas[42,1]:=DataMas[42,1]+1;
         if Mas1[i].Incident = 'П' then DataMas[43,1]:=DataMas[43,1]+1;
         if Mas1[i].Incident = 'С' then DataMas[44,1]:=DataMas[44,1]+1;
       end;
   end;
  for i:=0 to high(Mas2) do
   begin
    DataMas[1,2]:=DataMas[1,2]+1;      //1
     if Mas2[i].Slujba = 'Ш' then      //2
       begin
        DataMas[2,2]:=DataMas[2,2]+1;
         if Mas2[i].Element = 'Pейковi кола             ' then DataMas[3,2]:=DataMas[3,2]+1;
       end;
     if Mas2[i].Slujba = 'П' then      //3
       begin
        DataMas[4,2]:=DataMas[4,2]+1;
         if Mas2[i].Element = 'Pейковi кола             ' then DataMas[5,2]:=DataMas[5,2]+1;
         if Mas2[i].Element = 'Гарнітура                ' then DataMas[6,2]:=DataMas[6,2]+1;
       end;
     if Mas2[i].Slujba = 'Д' then      //4
       begin
        DataMas[7,2]:=DataMas[7,2]+1;
         if Mas2[i].Element = 'Пристрої СЦБ справні     ' then DataMas[8,2]:=DataMas[8,2]+1;
       end;
     if Mas2[i].Slujba = 'Е' then      //5
       begin
        DataMas[10,2]:=DataMas[10,2]+1;
         Cause:='';
         if Mas2[i].Element = 'Pейковi кола             ' then
           Cause:=Mas2[i].Cause4;
         if Mas2[i].Element = 'Кабельнi лiнiї           ' then
           Cause:=Mas2[i].Cause3;
         if Mas2[i].Element = 'Повiтрянi лiнiї          ' then
           Cause:=Mas2[i].Cause3;
         if Mas2[i].Element = 'Пристрої СЦБ справні     ' then
           Cause:=Mas2[i].Cause1;
             if Cause = 'Вимкнення електроенергiї                          ' then DataMas[11,2]:=DataMas[11,2]+1;
             if Cause = 'Подання завищеної напруги                         ' then DataMas[12,2]:=DataMas[12,2]+1;
             if Cause = 'Подання заниженої напруги                         ' then DataMas[12,2]:=DataMas[12,2]+1;
       end;
     if Mas2[i].Slujba = 'Т' then DataMas[13,2]:=DataMas[13,2]+1; //6
     if Mas2[i].Slujba = 'В' then DataMas[13,2]:=DataMas[13,2]+1;
     if Mas2[i].Slujba = 'І' then DataMas[13,2]:=DataMas[13,2]+1;
     if Mas2[i].Proizd <> 0 then    //7
       begin
        DataMas[14,2]:=DataMas[14,2]+Mas2[i].Proizd;
         if Mas2[i].Slujba = 'Ш' then
           begin
            DataMas[15,2]:=DataMas[15,2]+Mas2[i].Proizd;
            DataMas[16,2]:=DataMas[16,2]+Mas2[i].Proizd;
           end;
         if Mas2[i].Slujba = 'П' then DataMas[18,2]:=DataMas[18,2]+Mas2[i].Proizd;
         if Mas2[i].Slujba = 'Е' then DataMas[19,2]:=DataMas[19,2]+Mas2[i].Proizd;
         if Mas2[i].Slujba = 'Д' then DataMas[20,2]:=DataMas[20,2]+Mas2[i].Proizd;
         if Mas2[i].Slujba = 'Т' then DataMas[21,2]:=DataMas[21,2]+Mas2[i].Proizd;
         if Mas2[i].Slujba = 'В' then DataMas[21,2]:=DataMas[21,2]+Mas2[i].Proizd;
         if Mas2[i].Slujba = 'І' then DataMas[21,2]:=DataMas[21,2]+Mas2[i].Proizd;
       end;
     if Mas2[i].WoProizd <> 0 then    //7
       begin
        DataMas[14,2]:=DataMas[14,2]+Mas2[i].WoProizd;
         if Mas2[i].Slujba = 'Ш' then
           begin
            DataMas[15,2]:=DataMas[15,2]+Mas2[i].WoProizd;
            DataMas[17,2]:=DataMas[17,2]+Mas2[i].WoProizd;
           end;
         if Mas2[i].Slujba = 'П' then DataMas[18,2]:=DataMas[18,2]+Mas2[i].WoProizd;
         if Mas2[i].Slujba = 'Е' then DataMas[19,2]:=DataMas[19,2]+Mas2[i].WoProizd;
         if Mas2[i].Slujba = 'Д' then DataMas[20,2]:=DataMas[20,2]+Mas2[i].WoProizd;
         if Mas2[i].Slujba = 'Т' then DataMas[21,2]:=DataMas[21,2]+Mas2[i].WoProizd;
         if Mas2[i].Slujba = 'В' then DataMas[21,2]:=DataMas[21,2]+Mas2[i].WoProizd;
         if Mas2[i].Slujba = 'І' then DataMas[21,2]:=DataMas[21,2]+Mas2[i].WoProizd;
       end;
     if Mas2[i].Priglasit <> 0 then    //8
       begin
        DataMas[22,2]:=DataMas[22,2]+1;
         if Mas2[i].Slujba = 'Ш' then DataMas[23,2]:=DataMas[23,2]+1;
         if Mas2[i].Slujba = 'П' then DataMas[24,2]:=DataMas[24,2]+1;
         if Mas2[i].Slujba = 'Е' then DataMas[25,2]:=DataMas[25,2]+1;
         if Mas2[i].Slujba = 'Д' then DataMas[26,2]:=DataMas[26,2]+1;
         if Mas2[i].Slujba = 'Т' then DataMas[27,2]:=DataMas[27,2]+1;
         if Mas2[i].Slujba = 'В' then DataMas[27,2]:=DataMas[27,2]+1;
         if Mas2[i].Slujba = 'І' then DataMas[27,2]:=DataMas[27,2]+1;
       end;
     if Mas2[i].Closed <> 0 then    //9
       begin
        DataMas[28,2]:=DataMas[28,2]+1;
         if Mas2[i].Slujba = 'Ш' then DataMas[29,2]:=DataMas[29,2]+1;
         if Mas2[i].Slujba = 'П' then DataMas[30,2]:=DataMas[30,2]+1;
         if Mas2[i].Slujba = 'Е' then DataMas[31,2]:=DataMas[31,2]+1;
         if Mas2[i].Slujba = 'Д' then DataMas[32,2]:=DataMas[32,2]+1;
         if Mas2[i].Slujba = 'Т' then DataMas[33,2]:=DataMas[33,2]+1;
         if Mas2[i].Slujba = 'В' then DataMas[33,2]:=DataMas[33,2]+1;
         if Mas2[i].Slujba = 'І' then DataMas[33,2]:=DataMas[33,2]+1;
       end;
     if (Mas2[i].Pasajir <> 0) or (Mas2[i].Primiskih <> 0) or (Mas2[i].Vantajnih <> 0) then
       DataMas[34,2]:=DataMas[34,2]+1;
     if Mas2[i].Pasajir <> 0 then DataMas[35,2]:=DataMas[35,2]+Mas2[i].Pasajir;
     if Mas2[i].Primiskih <> 0 then DataMas[37,2]:=DataMas[37,2]+Mas2[i].Primiskih;
     if Mas2[i].Vantajnih <> 0 then DataMas[39,2]:=DataMas[39,2]+Mas2[i].Vantajnih;
     if Mas2[i].TimePas <> 0 then DataMas[36,2]:=DataMas[36,2]+Mas2[i].TimePas;
     if Mas2[i].TimePrim <> 0 then DataMas[38,2]:=DataMas[38,2]+Mas2[i].TimePrim;
     if Mas2[i].TimeVant <> 0 then DataMas[40,2]:=DataMas[40,2]+Mas2[i].TimeVant;
     if (Mas2[i].Incident <> ' ') and (Mas2[i].Slujba = 'Ш') then
       begin
        DataMas[41,2]:=DataMas[41,2]+1;
         if Mas2[i].Incident = 'І' then DataMas[42,2]:=DataMas[42,2]+1;
         if Mas2[i].Incident = 'П' then DataMas[43,2]:=DataMas[43,2]+1;
         if Mas2[i].Incident = 'С' then DataMas[44,2]:=DataMas[44,2]+1;
       end;
   end;
    if Vzrez1 > 0 then
     begin
      DataMas[9,1]:=Vzrez1;
      DataMas[7,1]:=DataMas[7,1]+Vzrez1;
      DataMas[1,1]:=DataMas[1,1]+Vzrez1;
     end;
    if Vzrez2 > 0 then
     begin
      DataMas[9,2]:=Vzrez2;
      DataMas[7,2]:=DataMas[7,2]+Vzrez2;
      DataMas[1,2]:=DataMas[1,2]+Vzrez2;
     end;

   for i:=0 to high(Train1) do
    begin
     if (Train1[i].Pasajir <> 0) or (Train1[i].Primiskih <> 0) or (Train1[i].Vantajnih <> 0) then
       DataMas[34,1]:=DataMas[34,1]+1;
     if Train1[i].Pasajir <> 0 then DataMas[35,1]:=DataMas[35,1]+Train1[i].Pasajir;
     if Train1[i].Primiskih <> 0 then DataMas[37,1]:=DataMas[37,1]+Train1[i].Primiskih;
     if Train1[i].Vantajnih <> 0 then DataMas[39,1]:=DataMas[39,1]+Train1[i].Vantajnih;
     if Train1[i].TimePas <> 0 then DataMas[36,1]:=DataMas[36,1]+Train1[i].TimePas;
     if Train1[i].TimePrim <> 0 then DataMas[38,1]:=DataMas[38,1]+Train1[i].TimePrim;
     if Train1[i].TimeVant <> 0 then DataMas[40,1]:=DataMas[40,1]+Train1[i].TimeVant;
    end;
   for i:=0 to high(Train2) do
    begin
     if (Train2[i].Pasajir <> 0) or (Train2[i].Primiskih <> 0) or (Train2[i].Vantajnih <> 0) then
       DataMas[34,2]:=DataMas[34,2]+1;
     if Train2[i].Pasajir <> 0 then DataMas[35,2]:=DataMas[35,2]+Train2[i].Pasajir;
     if Train2[i].Primiskih <> 0 then DataMas[37,2]:=DataMas[37,2]+Train2[i].Primiskih;
     if Train2[i].Vantajnih <> 0 then DataMas[39,2]:=DataMas[39,2]+Train2[i].Vantajnih;
     if Train2[i].TimePas <> 0 then DataMas[36,2]:=DataMas[36,2]+Train2[i].TimePas;
     if Train2[i].TimePrim <> 0 then DataMas[38,2]:=DataMas[38,2]+Train2[i].TimePrim;
     if Train2[i].TimeVant <> 0 then DataMas[40,2]:=DataMas[40,2]+Train2[i].TimeVant;
    end;

      ValueArray:=VarArrayCreate([1,47,1,3],varVariant);
       for R:=1 to 44 do for C:=1 to 3 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
         ValueArray[45,1]:=Texosn1[18];
         ValueArray[45,2]:=Texosn2[18];
         if Texosn1[18] > 0 then ValueArray[46,1]:=DataMas[1,1]/Texosn1[18];
         if Texosn2[18] > 0 then ValueArray[46,2]:=DataMas[1,2]/Texosn2[18];
         if Texosn1[18] > 0 then ValueArray[47,1]:=DataMas[2,1]/Texosn1[18];
         if Texosn2[18] > 0 then ValueArray[47,2]:=DataMas[2,2]/Texosn2[18];

         if DataMas[1,1] > 0 then ValueArray[2,3]:=DataMas[2,1]/DataMas[1,1];
         if DataMas[1,1] > 0 then ValueArray[4,3]:=DataMas[4,1]/DataMas[1,1];
         if DataMas[1,1] > 0 then ValueArray[7,3]:=DataMas[7,1]/DataMas[1,1];
         if DataMas[1,1] > 0 then ValueArray[10,3]:=DataMas[10,1]/DataMas[1,1];
         if DataMas[1,1] > 0 then ValueArray[13,3]:=DataMas[13,1]/DataMas[1,1];

         if DataMas[36,1] > 0 then ValueArray[36,1]:=DataMas[36,1]/60;
         if DataMas[36,2] > 0 then ValueArray[36,2]:=DataMas[36,2]/60;
         if DataMas[38,1] > 0 then ValueArray[38,1]:=DataMas[38,1]/60;
         if DataMas[38,2] > 0 then ValueArray[38,2]:=DataMas[38,2]/60;
         if DataMas[40,1] > 0 then ValueArray[40,1]:=DataMas[40,1]/60;
         if DataMas[40,2] > 0 then ValueArray[40,2]:=DataMas[40,2]/60;

    if Assigned(IXLApp) then
     begin
      IWorkBook:=AddWorkBook(LaunchDir + 'UkrZal.xls');
       try
        ISheet:=IWorkBook.WorkSheets.Item['1'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table1u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//******** Кінець довідки 1 *********
//******** Довідка №2, частина1 *********
for R:=1 to 36 do for C:=1 to 7 do DataMas[R,C]:=0;
for i:=1 to 12 do TimeVidn[i]:=0;
 C:=1;
 for i:=0 to high(Mas1) do
  if Mas1[i].Slujba = 'Ш' then
   begin
    R:=25;  //інші
     DataMas[29,6]:=DataMas[29,6]+1;
      TimeVidn[6]:=TimeVidn[6]+Mas1[i].Trivalist;
    if Mas1[i].Systema = 'Е' then C:=1;
    if Mas1[i].Systema = 'А' then C:=2;
    if Mas1[i].Systema = 'Н' then C:=3;
    if Mas1[i].Systema = 'П' then C:=4;
    if Mas1[i].Systema = 'Д' then C:=5;
    if Mas1[i].Systema = 'Г' then C:=5;
    if Mas1[i].Systema = 'М' then C:=5;
    if Mas1[i].Systema = 'І' then C:=5;
     TimeVidn[C]:=TimeVidn[C]+Mas1[i].Trivalist;
    if Mas1[i].Element = 'Апарати управлiння       ' then R:=1;
    if Mas1[i].Element = 'Електричнi кола          ' then R:=3;
    if Mas1[i].Element = 'Установчi вироби         ' then R:=7;
    if Mas1[i].Element = 'Прилади                  ' then
      if Pos('Перетворювач',Mas1[i].Cause1) = 0 then R:=7
                                                else R:=9;
    if (Mas1[i].Element = 'Випрямлячi               ') or
       (Mas1[i].Element = 'Трансформатори           ') then R:=9;
    if Mas1[i].Element = 'Прилади захисту          ' then R:=11;
    if Mas1[i].Element = 'Запобiжники              ' then R:=11;
    if Mas1[i].Element = 'Сигнали                  ' then R:=15;
    if Mas1[i].Element = 'Приводи                  ' then R:=17;
    if Mas1[i].Element = 'Гарнітура                ' then R:=17;
    if Mas1[i].Element = 'Двигуни                  ' then R:=17;
    if Mas1[i].Element = 'Повiтрянi лiнiї          ' then R:=19;
    if Mas1[i].Element = 'Кабельнi лiнiї           ' then R:=21;
    if Mas1[i].Element = 'Pейковi кола             ' then R:=23;
    if Mas1[i].Element = 'Елемент не визначений    ' then R:=27;
//    if Mas1[i].Element = 'Джерела живлення         ' then
//      begin
//       R:=25;  //інші
    if Mas1[i].Cause1 = 'Щитовi живильнi установки                         ' then R:=5;
    if Mas1[i].Cause1 = 'Акумулятори                                       ' then R:=13;
//      end;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[29,C]:=DataMas[29,C]+1;
    DataMas[R,6]:=DataMas[R,6]+1;
   end;

 for i:=0 to high(Mas2) do
  if Mas2[i].Slujba = 'Ш' then
   begin
    R:=26;  //інші
     DataMas[30,6]:=DataMas[30,6]+1;
      TimeVidn[12]:=TimeVidn[12]+Mas2[i].Trivalist;
    if Mas2[i].Systema = 'Е' then C:=1;
    if Mas2[i].Systema = 'А' then C:=2;
    if Mas2[i].Systema = 'Н' then C:=3;
    if Mas2[i].Systema = 'П' then C:=4;
    if Mas2[i].Systema = 'Д' then C:=5;
    if Mas2[i].Systema = 'Г' then C:=5;
    if Mas2[i].Systema = 'М' then C:=5;
    if Mas2[i].Systema = 'І' then C:=5;
     TimeVidn[C+5]:=TimeVidn[C+5]+Mas2[i].Trivalist;
    if Mas2[i].Element = 'Апарати управлiння       ' then R:=2;
    if Mas2[i].Element = 'Електричнi кола          ' then R:=4;
    if Mas2[i].Element = 'Установчi вироби         ' then R:=8;
    if Mas2[i].Element = 'Прилади                  ' then
      if Pos('Перетворювач',Mas2[i].Cause1) = 0 then R:=8
                                                else R:=10;
    if (Mas2[i].Element = 'Випрямлячi               ') or
       (Mas2[i].Element = 'Трансформатори           ') then R:=10;
    if Mas2[i].Element = 'Прилади захисту          ' then R:=12;
    if Mas2[i].Element = 'Запобiжники              ' then R:=12;
    if Mas2[i].Element = 'Сигнали                  ' then R:=16;
    if Mas2[i].Element = 'Приводи                  ' then R:=18;
    if Mas2[i].Element = 'Гарнітура                ' then R:=18;
    if Mas2[i].Element = 'Двигуни                  ' then R:=18;
    if Mas2[i].Element = 'Повiтрянi лiнiї          ' then R:=20;
    if Mas2[i].Element = 'Кабельнi лiнiї           ' then R:=22;
    if Mas2[i].Element = 'Pейковi кола             ' then R:=24;
    if Mas2[i].Element = 'Елемент не визначений    ' then R:=28;
//    if Mas2[i].Element = 'Джерела живлення         ' then
//      begin
//       R:=26;  //інші
    if Mas2[i].Cause1 = 'Щитовi живильнi установки                         ' then R:=6;
    if Mas2[i].Cause1 = 'Акумулятори                                       ' then R:=14;
//      end;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[30,C]:=DataMas[30,C]+1;
    DataMas[R,6]:=DataMas[R,6]+1;
   end;


   ValueArray:=VarArrayCreate([1,30,1,7],varVariant);
       for R:=1 to 30 do for C:=1 to 6 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
        i:=1;
         while i < 29 do
          begin
           if DataMas[29,6] > 0 then ValueArray[i,7]:=DataMas[i,6]/DataMas[29,6];
           inc(i,2);
          end;
        i:=2;
         while i < 29 do
          begin
           if DataMas[30,6] > 0 then ValueArray[i,7]:=DataMas[i,6]/DataMas[30,6];
           inc(i,2);
          end;

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['2'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table21u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;

   ValueArray:=VarArrayCreate([1,6,1,7],varVariant);
        ValueArray[1,1]:=Texosn1[15];
        ValueArray[2,1]:=Texosn2[15];
        ValueArray[1,2]:=Texosn1[14];
        ValueArray[2,2]:=Texosn2[14];
        ValueArray[1,3]:=Texosn1[16];
        ValueArray[2,3]:=Texosn2[16];
        ValueArray[1,6]:=Texosn1[18];
        ValueArray[2,6]:=Texosn2[18];
         if Texosn1[15] > 0 then ValueArray[3,1]:=DataMas[29,1]/Texosn1[15];
         if Texosn2[15] > 0 then ValueArray[4,1]:=DataMas[30,1]/Texosn2[15];
         if Texosn1[14] > 0 then ValueArray[3,2]:=DataMas[29,2]/Texosn1[14];
         if Texosn2[14] > 0 then ValueArray[4,2]:=DataMas[30,2]/Texosn2[14];
         if Texosn1[16] > 0 then ValueArray[3,3]:=DataMas[29,3]/Texosn1[16];
         if Texosn2[16] > 0 then ValueArray[4,3]:=DataMas[30,3]/Texosn2[16];
         if Texosn1[18] > 0 then ValueArray[3,6]:=DataMas[29,6]/Texosn1[18];
         if Texosn2[18] > 0 then ValueArray[4,6]:=DataMas[30,6]/Texosn2[18];
         for i:=1 to 6 do
          begin
           if DataMas[29,i] > 0 then ValueArray[5,i]:=TimeVidn[i]/DataMas[29,i];
           if DataMas[30,i] > 0 then ValueArray[6,i]:=TimeVidn[i+6]/DataMas[30,i];
          end;
    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['2'] as Excel97.ExcelWorkSheet;
         IRange:=ISheet.Range['table23u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;

for R:=1 to 24 do for C:=1 to 7 do DataMas[R,C]:=0;
 C:=1;
for i:=0 to high(Mas1) do
 if Mas1[i].Slujba = 'Ш' then
   begin
    if Mas1[i].Systema = 'Е' then C:=1;
    if Mas1[i].Systema = 'А' then C:=2;
    if Mas1[i].Systema = 'Н' then C:=3;
    if Mas1[i].Systema = 'П' then C:=4;
    if Mas1[i].Systema = 'Д' then C:=5;
    if Mas1[i].Systema = 'Г' then C:=5;
    if Mas1[i].Systema = 'М' then C:=5;
    if Mas1[i].Systema = 'І' then C:=5;
    if Mas1[i].Clas1 = 'Експлуатацiйнi                          ' then
        begin
         DataMas[9,C]:=DataMas[9,C]+1;
         DataMas[9,6]:=DataMas[9,6]+1;
          if Mas1[i].Clas2 = 'Порушення правил виконання робiт        ' then
           begin
            DataMas[11,C]:=DataMas[11,C]+1;
            DataMas[11,6]:=DataMas[11,6]+1;
           end;
          if Mas1[i].Clas2 = 'Помилки при виконаннi робiт             ' then
           begin
            DataMas[13,C]:=DataMas[13,C]+1;
            DataMas[13,6]:=DataMas[13,6]+1;
           end;
          if Mas1[i].Clas2 = 'Недотрим. строкiв перевiрки, огляду     ' then
           begin
            DataMas[15,C]:=DataMas[15,C]+1;
            DataMas[15,6]:=DataMas[15,6]+1;
           end;
          if Mas1[i].Clas2 = 'Неякiсне виконання робiт                ' then
           begin
            DataMas[17,C]:=DataMas[17,C]+1;
            DataMas[17,6]:=DataMas[17,6]+1;
           end;
          if Mas1[i].Clas2 = 'Тривалий час усунення вiдмови           ' then
           begin
            DataMas[19,C]:=DataMas[19,C]+1;
            DataMas[19,6]:=DataMas[19,6]+1;
           end;
          if (Mas1[i].Clas2 = 'Неякiсний ремонт в РТД СЦБ              ') or
             (Mas1[i].Clas2 = 'Някiсний ремонт в КРП АЛСБ              ') then
           begin
            DataMas[21,C]:=DataMas[21,C]+1;
            DataMas[21,6]:=DataMas[21,6]+1;
           end;
        end;
       if Mas1[i].Clas1 = 'Причина не встановлена                  ' then
        begin
         DataMas[9,C]:=DataMas[9,C]+1;
         DataMas[23,C]:=DataMas[23,C]+1;
         DataMas[9,6]:=DataMas[9,6]+1;
         DataMas[23,6]:=DataMas[23,6]+1;
        end;
       if Mas1[i].Clas1 = 'Виробничi (заводськi)                   ' then
        begin
         DataMas[5,C]:=DataMas[5,C]+1;
         DataMas[5,6]:=DataMas[5,6]+1;
        end;
       if Mas1[i].Clas1 = 'Схемно-конструктивнi                    ' then
        begin
         DataMas[1,C]:=DataMas[1,C]+1;
         DataMas[1,6]:=DataMas[1,6]+1;
        end;
       if Mas1[i].Clas1 = 'Проектні                                ' then
        begin
         DataMas[3,C]:=DataMas[3,C]+1;
         DataMas[3,6]:=DataMas[3,6]+1;
         DataMas[1,C]:=DataMas[1,C]+1;
         DataMas[1,6]:=DataMas[1,6]+1;
        end;
       if Mas1[i].Clas1 = 'Грозовi перенапруження                  ' then
        begin
         DataMas[7,C]:=DataMas[7,C]+1;
         DataMas[7,6]:=DataMas[7,6]+1;
        end;
       if Mas1[i].Clas1 = 'Комутацiйнi перенапруження              ' then
        begin
         DataMas[7,C]:=DataMas[7,C]+1;
         DataMas[7,6]:=DataMas[7,6]+1;
        end;
      end;
for i:=0 to high(Mas2) do
 if Mas2[i].Slujba = 'Ш' then
   begin
    if Mas2[i].Systema = 'Е' then C:=1;
    if Mas2[i].Systema = 'А' then C:=2;
    if Mas2[i].Systema = 'Н' then C:=3;
    if Mas2[i].Systema = 'П' then C:=4;
    if Mas2[i].Systema = 'Д' then C:=5;
    if Mas2[i].Systema = 'Г' then C:=5;
    if Mas2[i].Systema = 'М' then C:=5;
    if Mas2[i].Systema = 'І' then C:=5;
    if Mas2[i].Clas1 = 'Експлуатацiйнi                          ' then
        begin
         DataMas[10,C]:=DataMas[10,C]+1;
         DataMas[10,6]:=DataMas[10,6]+1;
          if Mas2[i].Clas2 = 'Порушення правил виконання робiт        ' then
           begin
            DataMas[12,C]:=DataMas[12,C]+1;
            DataMas[12,6]:=DataMas[12,6]+1;
           end;
          if Mas2[i].Clas2 = 'Помилки при виконаннi робiт             ' then
           begin
            DataMas[14,C]:=DataMas[14,C]+1;
            DataMas[14,6]:=DataMas[14,6]+1;
           end;
          if Mas2[i].Clas2 = 'Недотрим. строкiв перевiрки, огляду     ' then
           begin
            DataMas[16,C]:=DataMas[16,C]+1;
            DataMas[16,6]:=DataMas[16,6]+1;
           end;
          if Mas2[i].Clas2 = 'Неякiсне виконання робiт                ' then
           begin
            DataMas[18,C]:=DataMas[18,C]+1;
            DataMas[18,6]:=DataMas[18,6]+1;
           end;
          if Mas2[i].Clas2 = 'Тривалий час усунення вiдмови           ' then
           begin
            DataMas[20,C]:=DataMas[20,C]+1;
            DataMas[20,6]:=DataMas[20,6]+1;
           end;
          if (Mas2[i].Clas2 = 'Неякiсний ремонт в РТД СЦБ              ') or
             (Mas2[i].Clas2 = 'Някiсний ремонт в КРП АЛСБ              ') then
           begin
            DataMas[22,C]:=DataMas[22,C]+1;
            DataMas[22,6]:=DataMas[22,6]+1;
           end;
        end;
       if Mas2[i].Clas1 = 'Причина не встановлена                  ' then
        begin
         DataMas[10,C]:=DataMas[10,C]+1;
         DataMas[24,C]:=DataMas[24,C]+1;
         DataMas[10,6]:=DataMas[10,6]+1;
         DataMas[24,6]:=DataMas[24,6]+1;
        end;
       if Mas2[i].Clas1 = 'Виробничi (заводськi)                   ' then
        begin
         DataMas[6,C]:=DataMas[6,C]+1;
         DataMas[6,6]:=DataMas[6,6]+1;
        end;
       if Mas2[i].Clas1 = 'Схемно-конструктивнi                    ' then
        begin
         DataMas[2,C]:=DataMas[2,C]+1;
         DataMas[2,6]:=DataMas[2,6]+1;
        end;
       if Mas2[i].Clas1 = 'Проектні                                ' then
        begin
         DataMas[4,C]:=DataMas[4,C]+1;
         DataMas[4,6]:=DataMas[4,6]+1;
         DataMas[2,C]:=DataMas[2,C]+1;
         DataMas[2,6]:=DataMas[2,6]+1;         
        end;
       if Mas2[i].Clas1 = 'Грозовi перенапруження                  ' then
        begin
         DataMas[8,C]:=DataMas[8,C]+1;
         DataMas[8,6]:=DataMas[8,6]+1;
        end;
       if Mas2[i].Clas1 = 'Комутацiйнi перенапруження              ' then
        begin
         DataMas[8,C]:=DataMas[8,C]+1;
         DataMas[8,6]:=DataMas[8,6]+1;
        end;
      end;

   ValueArray:=VarArrayCreate([1,24,1,7],varVariant);
       for R:=1 to 24 do for C:=1 to 6 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
        i:=1;
         while i < 25 do
          begin
           if DataMas[29,6] > 0 then ValueArray[i,7]:=DataMas[i,6]/DataMas[29,6];
           inc(i,2);
          end;
        i:=2;
         while i < 25 do
          begin
           if DataMas[30,6] > 0 then ValueArray[i,7]:=DataMas[i,6]/DataMas[30,6];
           inc(i,2);
          end;

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['2'] as Excel97.ExcelWorkSheet;
         IRange:=ISheet.Range['table22u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//******** Кінець довідки №2******
//******** Довідка №3.1 **********
for R:=1 to 18 do for C:=1 to 8 do DataMas[R,C]:=0;
 R:=1;
  C:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Element = 'Апарати управлiння       ') and (Mas1[i].Slujba = 'Ш') then
   begin
    if Mas1[i].Cause2 = 'Несправнiсть кнопок, комутаторiв                  ' then C:=1;
    if Mas1[i].Cause2 = 'Порушення електричних з’єднань                    ' then C:=2;
    if Mas1[i].Cause2 = 'Несправнiсть блок-механiзму                       ' then C:=3;
    if Mas1[i].Cause2 = 'Несправнiсть iндуктора                            ' then C:=4;
    if Mas1[i].Cause2 = 'Несправнiсть замка, ключа-жезла                   ' then C:=5;
    if Mas1[i].Cause2 = 'Несправнiсть лiчильника                           ' then C:=6;
    if Mas1[i].Cause2 = 'Перегорання ламп iндикацiї                        ' then C:=7;
    if Mas1[i].Cause1 = 'Пульт ЕЦ                                          ' then R:=1;
    if Mas1[i].Cause1 = 'Пульт ДЦ                                          ' then R:=3;
    if Mas1[i].Cause1 = 'Пульт гiрковий                                    ' then R:=5;
    if Mas1[i].Cause1 = 'Апарат НАБ                                        ' then R:=7;
    if Mas1[i].Cause1 = 'Апарат МКП                                        ' then R:=9;
    if Mas1[i].Cause1 = 'Маневрова колонка                                 ' then R:=11;
    if Mas1[i].Cause1 = 'Щиток переїзду                                    ' then R:=13;
    if Mas1[i].Cause1 = 'Iншi апарати управл.                              ' then R:=15;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,8]:=DataMas[R,8]+1;
     DataMas[17,C]:=DataMas[17,C]+1;
     DataMas[17,8]:=DataMas[17,8]+1;
   end;
for i:=0 to high(Mas2) do
 if (Mas2[i].Element = 'Апарати управлiння       ') and (Mas2[i].Slujba = 'Ш') then
   begin
    if Mas2[i].Cause2 = 'Несправнiсть кнопок, комутаторiв                  ' then C:=1;
    if Mas2[i].Cause2 = 'Порушення електричних з’єднань                    ' then C:=2;
    if Mas2[i].Cause2 = 'Несправнiсть блок-механiзму                       ' then C:=3;
    if Mas2[i].Cause2 = 'Несправнiсть iндуктора                            ' then C:=4;
    if Mas2[i].Cause2 = 'Несправнiсть замка, ключа-жезла                   ' then C:=5;
    if Mas2[i].Cause2 = 'Несправнiсть лiчильника                           ' then C:=6;
    if Mas2[i].Cause2 = 'Перегорання ламп iндикацiї                        ' then C:=7;
    if Mas2[i].Cause1 = 'Пульт ЕЦ                                          ' then R:=2;
    if Mas2[i].Cause1 = 'Пульт ДЦ                                          ' then R:=4;
    if Mas2[i].Cause1 = 'Пульт гiрковий                                    ' then R:=6;
    if Mas2[i].Cause1 = 'Апарат НАБ                                        ' then R:=8;
    if Mas2[i].Cause1 = 'Апарат МКП                                        ' then R:=10;
    if Mas2[i].Cause1 = 'Маневрова колонка                                 ' then R:=12;
    if Mas2[i].Cause1 = 'Щиток переїзду                                    ' then R:=14;
    if Mas2[i].Cause1 = 'Iншi апарати управл.                              ' then R:=16;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,8]:=DataMas[R,8]+1;
     DataMas[18,C]:=DataMas[18,C]+1;
     DataMas[18,8]:=DataMas[18,8]+1;
   end;

   ValueArray:=VarArrayCreate([1,18,1,8],varVariant);
       for R:=1 to 18 do for C:=1 to 8 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-1'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table31u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//******** Кінець №3.1 ***********
//******** Довідка №3.2 **********
for R:=1 to 8 do for C:=1 to 5 do DataMas[R,C]:=0;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Element = 'Електричнi кола          ') and(Mas1[i].Slujba = 'Ш') then
   begin
    C:=1;
    if Mas1[i].Cause2 = 'Втрата контакту в штепс. розетцi                  ' then C:=2;
    if Mas1[i].Cause2 = 'Прогорання штепсельної розетки                    ' then C:=2;
    if Mas1[i].Cause2 = 'Втрата контакту в з’ємнiй платi                   ' then C:=3;
    if Mas1[i].Cause2 = 'Прогорання з’ємної плати                          ' then C:=3;
    if Mas1[i].Cause2 = 'Злам (прогорання) клемної колодки                 ' then C:=4;
    if Mas1[i].Cause1 = 'Релейнi шафи                                      ' then R:=1;
    if Mas1[i].Cause1 = 'Стативи                                           ' then R:=3;
    if Mas1[i].Cause1 = 'Польовi коробки                                   ' then R:=5;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,5]:=DataMas[R,5]+1;
    DataMas[7,C]:=DataMas[7,C]+1;
    DataMas[7,5]:=DataMas[7,5]+1;
   end;
for i:=0 to high(Mas2) do
 if (Mas2[i].Element = 'Електричнi кола          ') and (Mas2[i].Slujba = 'Ш') then
   begin
    C:=1;
    if Mas2[i].Cause2 = 'Втрата контакту в штепс. розетцi                  ' then C:=2;
    if Mas2[i].Cause2 = 'Прогорання штепсельної розетки                    ' then C:=2;
    if Mas2[i].Cause2 = 'Втрата контакту в з’ємнiй платi                   ' then C:=3;
    if Mas2[i].Cause2 = 'Прогорання з’ємної плати                          ' then C:=3;
    if Mas2[i].Cause2 = 'Злам (прогорання) клемної колодки                 ' then C:=4;
    if Mas2[i].Cause1 = 'Релейнi шафи                                      ' then R:=2;
    if Mas2[i].Cause1 = 'Стативи                                           ' then R:=4;
    if Mas2[i].Cause1 = 'Польовi коробки                                   ' then R:=6;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,5]:=DataMas[R,5]+1;
    DataMas[8,C]:=DataMas[8,C]+1;
    DataMas[8,5]:=DataMas[8,5]+1;
   end;

   ValueArray:=VarArrayCreate([1,8,1,7],varVariant);
       for R:=1 to 8 do for C:=1 to 7 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-2'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table32u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//******** Кінець довідки №3.2 ****
//******** Довідка №3.3 ***********
for R:=1 to 14 do for C:=1 to 11 do DataMas[R,C]:=0;
 R:=1;
  C:=1;
for i:=0 to high(Mas1) do
  if (Mas1[i].Cause1 = 'Щитовi живильнi установки                         ') and
     (Mas1[i].Slujba = 'Ш')  then
   begin
    if Mas1[i].Cause3 = 'Блок фазний                                       ' then C:=1;
    if Mas1[i].Cause3 = 'Блок регулювання БАР                              ' then C:=2;
    if Mas1[i].Cause3 = 'Пакетники, кнопки                                 ' then C:=3;
    if Mas1[i].Cause3 = 'Дросель                                           ' then C:=4;
    if Mas1[i].Cause3 = 'Монтаж                                            ' then C:=5;
    if Mas1[i].Cause3 = 'Контактор                                         ' then C:=6;
    if Mas1[i].Cause3 = 'Резистори                                         ' then C:=7;
    if Mas1[i].Cause3 = 'Напiвпровiдн.елементи                             ' then C:=8;
    if Mas1[i].Cause3 = 'Вимiрювальнi прилади                              ' then C:=9;
    if Mas1[i].Cause3 = 'Сигналiзатор                                      ' then C:=10;
    if Mas1[i].Cause2 = 'Панель ввiдна                                     ' then R:=1;
    if Mas1[i].Cause2 = 'Панель випрямлячiв 24 В                           ' then R:=3;
    if Mas1[i].Cause2 = 'Панель випрямлячiв 220 В                          ' then R:=5;
    if Mas1[i].Cause2 = 'Панель релейна                                    ' then R:=7;
    if Mas1[i].Cause2 = 'Панель ввiдно-розподiльча                         ' then R:=9;
    if Mas1[i].Cause2 = 'Панель перетворювачiв                             ' then R:=11;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,11]:=DataMas[R,11]+1;
     DataMas[13,C]:=DataMas[13,C]+1;
     DataMas[13,11]:=DataMas[13,11]+1;
   end;
for i:=0 to high(Mas2) do
  if (Mas2[i].Cause1 = 'Щитовi живильнi установки                         ') and
     (Mas2[i].Slujba = 'Ш') then
   begin
    if Mas2[i].Cause3 = 'Блок фазний                                       ' then C:=1;
    if Mas2[i].Cause3 = 'Блок регулювання БАР                              ' then C:=2;
    if Mas2[i].Cause3 = 'Пакетники, кнопки                                 ' then C:=3;
    if Mas2[i].Cause3 = 'Дросель                                           ' then C:=4;
    if Mas2[i].Cause3 = 'Монтаж                                            ' then C:=5;
    if Mas2[i].Cause3 = 'Контактор                                         ' then C:=6;
    if Mas2[i].Cause3 = 'Резистори                                         ' then C:=7;
    if Mas2[i].Cause3 = 'Напiвпровiдн.елементи                             ' then C:=8;
    if Mas2[i].Cause3 = 'Вимiрювальнi прилади                              ' then C:=9;
    if Mas2[i].Cause3 = 'Сигналiзатор                                      ' then C:=10;
    if Mas2[i].Cause2 = 'Панель ввiдна                                     ' then R:=2;
    if Mas2[i].Cause2 = 'Панель випрямлячiв 24 В                           ' then R:=4;
    if Mas2[i].Cause2 = 'Панель випрямлячiв 220 В                          ' then R:=6;
    if Mas2[i].Cause2 = 'Панель релейна                                    ' then R:=8;
    if Mas2[i].Cause2 = 'Панель ввiдно-розподiльча                         ' then R:=10;
    if Mas2[i].Cause2 = 'Панель перетворювачiв                             ' then R:=12;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,11]:=DataMas[R,11]+1;
     DataMas[14,C]:=DataMas[14,C]+1;
     DataMas[14,11]:=DataMas[14,11]+1;
   end;

   ValueArray:=VarArrayCreate([1,14,1,11],varVariant);
       for R:=1 to 14 do for C:=1 to 11 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-3'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table33u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//******** Кінець довідки № 3.3 ***
//******** Довідка №3-4,5 *********
for R:=1 to 48 do for C:=1 to 7 do DataMas[R,C]:=0;
 C:=1;
for i:=0 to high(Mas1) do
 begin
  if Mas1[i].Slujba <> 'Ш' then continue;
  if Mas1[i].Element = 'Прилади                  ' then
   begin
    R:=45;      // others
    if Pos('НМ',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('АН',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('НШ',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('НР',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('РЕЛ',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('МТ',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('НП',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('4Н',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('8Н',Mas1[i].Cause1) = 6 then R:=1;
    if Pos('ПМ',Mas1[i].Cause1) = 6 then R:=3;
    if Pos('ПП',Mas1[i].Cause1) = 6 then R:=3;
    if Pos('ПЛ',Mas1[i].Cause1) = 6 then R:=3;
    if Pos('КМ',Mas1[i].Cause1) = 6 then R:=5;
    if Pos('КШ',Mas1[i].Cause1) = 6 then R:=5;
    if Pos('СК',Mas1[i].Cause1) = 6 then R:=5;
    if Pos('КР',Mas1[i].Cause1) = 6 then R:=5;
    if Pos('КП',Mas1[i].Cause1) = 6 then R:=5;
    if Pos('ІМ',Mas1[i].Cause1) = 6 then R:=7;
    if Pos('ІВ',Mas1[i].Cause1) = 6 then R:=7;
    if Pos('ІР',Mas1[i].Cause1) = 6 then R:=7;
    if Pos('ОМ',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('АО',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('ОШ',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('ОР',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('ОЛ',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('АШ',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('АП',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('АС',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('АУ',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('АР',Mas1[i].Cause1) = 6 then R:=9;
    if Pos('ТШ',Mas1[i].Cause1) = 6 then R:=11;
    if Pos('ТР',Mas1[i].Cause1) = 6 then R:=11;
    if Pos('ТП',Mas1[i].Cause1) = 6 then R:=11;
    if Pos('ТГ',Mas1[i].Cause1) = 6 then R:=11;
    if Pos('ДСШ',Mas1[i].Cause1) = 6 then R:=13;
    if Pos('КДР',Mas1[i].Cause1) = 6 then R:=15;
    if Pos('УКД',Mas1[i].Cause1) = 6 then R:=15;
    if Pos('РЕМ',Mas1[i].Cause1) = 6 then R:=15;
    if Pos('Чарунка',Mas1[i].Cause1) = 1 then R:=19;
    if Pos('Блок',Mas1[i].Cause1) = 1 then R:=21;
    if Pos('Фільтр',Mas1[i].Cause1) = 1 then R:=23;
    if Pos('Конд.блок',Mas1[i].Cause1) = 1 then R:=25;
    if Pos('Безконтактний прилад',Mas1[i].Cause1) = 1 then R:=27;
    if Pos('Трансмітер',Mas1[i].Cause1) = 1 then R:=29;
    if Pos('Прибор ДЦ',Mas1[i].Cause1) = 1 then R:=31;
    if Pos('Прибор ЧДК',Mas1[i].Cause1) = 1 then R:=33;
    if Pos('Прибор АЛСО',Mas1[i].Cause1) = 1 then R:=35;
    if Pos('Інші',Mas1[i].Cause1) = 1 then R:=35;
    if Pos('Перетворювач',Mas1[i].Cause1) = 1 then R:=43;
    if Mas1[i].Cause2 = 'Обмотки, монтаж, виводи                           ' then C:=1;
    if Mas1[i].Cause2 = 'Контактна система                                 ' then C:=2;
    if Mas1[i].Cause2 = 'Передавальна система                              ' then C:=3;
    if Mas1[i].Cause2 = 'Напiвпровiдниковi елементи                        ' then C:=4;
    if Mas1[i].Cause2 = 'Конденсатори                                      ' then C:=5;
    if Mas1[i].Cause2 = 'Резистори                                         ' then C:=6;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,7]:=DataMas[R,7]+1;
     DataMas[47,C]:=DataMas[47,C]+1;
     DataMas[47,7]:=DataMas[47,7]+1;
      if R < 17 then
       begin
        DataMas[17,C]:=DataMas[17,C]+1;
        DataMas[17,7]:=DataMas[17,7]+1;
       end;
   end;    //прилади
  if Mas1[i].Element = 'Установчi вироби         ' then
   begin
    R:=27;
    if Mas1[i].Cause2 = 'Конденсатори                                      ' then
     begin
      C:=5;
      R:=25;
     end;
    if Mas1[i].Cause2 = 'Напiвпровiдниковi елементи                        ' then C:=4;
    if Mas1[i].Cause2 = 'Трансформатори і дроселi зв’язку                  ' then C:=1;
    if Mas1[i].Cause2 = 'Резистори                                         ' then
     begin
      R:=39;
      C:=6;
     end;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[R,7]:=DataMas[R,7]+1;
      DataMas[47,C]:=DataMas[47,C]+1;
      DataMas[47,7]:=DataMas[47,7]+1;
   end; //Установчi вироби
  if Mas1[i].Element = 'Випрямлячi               ' then
   begin
    R:=41;
    if Mas1[i].Cause2 = 'Обмотки, монтаж, виводи                           ' then C:=1;
    if Mas1[i].Cause2 = 'Напiвпровiдниковi елементи                        ' then C:=4;
    if Mas1[i].Cause2 = 'Конденсатори                                      ' then C:=5;
    if Mas1[i].Cause2 = 'Резистори                                         ' then C:=6;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[R,7]:=DataMas[R,7]+1;
      DataMas[47,C]:=DataMas[47,C]+1;
      DataMas[47,7]:=DataMas[47,7]+1;
   end;  //Випрямлячi
  if Mas1[i].Element = 'Трансформатори           ' then
   begin
      DataMas[37,1]:=DataMas[37,1]+1;
      DataMas[37,7]:=DataMas[37,7]+1;
      DataMas[47,1]:=DataMas[47,1]+1;
      DataMas[47,7]:=DataMas[47,7]+1;
   end;  //Трансформатори
 end;

for i:=0 to high(Mas2) do
 begin
  if Mas2[i].Slujba <> 'Ш' then continue;
  if Mas2[i].Element = 'Прилади                  ' then
   begin
    R:=46;
    if Pos('НМ',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('АН',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('НШ',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('НР',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('РЕЛ',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('МТ',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('НП',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('4Н',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('8Н',Mas2[i].Cause1) = 6 then R:=2;
    if Pos('ПМ',Mas2[i].Cause1) = 6 then R:=4;
    if Pos('ПП',Mas2[i].Cause1) = 6 then R:=4;
    if Pos('ПЛ',Mas2[i].Cause1) = 6 then R:=4;
    if Pos('КМ',Mas2[i].Cause1) = 6 then R:=6;
    if Pos('КШ',Mas2[i].Cause1) = 6 then R:=6;
    if Pos('СК',Mas2[i].Cause1) = 6 then R:=6;
    if Pos('КР',Mas2[i].Cause1) = 6 then R:=6;
    if Pos('КП',Mas2[i].Cause1) = 6 then R:=6;
    if Pos('ІМ',Mas2[i].Cause1) = 6 then R:=8;
    if Pos('ІВ',Mas2[i].Cause1) = 6 then R:=8;
    if Pos('ІР',Mas2[i].Cause1) = 6 then R:=8;
    if Pos('ОМ',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('АО',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('ОШ',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('ОР',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('ОЛ',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('АШ',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('АП',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('АС',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('АУ',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('АР',Mas2[i].Cause1) = 6 then R:=10;
    if Pos('ТШ',Mas2[i].Cause1) = 6 then R:=12;
    if Pos('ТР',Mas2[i].Cause1) = 6 then R:=12;
    if Pos('ТП',Mas2[i].Cause1) = 6 then R:=12;
    if Pos('ТГ',Mas2[i].Cause1) = 6 then R:=12;
    if Pos('ДСШ',Mas2[i].Cause1) = 6 then R:=14;
    if Pos('КДР',Mas2[i].Cause1) = 6 then R:=16;
    if Pos('УКД',Mas2[i].Cause1) = 6 then R:=16;
    if Pos('РЕМ',Mas2[i].Cause1) = 6 then R:=16;
    if Pos('Чарунка',Mas2[i].Cause1) = 1 then R:=20;
    if Pos('Блок',Mas2[i].Cause1) = 1 then R:=22;
    if Pos('Фільтр',Mas2[i].Cause1) = 1 then R:=24;
    if Pos('Конд.блок',Mas2[i].Cause1) = 1 then R:=26;
    if Pos('Безконтактний прилад',Mas2[i].Cause1) = 1 then R:=28;
    if Pos('Трансмітер',Mas2[i].Cause1) = 1 then R:=30;
    if Pos('Прибор ДЦ',Mas2[i].Cause1) = 1 then R:=32;
    if Pos('Прибор ЧДК',Mas2[i].Cause1) = 1 then R:=34;
    if Pos('Прибор АЛСО',Mas2[i].Cause1) = 1 then R:=36;
    if Pos('Інші',Mas2[i].Cause1) = 1 then R:=36;
    if Pos('Перетворювач',Mas2[i].Cause1) = 1 then R:=44;
    if Mas2[i].Cause2 = 'Обмотки, монтаж, виводи                           ' then C:=1;
    if Mas2[i].Cause2 = 'Контактна система                                 ' then C:=2;
    if Mas2[i].Cause2 = 'Передавальна система                              ' then C:=3;
    if Mas2[i].Cause2 = 'Напiвпровiдниковi елементи                        ' then C:=4;
    if Mas2[i].Cause2 = 'Конденсатори                                      ' then C:=5;
    if Mas2[i].Cause2 = 'Резистори                                         ' then C:=6;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,7]:=DataMas[R,7]+1;
     DataMas[48,C]:=DataMas[48,C]+1;
     DataMas[48,7]:=DataMas[48,7]+1;
      if R < 18 then
       begin
        DataMas[18,C]:=DataMas[18,C]+1;
        DataMas[18,7]:=DataMas[18,7]+1;
       end;
   end;    //прилади
  if Mas2[i].Element = 'Установчi вироби         ' then
   begin
    R:=28;
    if Mas2[i].Cause2 = 'Конденсатори                                      ' then
     begin
      C:=5;
      R:=26;
     end;
    if Mas2[i].Cause2 = 'Напiвпровiдниковi елементи                        ' then C:=4;
    if Mas2[i].Cause2 = 'Трансформатори і дроселi зв’язку                  ' then C:=1;
    if Mas2[i].Cause2 = 'Резистори                                         ' then
     begin
      R:=40;
      C:=6;
     end;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[R,7]:=DataMas[R,7]+1;
      DataMas[48,C]:=DataMas[48,C]+1;
      DataMas[48,7]:=DataMas[48,7]+1;
   end; //Установчi вироби
  if Mas2[i].Element = 'Випрямлячi               ' then
   begin
    R:=42;
    if Mas2[i].Cause2 = 'Обмотки, монтаж, виводи                           ' then C:=1;
    if Mas2[i].Cause2 = 'Напiвпровiдниковi елементи                        ' then C:=4;
    if Mas2[i].Cause2 = 'Конденсатори                                      ' then C:=5;
    if Mas2[i].Cause2 = 'Резистори                                         ' then C:=6;
      DataMas[R,C]:=DataMas[R,C]+1;
      DataMas[R,7]:=DataMas[R,7]+1;
      DataMas[48,C]:=DataMas[48,C]+1;
      DataMas[48,7]:=DataMas[48,7]+1;
   end;  //Випрямлячi
  if Mas2[i].Element = 'Трансформатори           ' then
   begin
      DataMas[38,1]:=DataMas[38,1]+1;
      DataMas[38,7]:=DataMas[38,7]+1;
      DataMas[48,1]:=DataMas[48,1]+1;
      DataMas[48,7]:=DataMas[48,7]+1;
   end;  //Трансформатори
 end;

   ValueArray:=VarArrayCreate([1,48,1,7],varVariant);
       for R:=1 to 48 do for C:=1 to 7 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-4,5'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table345',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №3-4,5 *****
//***** Довідка № 3-6 *************
for R:=1 to 24 do for C:=1 to 9 do DataMas[R,C]:=0;
 C:=1;
 R:=1;
for i:=0 to high(Mas1) do
 begin
   if Mas1[i].Slujba <> 'Ш' then continue;
   if (Mas1[i].Element = 'Прилади захисту          ') or
      (Mas1[i].Element = 'Запобiжники              ') then
  begin
   if Pos('Розрядник',Mas1[i].Cause1) = 1 then C:=4;
   if Pos('АВМ',Mas1[i].Cause1) = 1 then C:=5;
   if Pos('Вирівнювач',Mas1[i].Cause1) = 1 then C:=6;
   if Pos('Варистор',Mas1[i].Cause1) = 1 then C:=6;
   if Pos('Обмежувач',Mas1[i].Cause1) = 1 then C:=7;
   if Pos('Блок захисту',Mas1[i].Cause1) = 1 then C:=8;
   if Mas1[i].Cause1 = 'З контролем перегорання                           ' then C:=1;
   if Mas1[i].Cause1 = 'Без контролю перегорання                          ' then C:=2;
   if Mas1[i].Cause1 = 'Трубчастi                                         ' then C:=3;
   if Mas1[i].Cause2 = 'Невiдповiднiсть номiналу                          ' then R:=1;
   if Mas1[i].Cause2 = 'Коротке замиканння електр. кола                   ' then R:=3;
   if Mas1[i].Cause2 = 'Пошкодження тяговым струмом                       ' then R:=5;
   if Mas1[i].Cause2 = 'Дефект матерiалу                                  ' then R:=7;
   if Mas1[i].Cause2 = 'Неякiсна пайка                                    ' then R:=9;
   if Mas1[i].Cause2 = 'Ослаблення крiплення                              ' then R:=11;
   if Mas1[i].Cause2 = 'Поломка вивода                                    ' then R:=13;
   if Mas1[i].Cause2 = 'Пошкодження грозовими розрядами                   ' then R:=15;
   if Mas1[i].Cause2 = 'Окислення (ветхiсть)                              ' then R:=17;
   if Mas1[i].Cause2 = 'Неякiсне регулювання                              ' then R:=19;
   if Mas1[i].Cause2 = 'Перегорання при перемик. фiдерiв                  ' then R:=21;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,9]:=DataMas[R,9]+1;
    DataMas[23,C]:=DataMas[23,C]+1;
    DataMas[23,9]:=DataMas[23,9]+1;
  end; //if
 end; //for

for i:=0 to high(Mas2) do
 begin
  if Mas2[i].Slujba <> 'Ш' then continue;
  if (Mas2[i].Element = 'Прилади захисту          ') or
     (Mas2[i].Element = 'Запобiжники              ') then
  begin
   if Pos('Розрядник',Mas2[i].Cause1) = 1 then C:=4;
   if Pos('АВМ',Mas2[i].Cause1) = 1 then C:=5;
   if Pos('Вирівнювач',Mas2[i].Cause1) = 1 then C:=6;
   if Pos('Варистор',Mas2[i].Cause1) = 1 then C:=6;
   if Pos('Обмежувач',Mas2[i].Cause1) = 1 then C:=7;
   if Pos('Блок захисту',Mas2[i].Cause1) = 1 then C:=8;
   if Mas2[i].Cause1 = 'З контролем перегорання                           ' then C:=1;
   if Mas2[i].Cause1 = 'Без контролю перегорання                          ' then C:=2;
   if Mas2[i].Cause1 = 'Трубчастi                                         ' then C:=3;
   if Mas2[i].Cause2 = 'Невiдповiднiсть номiналу                          ' then R:=2;
   if Mas2[i].Cause2 = 'Коротке замиканння електр. кола                   ' then R:=4;
   if Mas2[i].Cause2 = 'Пошкодження тяговым струмом                       ' then R:=6;
   if Mas2[i].Cause2 = 'Дефект матерiалу                                  ' then R:=8;
   if Mas2[i].Cause2 = 'Неякiсна пайка                                    ' then R:=10;
   if Mas2[i].Cause2 = 'Ослаблення крiплення                              ' then R:=12;
   if Mas2[i].Cause2 = 'Поломка вивода                                    ' then R:=14;
   if Mas2[i].Cause2 = 'Пошкодження грозовими розрядами                   ' then R:=16;
   if Mas2[i].Cause2 = 'Окислення (ветхiсть)                              ' then R:=18;
   if Mas2[i].Cause2 = 'Неякiсне регулювання                              ' then R:=20;
   if Mas2[i].Cause2 = 'Перегорання при перемик. фiдерiв                  ' then R:=22;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,9]:=DataMas[R,9]+1;
    DataMas[24,C]:=DataMas[24,C]+1;
    DataMas[24,9]:=DataMas[24,9]+1;
   end;
 end; //for

   ValueArray:=VarArrayCreate([1,24,1,9],varVariant);
       for R:=1 to 24 do for C:=1 to 9 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-6'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table36u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №3-6 ******
//***** Довідка №3-7 *************
for R:=1 to 8 do for C:=1 to 6 do DataMas[R,C]:=0;
 C:=1;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Cause1 = 'Акумулятори                                       ') and
    (Mas1[i].Slujba = 'Ш') then
  begin
   if Mas1[i].Cause2 = 'Типу АБН-72                                       ' then C:=1;
   if Mas1[i].Cause2 = 'Типу АБН-8O                                       ' then C:=2;
   if Mas1[i].Cause2 = 'Типу "C"                                          ' then C:=3;
   if Mas1[i].Cause2 = 'Типу "Cк"                                         ' then C:=4;
   if Mas1[i].Cause2 = 'Iншi типи                                         ' then C:=5;
   if Mas1[i].Cause3 = 'Cульфатацiя                                       ' then R:=1;
   if Mas1[i].Cause3 = 'К.з. пластин                                      ' then R:=3;
   if Mas1[i].Cause3 = 'Руйнування пластин                                ' then R:=3;
   if Mas1[i].Cause3 = 'Злам вивода                                       ' then R:=5;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,6]:=DataMas[R,6]+1;
    DataMas[7,C]:=DataMas[7,C]+1;
    DataMas[7,6]:=DataMas[7,6]+1;
  end; //for

for i:=0 to high(Mas2) do
 if (Mas2[i].Cause1 = 'Акумулятори                                       ') and
    (Mas2[i].Slujba = 'Ш') then
  begin
   if Mas2[i].Cause2 = 'Типу АБН-72                                       ' then C:=1;
   if Mas2[i].Cause2 = 'Типу АБН-8O                                       ' then C:=2;
   if Mas2[i].Cause2 = 'Типу "C"                                          ' then C:=3;
   if Mas2[i].Cause2 = 'Типу "Cк"                                         ' then C:=4;
   if Mas2[i].Cause2 = 'Iншi типи                                         ' then C:=5;
   if Mas2[i].Cause3 = 'Cульфатацiя                                       ' then R:=2;
   if Mas2[i].Cause3 = 'К.з. пластин                                      ' then R:=4;
   if Mas2[i].Cause3 = 'Руйнування пластин                                ' then R:=4;
   if Mas2[i].Cause3 = 'Злам вивода                                       ' then R:=6;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,6]:=DataMas[R,6]+1;
    DataMas[8,C]:=DataMas[8,C]+1;
    DataMas[8,6]:=DataMas[8,6]+1;
  end; //for

   ValueArray:=VarArrayCreate([1,8,1,6],varVariant);
       for R:=1 to 8 do for C:=1 to 6 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-7,8'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table37u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №3-7 ******
//***** Довідка №3-8 *************
for R:=1 to 20 do for C:=1 to 6 do DataMas[R,C]:=0;
 C:=1;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Element = 'Сигнали                  ') and
    (Mas1[i].Slujba = 'Ш') then
  begin
   if Mas1[i].Cause1 = 'Мачтовий                                          ' then C:=1;
   if Mas1[i].Cause1 = 'Карликовий                                        ' then C:=2;
   if Mas1[i].Cause1 = 'Переїздний                                        ' then C:=5;
   if Mas1[i].Cause2 = 'Перегорання свiтлофорної лампи                    ' then
     begin
      DataMas[1,C]:=DataMas[1,C]+1;
      DataMas[1,6]:=DataMas[1,6]+1;
      if Mas1[i].Cause4 = 'Заводський дефект                                 ' then R:=3;
      if Mas1[i].Cause4 = 'Ранiше нормативного строку                        ' then R:=5;
      if Mas1[i].Cause4 = 'Порушення строку замiни                           ' then R:=7;
     end;
   if Mas1[i].Cause2 = 'Порушення к-ту в лампотримачi                     ' then R:=9;
   if Mas1[i].Cause2 = 'Биття лiнз стороннiми особами                     ' then R:=11;
   if Mas1[i].Cause2 = 'Руйнування основи, щогли                          ' then R:=13;
   if Mas1[i].Cause2 = 'Несправнiсть монтажу                              ' then R:=15;
   if Mas1[i].Cause2 = 'Крадiжка, биття свiтлофорних ламп                 ' then R:=17;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,6]:=DataMas[R,6]+1;
     DataMas[19,C]:=DataMas[19,C]+1;
     DataMas[19,6]:=DataMas[19,6]+1;
  end;  //for

for i:=0 to high(Mas2) do
 if (Mas2[i].Element = 'Сигнали                  ') and
    (Mas2[i].Slujba = 'Ш') then
  begin
   if Mas2[i].Cause1 = 'Мачтовий                                          ' then C:=1;
   if Mas2[i].Cause1 = 'Карликовий                                        ' then C:=2;
   if Mas2[i].Cause1 = 'Переїздний                                        ' then C:=5;
   if Mas2[i].Cause2 = 'Перегорання свiтлофорної лампи                    ' then
     begin
      DataMas[2,C]:=DataMas[2,C]+1;
      DataMas[2,6]:=DataMas[2,6]+1;
      if Mas2[i].Cause4 = 'Заводський дефект                                 ' then R:=4;
      if Mas2[i].Cause4 = 'Ранiше нормативного строку                        ' then R:=6;
      if Mas2[i].Cause4 = 'Порушення строку замiни                           ' then R:=8;
     end;
   if Mas2[i].Cause2 = 'Порушення к-ту в лампотримачi                     ' then R:=10;
   if Mas2[i].Cause2 = 'Биття лiнз стороннiми особами                     ' then R:=12;
   if Mas2[i].Cause2 = 'Руйнування основи, щогли                          ' then R:=14;
   if Mas2[i].Cause2 = 'Несправнiсть монтажу                              ' then R:=16;
   if Mas2[i].Cause2 = 'Крадiжка, биття свiтлофорних ламп                 ' then R:=18;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[R,6]:=DataMas[R,6]+1;
     DataMas[20,C]:=DataMas[20,C]+1;
     DataMas[20,6]:=DataMas[20,6]+1;
  end;  //for

   ValueArray:=VarArrayCreate([1,20,1,6],varVariant);
       for R:=1 to 20 do for C:=1 to 6 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-7,8'] as Excel97.ExcelWorkSheet;
         IRange:=ISheet.Range['table38u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №3-8 ******
//***** Довідка №3-9 *************
for R:=1 to 50 do for C:=1 to 8 do DataMas[R,C]:=0;
 C:=1;
// R:=1;
for i:=0 to high(Mas1) do
begin
 if Mas1[i].Slujba <> 'Ш' then continue;
 if (Mas1[i].Element = 'Приводи                  ') or (Mas1[i].Element = 'Двигуни                  ')
  or (Mas1[i].Element = 'Гарнітура                ') then
 begin
  R:=0;
  if Mas1[i].Systema = 'Е' then C:=3;
  if Mas1[i].Systema = 'Г' then C:=5;
  if Mas1[i].Systema = 'М' then C:=6;
  if Mas1[i].Systema = 'П' then C:=7;
  if Pos('СП-2',Mas1[i].Cause1) = 1 then C:=1;
  if Pos('СП-3',Mas1[i].Cause1) = 1 then C:=2;
  if Pos('СП-6',Mas1[i].Cause1) = 1 then C:=3;
  if Pos('СПГ',Mas1[i].Cause1) = 1 then C:=4;
  if Pos('СПГБ',Mas1[i].Cause1) = 1 then C:=5;
  if Pos('СЛ-571к',Mas1[i].Cause1) = 1 then C:=7;
//  if Mas1[i].Cause1 = 'Замoк Мелентьєва                                  ' then C:=6;
//  if Mas1[i].Cause1 = 'Привод автошлагбаума                              ' then C:=7;

  if Mas1[i].Element = 'Приводи                  ' then
   begin
     DataMas[29,C]:=DataMas[29,C]+1;
     DataMas[29,8]:=DataMas[29,8]+1;
    if Mas1[i].Cause2 = 'Втрата контакту в автоперемикачi                  ' then
     begin
      DataMas[1,C]:=DataMas[1,C]+1;
      DataMas[1,8]:=DataMas[1,8]+1;
      if Mas1[i].Cause3 = 'Розрегулювання контактiв                          ' then R:=3;
      if Mas1[i].Cause3 = 'Злам контактної колодки                           ' then R:=5;
      if Mas1[i].Cause3 = 'Злам контактних пружин                            ' then R:=7;
      if Mas1[i].Cause3 = 'Злам важеля автоперемикача                        ' then R:=9;
      if Mas1[i].Cause3 = 'Забруднення контактiв                             ' then R:=11;
      if Mas1[i].Cause3 = 'Пiдгорання контактiв                              ' then R:=11;
      if Mas1[i].Cause3 = 'Iнiй на контактах                                 ' then R:=13;
      if Mas1[i].Cause3 = 'Злам, роз’єднання пружини                         ' then R:=15;
     end;
    if Mas1[i].Cause2 = 'Заклинювання шибера                               ' then R:=17;
    if Mas1[i].Cause2 = 'Несправнiсть механiчної передачi                  ' then R:=19;
    if Mas1[i].Cause2 = 'Порушення контакту блок. пристрою                 ' then R:=21;
    if Mas1[i].Cause2 = 'Несправнiсть контрольних лiнiйок                  ' then R:=23;
    if Mas1[i].Cause2 = 'Несправнiсть монтажу                              ' then R:=25;
    if R = 0 then
     begin
      R:=3;
      ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
     end; //if R = 0
   end;
   if Mas1[i].Element = 'Двигуни                  ' then
    begin
     DataMas[29,C]:=DataMas[29,C]+1;
     DataMas[29,8]:=DataMas[29,8]+1;
      R:=27;
    end;
   if Mas1[i].Element = 'Гарнітура                ' then
    begin
     DataMas[31,C]:=DataMas[31,C]+1;
     DataMas[31,8]:=DataMas[31,8]+1;
     if Mas1[i].Cause1 = 'Контрольнi тяги                                   ' then
      begin
       DataMas[33,C]:=DataMas[33,C]+1;
       DataMas[33,8]:=DataMas[33,8]+1;
        R:=35;
       if Mas1[i].Cause2 = 'Злам деталей                                      ' then R:=37;
       if Mas1[i].Cause2 = 'Деформацiя деталей                                ' then R:=37;
      end;
     if Mas1[i].Cause1 = 'Робочi тяги                                       ' then
      begin
       DataMas[39,C]:=DataMas[39,C]+1;
       DataMas[39,8]:=DataMas[39,8]+1;
        R:=41;
       if Mas1[i].Cause2 = 'Злам деталей                                      ' then R:=43;
       if Mas1[i].Cause2 = 'Деформацiя деталей                                ' then R:=43;
      end;
     if Mas1[i].Cause1 = 'Iншi елементи                                     ' then R:=45;
     if Mas1[i].Cause1 = 'Замoк Мелентьєва                                  ' then R:=47;
    end;
       DataMas[R,C]:=DataMas[R,C]+1;
       DataMas[R,8]:=DataMas[R,8]+1;
       DataMas[49,C]:=DataMas[49,C]+1;
       DataMas[49,8]:=DataMas[49,8]+1;
 end;  //if or or or
end; //for

for i:=0 to high(Mas2) do
begin
 if Mas2[i].Slujba <> 'Ш' then continue;
 if (Mas2[i].Element = 'Приводи                  ') or (Mas2[i].Element = 'Двигуни                  ')
  or (Mas2[i].Element = 'Гарнітура                ') then
 begin
//  C:=1;
  R:=0;
  if Mas2[i].Systema = 'Е' then C:=3;
  if Mas2[i].Systema = 'Г' then C:=5;
  if Mas2[i].Systema = 'М' then C:=6;
  if Mas2[i].Systema = 'П' then C:=7;
  if Pos('СП-2',Mas2[i].Cause1) = 1 then C:=1;
  if Pos('СП-3',Mas2[i].Cause1) = 1 then C:=2;
  if Pos('СП-6',Mas2[i].Cause1) = 1 then C:=3;
  if Pos('СПГ',Mas2[i].Cause1) = 1 then C:=4;
  if Pos('СПГБ',Mas2[i].Cause1) = 1 then C:=5;
//  if Mas2[i].Cause1 = 'Замoк Мелентьєва                                  ' then C:=6;
//  if Mas2[i].Cause1 = 'Привод автошлагбаума                              ' then C:=7;

  if Mas2[i].Element = 'Приводи                  ' then
   begin
     DataMas[30,C]:=DataMas[30,C]+1;
     DataMas[30,8]:=DataMas[30,8]+1;
    if Mas2[i].Cause2 = 'Втрата контакту в автоперемикачi                  ' then
     begin
      DataMas[2,C]:=DataMas[2,C]+1;
      DataMas[2,8]:=DataMas[2,8]+1;
      if Mas2[i].Cause3 = 'Розрегулювання контактiв                          ' then R:=4;
      if Mas2[i].Cause3 = 'Злам контактної колодки                           ' then R:=6;
      if Mas2[i].Cause3 = 'Злам контактних пружин                            ' then R:=8;
      if Mas2[i].Cause3 = 'Злам важеля автоперемикача                        ' then R:=10;
      if Mas2[i].Cause3 = 'Забруднення контактiв                             ' then R:=12;
      if Mas2[i].Cause3 = 'Пiдгорання контактiв                              ' then R:=12;
      if Mas2[i].Cause3 = 'Iнiй на контактах                                 ' then R:=14;
      if Mas2[i].Cause3 = 'Злам, роз’єднання пружини                         ' then R:=16;
     end;
    if Mas2[i].Cause2 = 'Заклинювання шибера                               ' then R:=18;
    if Mas2[i].Cause2 = 'Несправнiсть механiчної передачi                  ' then R:=20;
    if Mas2[i].Cause2 = 'Порушення контакту блок. пристрою                 ' then R:=22;
    if Mas2[i].Cause2 = 'Несправнiсть контрольних лiнiйок                  ' then R:=24;
    if Mas2[i].Cause2 = 'Несправнiсть монтажу                              ' then R:=26;
    if R = 0 then
     begin
      R:=4;
      ShowMessage('Помилка! Дата ' + Mas2[i].DateBegin + ' Номер ' + Mas2[i].Number);
     end; //if R = 0
   end;
   if Mas2[i].Element = 'Двигуни                  ' then
    begin
     DataMas[30,C]:=DataMas[30,C]+1;
     DataMas[30,8]:=DataMas[30,8]+1;
      R:=28;
    end;
   if Mas2[i].Element = 'Гарнітура                ' then
    begin
     DataMas[32,C]:=DataMas[32,C]+1;
     DataMas[32,8]:=DataMas[32,8]+1;
     if Mas2[i].Cause1 = 'Контрольнi тяги                                   ' then
      begin
       DataMas[34,C]:=DataMas[34,C]+1;
       DataMas[34,8]:=DataMas[34,8]+1;
        R:=36;
       if Mas2[i].Cause2 = 'Злам деталей                                      ' then R:=38;
       if Mas2[i].Cause2 = 'Деформацiя деталей                                ' then R:=38;
      end;
     if Mas2[i].Cause1 = 'Робочi тяги                                       ' then
      begin
       DataMas[40,C]:=DataMas[40,C]+1;
       DataMas[40,8]:=DataMas[40,8]+1;
        R:=42;
       if Mas2[i].Cause2 = 'Злам деталей                                      ' then R:=44;
       if Mas2[i].Cause2 = 'Деформацiя деталей                                ' then R:=44;
      end;
     if Mas2[i].Cause1 = 'Iншi елементи                                     ' then R:=46;
     if Mas2[i].Cause1 = 'Замoк Мелентьєва                                  ' then R:=48;
    end;
       DataMas[R,C]:=DataMas[R,C]+1;
       DataMas[R,8]:=DataMas[R,8]+1;
       DataMas[50,C]:=DataMas[50,C]+1;
       DataMas[50,8]:=DataMas[50,8]+1;
 end;  //if or or or
end; //for

   ValueArray:=VarArrayCreate([1,50,1,8],varVariant);
       for R:=1 to 50 do for C:=1 to 8 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-9'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table39u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №3-9 ******
//***** Довідка №3-9а ************
for R:=1 to 26 do for C:=1 to 16 do DataMas[R,C]:=0;
 C:=1;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Element = 'Двигуни                  ') and (Mas1[i].Slujba = 'Ш') then
  begin
   Cause:=Mas1[i].Cause2;
   if Mas1[i].Cause1 = 'MСП-0,1                                           ' then
    begin
     if Mas1[i].Cause2 = '30 В                                              ' then C:=1;
     if Mas1[i].Cause2 = '100 В                                             ' then C:=2;
     if Mas1[i].Cause2 = '160 В                                             ' then C:=3;
      Cause:=Mas1[i].Cause3;
    end;
   if Mas1[i].Cause1 = 'МСП-0,15                                          ' then
    begin
     if Mas1[i].Cause2 = '30 В                                              ' then C:=4;
     if Mas1[i].Cause2 = '100 В                                             ' then C:=5;
     if Mas1[i].Cause2 = '160 В                                             ' then C:=6;
      Cause:=Mas1[i].Cause3;
    end;
   if Mas1[i].Cause1 = 'МСП-0,25                                          ' then
    begin
     if Mas1[i].Cause2 = '30 В                                              ' then C:=7;
     if Mas1[i].Cause2 = '100 В                                             ' then C:=8;
     if Mas1[i].Cause2 = '160 В                                             ' then C:=9;
      Cause:=Mas1[i].Cause3;
    end;
   if Mas1[i].Cause1 = 'МСТ-0,25                                          ' then C:=10;
   if Mas1[i].Cause1 = 'МСТ-0,3                                           ' then C:=11;
   if Mas1[i].Cause1 = 'МСТ-0,6                                           ' then C:=12;
   if Mas1[i].Cause1 = 'ДП-0,18                                           ' then C:=13;
   if Mas1[i].Cause1 = 'ДП-0,25                                           ' then C:=14;
   if Mas1[i].Cause1 = 'СЛ-571к                                           ' then C:=15;
   if Cause = 'Обрив проводу обмотки якоря                       ' then R:=1;
   if Cause = 'Замикання проводу обмотки якоря                   ' then R:=3;
   if Cause = 'Зниження iзоляцiї обмотки якоря                   ' then R:=5;
   if Cause = 'Прогорання iзоляцiї колектора                     ' then R:=7;
   if Cause = 'Обрив проводу обмотки статора                     ' then R:=9;
   if Cause = 'Замикання проводу обмотки статора                 ' then R:=11;
   if Cause = 'Зниження iзоляцiї обмотки статора                 ' then R:=13;
   if Cause = 'Обрив виводiв обмотки статора                     ' then R:=15;
   if Cause = 'Несправнiсть щiткового вузла                      ' then R:=17;
   if Cause = 'Ослаблення крiплення деталей                      ' then R:=19;
   if Cause = 'Несправнiсть пiдшипникiв                          ' then R:=21;
   if Cause = 'Злам вала                                         ' then R:=23;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,16]:=DataMas[R,16]+1;
    DataMas[25,C]:=DataMas[25,C]+1;
    DataMas[25,16]:=DataMas[25,16]+1;
  end;

for i:=0 to high(Mas2) do
 if (Mas2[i].Element = 'Двигуни                  ') and (Mas2[i].Slujba = 'Ш') then
  begin
   Cause:=Mas2[i].Cause2;
   if Mas2[i].Cause1 = 'MСП-0,1                                           ' then
    begin
     if Mas2[i].Cause2 = '30 В                                              ' then C:=1;
     if Mas2[i].Cause2 = '100 В                                             ' then C:=2;
     if Mas2[i].Cause2 = '160 В                                             ' then C:=3;
      Cause:=Mas2[i].Cause3;
    end;
   if Mas2[i].Cause1 = 'МСП-0,15                                          ' then
    begin
     if Mas2[i].Cause2 = '30 В                                              ' then C:=4;
     if Mas2[i].Cause2 = '100 В                                             ' then C:=5;
     if Mas2[i].Cause2 = '160 В                                             ' then C:=6;
      Cause:=Mas2[i].Cause3;
    end;
   if Mas2[i].Cause1 = 'МСП-0,25                                          ' then
    begin
     if Mas2[i].Cause2 = '30 В                                              ' then C:=7;
     if Mas2[i].Cause2 = '100 В                                             ' then C:=8;
     if Mas2[i].Cause2 = '160 В                                             ' then C:=9;
      Cause:=Mas2[i].Cause3;
    end;
   if Mas2[i].Cause1 = 'МСТ-0,25                                          ' then C:=10;
   if Mas2[i].Cause1 = 'МСТ-0,3                                           ' then C:=11;
   if Mas2[i].Cause1 = 'МСТ-0,6                                           ' then C:=12;
   if Mas2[i].Cause1 = 'ДП-0,18                                           ' then C:=13;
   if Mas2[i].Cause1 = 'ДП-0,25                                           ' then C:=14;
   if Mas2[i].Cause1 = 'СЛ-571к                                           ' then C:=15;
   if Cause = 'Обрив проводу обмотки якоря                       ' then R:=2;
   if Cause = 'Замикання проводу обмотки якоря                   ' then R:=4;
   if Cause = 'Зниження iзоляцiї обмотки якоря                   ' then R:=6;
   if Cause = 'Прогорання iзоляцiї колектора                     ' then R:=8;
   if Cause = 'Обрив проводу обмотки статора                     ' then R:=10;
   if Cause = 'Замикання проводу обмотки статора                 ' then R:=12;
   if Cause = 'Зниження iзоляцiї обмотки статора                 ' then R:=14;
   if Cause = 'Обрив виводiв обмотки статора                     ' then R:=16;
   if Cause = 'Несправнiсть щiткового вузла                      ' then R:=18;
   if Cause = 'Ослаблення крiплення деталей                      ' then R:=20;
   if Cause = 'Несправнiсть пiдшипникiв                          ' then R:=22;
   if Cause = 'Злам вала                                         ' then R:=24;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[R,16]:=DataMas[R,16]+1;
    DataMas[26,C]:=DataMas[26,C]+1;
    DataMas[26,16]:=DataMas[26,16]+1;
  end;

   ValueArray:=VarArrayCreate([1,26,1,16],varVariant);
       for R:=1 to 26 do for C:=1 to 16 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-9a'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table39a',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №3-9а *****
//***** Довідка №10 **************
for R:=1 to 16 do for C:=1 to 5 do DataMas[R,C]:=0;
 C:=1;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Element = 'Кабельнi лiнiї           ') and (Mas1[i].Slujba = 'Ш') then
  begin
   if Mas1[i].Cause1 = 'Зниження опору iзоляцiї                           ' then C:=1;
   if Mas1[i].Cause1 = 'Обрив, злом жил                                   ' then C:=2;
   if Mas1[i].Cause1 = 'Сполучення жил                                    ' then C:=3;
   if Mas1[i].Cause1 = 'Механiчнi пошкодження                             ' then C:=4;
   if Mas1[i].Cause2 = 'При виконаннi робiт працiвниками ШЧ               ' then R:=1;
   if Mas1[i].Cause2 = 'В присутностi представника ШЧ                     ' then R:=3;
   if Mas1[i].Cause2 = 'Вина стороннiх осiб i органiзацiй                 ' then R:=5;
   if Mas1[i].Cause2 = 'Вплив тягового струму                             ' then R:=7;
   if Mas1[i].Cause2 = 'Вплив грозових розрядiв                           ' then R:=9;
   if Mas1[i].Cause2 = 'Неякiсне оброблення пiд час монтажу               ' then R:=11;
   if Mas1[i].Cause2 = 'Дефект матерiалу                                  ' then R:=13;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[15,C]:=DataMas[15,C]+1;
    DataMas[R,5]:=DataMas[R,5]+1;
    DataMas[15,5]:=DataMas[15,5]+1;
  end;
for i:=0 to high(Mas2) do
 if (Mas2[i].Element = 'Кабельнi лiнiї           ') and (Mas2[i].Slujba = 'Ш') then
  begin
   if Mas2[i].Cause1 = 'Зниження опору iзоляцiї                           ' then C:=1;
   if Mas2[i].Cause1 = 'Обрив, злом жил                                   ' then C:=2;
   if Mas2[i].Cause1 = 'Сполучення жил                                    ' then C:=3;
   if Mas2[i].Cause1 = 'Механiчнi пошкодження                             ' then C:=4;
   if Mas2[i].Cause2 = 'При виконаннi робiт працiвниками ШЧ               ' then R:=2;
   if Mas2[i].Cause2 = 'В присутностi представника ШЧ                     ' then R:=4;
   if Mas2[i].Cause2 = 'Вина стороннiх осiб i органiзацiй                 ' then R:=6;
   if Mas2[i].Cause2 = 'Вплив тягового струму                             ' then R:=8;
   if Mas2[i].Cause2 = 'Вплив грозових розрядiв                           ' then R:=10;
   if Mas2[i].Cause2 = 'Неякiсне оброблення пiд час монтажу               ' then R:=12;
   if Mas2[i].Cause2 = 'Дефект матерiалу                                  ' then R:=14;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[16,C]:=DataMas[16,C]+1;
    DataMas[R,5]:=DataMas[R,5]+1;
    DataMas[16,5]:=DataMas[16,5]+1;
  end;

   ValueArray:=VarArrayCreate([1,16,1,5],varVariant);
       for R:=1 to 16 do for C:=1 to 5 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-10,11'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table310',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №10 *******
//***** Довідка №11 **************
for R:=1 to 26 do for C:=1 to 5 do DataMas[R,C]:=0;
 C:=1;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Element = 'Повiтрянi лiнiї          ') and (Mas1[i].Slujba = 'Ш') then
  begin
   if Mas1[i].Cause1 = 'Зниження опору iзоляцiї                           ' then C:=1;
   if Mas1[i].Cause1 = 'Обрив, злом жил                                   ' then C:=2;
   if Mas1[i].Cause1 = 'Сполучення жил                                    ' then C:=3;
   if Mas1[i].Cause1 = 'Механiчнi пошкодження                             ' then C:=4;
   if Mas1[i].Cause2 = 'При виконаннi робiт працiвниками ШЧ               ' then R:=1;
   if Mas1[i].Cause2 = 'В присутностi представника ШЧ                     ' then R:=3;
   if Mas1[i].Cause2 = 'Зовнiшнiй вплив (стихiя та iн.)                   ' then
     begin
      if Mas1[i].Cause3 = 'Ожеледь                                           ' then R:=9;
      if Mas1[i].Cause3 = 'Вiтер                                             ' then R:=11;
      if Mas1[i].Cause3 = 'Гроза                                             ' then R:=13;
      if Mas1[i].Cause3 = 'Пожежа                                            ' then R:=15;
      if Mas1[i].Cause3 = 'Транспорт                                         ' then R:=17;
      DataMas[7,C]:=DataMas[7,C]+1;
      DataMas[7,5]:=DataMas[7,5]+1;
     end;
   if Mas1[i].Cause2 = 'Накидання стороннiх предметiв на дроти            ' then R:=19;
   if Mas1[i].Cause2 = 'Неякiсне зварювання, зв’язування та iн.       ' then R:=21;
   if Mas1[i].Cause2 = 'Падiння опори                                     ' then R:=23;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[25,C]:=DataMas[25,C]+1;
    DataMas[R,5]:=DataMas[R,5]+1;
    DataMas[25,5]:=DataMas[25,5]+1;
  end;
for i:=0 to high(Mas2) do
 if (Mas2[i].Element = 'Повiтрянi лiнiї          ') and (Mas2[i].Slujba = 'Ш') then
  begin
   if Mas2[i].Cause1 = 'Зниження опору iзоляцiї                           ' then C:=1;
   if Mas2[i].Cause1 = 'Обрив, злом жил                                   ' then C:=2;
   if Mas2[i].Cause1 = 'Сполучення жил                                    ' then C:=3;
   if Mas2[i].Cause1 = 'Механiчнi пошкодження                             ' then C:=4;
   if Mas2[i].Cause2 = 'При виконаннi робiт працiвниками ШЧ               ' then R:=2;
   if Mas2[i].Cause2 = 'В присутностi представника ШЧ                     ' then R:=4;
   if Mas2[i].Cause2 = 'Зовнiшнiй вплив (стихiя та iн.)                   ' then
     begin
      if Mas2[i].Cause3 = 'Ожеледь                                           ' then R:=10;
      if Mas2[i].Cause3 = 'Вiтер                                             ' then R:=12;
      if Mas2[i].Cause3 = 'Гроза                                             ' then R:=14;
      if Mas2[i].Cause3 = 'Пожежа                                            ' then R:=16;
      if Mas2[i].Cause3 = 'Транспорт                                         ' then R:=18;
      DataMas[8,C]:=DataMas[8,C]+1;
      DataMas[8,5]:=DataMas[8,5]+1;
     end;
   if Mas2[i].Cause2 = 'Накидання стороннiх предметiв на дроти            ' then R:=20;
   if Mas2[i].Cause2 = 'Неякiсне зварювання, зв’язування та iн.       ' then R:=22;
   if Mas2[i].Cause2 = 'Падiння опори                                     ' then R:=24;
    DataMas[R,C]:=DataMas[R,C]+1;
    DataMas[26,C]:=DataMas[26,C]+1;
    DataMas[R,5]:=DataMas[R,5]+1;
    DataMas[26,5]:=DataMas[26,5]+1;
  end;

   ValueArray:=VarArrayCreate([1,26,1,5],varVariant);
       for R:=1 to 26 do for C:=1 to 5 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-10,11'] as Excel97.ExcelWorkSheet;
         IRange:=ISheet.Range['table311',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №11 *******
//***** Довідка №4 ***************
for R:=1 to 18 do for C:=1 to 12 do DataMas[R,C]:=0;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Closed > 0) and (Mas1[i].Systema = 'А') then
   begin
    C:=11;
    if Mas1[i].Proyava = 'Погашений стан сигналу                                                     ' then R:=1;
    if Mas1[i].Proyava = 'Більш дозволяюче показання сигналу                                         ' then R:=5;
    if Mas1[i].Proyava = 'Неможливість зміни напрямку                                                ' then R:=9;
    if Mas1[i].Proyava = 'Не відкр. вих. сигн. на без сигн. перегін                                  ' then R:=13;
    if Mas1[i].PrimClosed = 'Вимкнення електроенергії                          ' then C:=1;
    if Mas1[i].PrimClosed = 'Несправність рейкових кіл                         ' then C:=2;
    if Mas1[i].PrimClosed = 'Несправність приладів СЦБ                         ' then C:=3;
    if Mas1[i].PrimClosed = 'Несправність повітряних ліній                     ' then C:=4;
    if Mas1[i].PrimClosed = 'Несправність кабельних ліній                      ' then C:=5;
    if Mas1[i].PrimClosed = 'Несправність акумуляторів                         ' then C:=6;
    if Mas1[i].PrimClosed = 'Грозові перенапруження                            ' then C:=7;
    if Mas1[i].PrimClosed = 'Аварія в контактній мережі                        ' then C:=8;
    if Mas1[i].PrimClosed = 'Неправильні дії ДСП                               ' then C:=9;
    if Mas1[i].PrimClosed = 'Помилки обслуговуючого персоналу ШЧ               ' then C:=10;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[17,C]:=DataMas[17,C]+1;
     DataMas[R,12]:=DataMas[R,12]+1;
     DataMas[17,12]:=DataMas[17,12]+1;
   end;
for i:=0 to high(Mas2) do
 if (Mas2[i].Closed > 0) and (Mas2[i].Systema = 'А') then
   begin
    C:=11;
    if Mas2[i].Proyava = 'Погашений стан сигналу                                                     ' then R:=3;
    if Mas2[i].Proyava = 'Більш дозволяюче показання сигналу                                         ' then R:=7;
    if Mas2[i].Proyava = 'Неможливість зміни напрямку                                                ' then R:=11;
    if Mas2[i].Proyava = 'Не відкр. вих. сигн. на без сигн. перегін                                  ' then R:=15;
    if Mas2[i].PrimClosed = 'Вимкнення електроенергії                          ' then C:=1;
    if Mas2[i].PrimClosed = 'Несправність рейкових кіл                         ' then C:=2;
    if Mas2[i].PrimClosed = 'Несправність приладів СЦБ                         ' then C:=3;
    if Mas2[i].PrimClosed = 'Несправність повітряних ліній                     ' then C:=4;
    if Mas2[i].PrimClosed = 'Несправність кабельних ліній                      ' then C:=5;
    if Mas2[i].PrimClosed = 'Несправність акумуляторів                         ' then C:=6;
    if Mas2[i].PrimClosed = 'Грозові перенапруження                            ' then C:=7;
    if Mas2[i].PrimClosed = 'Аварія в контактній мережі                        ' then C:=8;
    if Mas2[i].PrimClosed = 'Неправильні дії ДСП                               ' then C:=9;
    if Mas2[i].PrimClosed = 'Помилки обслуговуючого персоналу ШЧ               ' then C:=10;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[18,C]:=DataMas[18,C]+1;
     DataMas[R,12]:=DataMas[R,12]+1;
     DataMas[18,12]:=DataMas[18,12]+1;
   end;

   ValueArray:=VarArrayCreate([1,18,1,12],varVariant);
       for R:=1 to 18 do for C:=1 to 12 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['4,5'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[4,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table4u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №4 ********
//***** Довідка №5 ***************
for R:=1 to 18 do for C:=1 to 12 do DataMas[R,C]:=0;
 R:=1;
for i:=0 to high(Mas1) do
 if (Mas1[i].Closed > 0) and (Mas1[i].Systema = 'Н') then
   begin
    C:=11;
    if Mas1[i].Proyava = 'Неможливість закриття сигнлу                                               ' then R:=1;
    if Mas1[i].Proyava = 'Неможливість відкриття сигналу                                             ' then R:=5;
    if Mas1[i].Proyava = 'Самовільне отримання блок-сигналів                                         ' then R:=9;
    if Mas1[i].Proyava = 'Неможливість подачі/отримання блок сигналів                                ' then R:=13;
    if Mas1[i].PrimClosed = 'Вимкнення електроенергії                          ' then C:=1;
    if Mas1[i].PrimClosed = 'Несправність рейкових кіл                         ' then C:=2;
    if Mas1[i].PrimClosed = 'Несправність приладів СЦБ                         ' then C:=3;
    if Mas1[i].PrimClosed = 'Несправність повітряних ліній                     ' then C:=4;
    if Mas1[i].PrimClosed = 'Несправність кабельних ліній                      ' then C:=5;
    if Mas1[i].PrimClosed = 'Несправність акумуляторів                         ' then C:=6;
    if Mas1[i].PrimClosed = 'Грозові перенапруження                            ' then C:=7;
    if Mas1[i].PrimClosed = 'Аварія в контактній мережі                        ' then C:=8;
    if Mas1[i].PrimClosed = 'Неправильні дії ДСП                               ' then C:=9;
    if Mas1[i].PrimClosed = 'Помилки обслуговуючого персоналу ШЧ               ' then C:=10;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[17,C]:=DataMas[17,C]+1;
     DataMas[R,12]:=DataMas[R,12]+1;
     DataMas[17,12]:=DataMas[17,12]+1;
   end;
for i:=0 to high(Mas2) do
 if (Mas2[i].Closed > 0) and (Mas2[i].Systema = 'Н') then
   begin
    C:=11;
    if Mas2[i].Proyava = 'Неможливість закриття сигнлу                                               ' then R:=3;
    if Mas2[i].Proyava = 'Неможливість відкриття сигналу                                             ' then R:=7;
    if Mas2[i].Proyava = 'Самовільне отримання блок-сигналів                                         ' then R:=11;
    if Mas2[i].Proyava = 'Неможливість подачі/отримання блок сигналів                                ' then R:=15;
    if Mas2[i].PrimClosed = 'Вимкнення електроенергії                          ' then C:=1;
    if Mas2[i].PrimClosed = 'Несправність рейкових кіл                         ' then C:=2;
    if Mas2[i].PrimClosed = 'Несправність приладів СЦБ                         ' then C:=3;
    if Mas2[i].PrimClosed = 'Несправність повітряних ліній                     ' then C:=4;
    if Mas2[i].PrimClosed = 'Несправність кабельних ліній                      ' then C:=5;
    if Mas2[i].PrimClosed = 'Несправність акумуляторів                         ' then C:=6;
    if Mas2[i].PrimClosed = 'Грозові перенапруження                            ' then C:=7;
    if Mas2[i].PrimClosed = 'Аварія в контактній мережі                        ' then C:=8;
    if Mas2[i].PrimClosed = 'Неправильні дії ДСП                               ' then C:=9;
    if Mas2[i].PrimClosed = 'Помилки обслуговуючого персоналу ШЧ               ' then C:=10;
     DataMas[R,C]:=DataMas[R,C]+1;
     DataMas[18,C]:=DataMas[18,C]+1;
     DataMas[R,12]:=DataMas[R,12]+1;
     DataMas[18,12]:=DataMas[18,12]+1;
   end;

   ValueArray:=VarArrayCreate([1,18,1,12],varVariant);
       for R:=1 to 18 do for C:=1 to 12 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['4,5'] as Excel97.ExcelWorkSheet;
         IRange:=ISheet.Range['table5u',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
       end;
     end;
//***** Кінець довідки №5 ********
//***** Довідка №3-12 ************
  for R:=1 to 92 do for C:=1 to 10 do DataMas[R,C]:=0;
//    R:=1;
  for i:=0 to high(Mas1) do
   if Mas1[i].Element = 'Pейковi кола             ' then
    begin
     R:=0;
     C:=7;
     if Mas1[i].Slujba = 'Ш' then C:=1;
     if Mas1[i].Slujba = 'П' then C:=4;
      C1:=C+2;        //all
     if Mas1[i].Cause1 <> 'Р.к. на станції                                   ' then C:=C+1;
     if Mas1[i].Cause2 = 'Обрив, вiдсутнiсть з’єднувачiв                    ' then
       begin
        DataMas[1,C]:=DataMas[1,C]+1;
        DataMas[1,C1]:=DataMas[1,C1]+1;
        DataMas[1,10]:=DataMas[1,10]+1;
        if Mas1[i].Cause3 = 'Корозiя                                           ' then R:=3;
        if Mas1[i].Cause3 = 'Пошкодження рухомим складом                       ' then R:=5;
        if Mas1[i].Cause3 = 'Пошкодження при колiйних роботах                  ' then R:=7;
        if Mas1[i].Cause3 = 'Неякiсне приварювання                             ' then R:=9;
        if Mas1[i].Cause3 = 'Неякiсне штепсельне з’єднання                     ' then R:=11;
        if Mas1[i].Cause3 = 'Нестандартний отвiр                               ' then R:=11;
        if Mas1[i].Cause3 = 'Угон рейки                                        ' then R:=13;
        if Mas1[i].Cause3 = 'Крадiжка (пошкодження стороннiми)                 ' then R:=15;
        if Mas1[i].Cause3 = 'Вiдсутнiсть декiлькох з’єднувачiв                 ' then R:=17;
        if R = 0 then
         begin
          R:=3;
          ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
         end; //if R = 0
       end;
     if Mas1[i].Cause2 = 'Обрив тягов. i джемперн. перемичок                ' then
       begin
        DataMas[19,C]:=DataMas[19,C]+1;
        DataMas[19,C1]:=DataMas[19,C1]+1;
        DataMas[19,10]:=DataMas[19,10]+1;
        if Mas1[i].Cause3 = 'Корозiя                                           ' then R:=21;
        if Mas1[i].Cause3 = 'Пошкодження рухомим складом                       ' then R:=23;
        if Mas1[i].Cause3 = 'Пошкодження при колiйних роботах                  ' then R:=25;
        if Mas1[i].Cause3 = 'Неякiсне приварювання                             ' then R:=27;
        if Mas1[i].Cause3 = 'Неякiсне штепсельне з’єднання                     ' then R:=29;
        if Mas1[i].Cause3 = 'Нестандартний отвiр                               ' then R:=29;
        if Mas1[i].Cause3 = 'Угон рейки                                        ' then R:=31;
        if Mas1[i].Cause3 = 'Крадiжка (пошкодження стороннiми)                 ' then R:=33;
        if Mas1[i].Cause3 = 'Вiдсутнiсть декiлькох з’єднувачiв                 ' then R:=17;
        if R = 0 then
         begin
          R:=21;
          ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
         end; //if R = 0
       end;
     if (Mas1[i].Cause2 = 'Обрив бутлежних перемичок                         ') or
        (Mas1[i].Cause2 = 'Несправнiсть ДТ-перемичок                         ') then
       begin
        DataMas[19,C]:=DataMas[19,C]+1;
        DataMas[19,C1]:=DataMas[19,C1]+1;
        DataMas[19,10]:=DataMas[19,10]+1;
        if Mas1[i].Cause3 = 'Корозiя                                           ' then R:=21;
        if Mas1[i].Cause3 = 'Пошкодження рухомим складом                       ' then R:=23;
        if Mas1[i].Cause3 = 'Пошкодження при колiйних роботах                  ' then R:=25;
        if Mas1[i].Cause3 = 'Неякiсне приварювання                             ' then R:=27;
        if Mas1[i].Cause3 = 'Неякiсне штепсельне з’єднання                     ' then R:=29;
        if Mas1[i].Cause3 = 'Нестандартний отвiр                               ' then R:=29;
        if Mas1[i].Cause3 = 'Угон рейки                                        ' then R:=31;
        if Mas1[i].Cause3 = 'Крадiжка (пошкодження стороннiми)                 ' then R:=33;
        if Mas1[i].Cause3 = 'Вiдсутнiсть декiлькох з’єднувачiв                 ' then R:=17;
        if R = 0 then
         begin
          R:=21;
          ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
         end; //if R = 0
       end;
     if Mas1[i].Cause2 = 'Порушення iзоляцiї                                ' then
       begin
        DataMas[35,C]:=DataMas[35,C]+1;
        DataMas[35,C1]:=DataMas[35,C1]+1;
        DataMas[35,10]:=DataMas[35,10]+1;
        if Mas1[i].Cause3 = 'Стика                                             ' then
          begin
           DataMas[37,C]:=DataMas[37,C]+1;
           DataMas[37,C1]:=DataMas[37,C1]+1;
           DataMas[37,10]:=DataMas[37,10]+1;
           if Mas1[i].Cause4 = 'Згін iзостика                                     ' then R:=39;
           if Mas1[i].Cause4 = 'Розтяжка iзостика                                 ' then R:=41;
           if Mas1[i].Cause4 = 'Стружка, окалина                                  ' then R:=43;
           if Mas1[i].Cause4 = 'Стороннi предмети                                 ' then R:=45;
           if Mas1[i].Cause4 = 'Угон рейки                                        ' then R:=47;
           if Mas1[i].Cause4 = 'Несправнiсть клеєболтового стика                  ' then R:=49;
          end; //стика
        if Mas1[i].Cause3 = 'Стрiлочної гарнiтури                              ' then R:=51;
        if Mas1[i].Cause3 = 'Стяжної смуги                                     ' then R:=53;
        if Mas1[i].Cause3 = 'Серег                                             ' then R:=55;
        if Mas1[i].Cause3 = 'Розпiрок хрестовини                               ' then R:=57;
       end; //порушення ізоляції
     if Mas1[i].Cause2 = 'Зниження опору iзоляцiї баласту                   ' then R:=59;
     if Mas1[i].Cause2 = 'Закорочування рейкового кола                      ' then R:=61;
     if Mas1[i].Cause2 = 'Вплив стороннiх джерел живлення                   ' then R:=63;
     if Mas1[i].Cause2 = 'Порушення регул. режиму персоналом                ' then R:=65;
     if Mas1[i].Cause2 = 'Злам рейки                                        ' then R:=67;
     if Mas1[i].Cause2 = 'Неякiсне графiтне мастило                         ' then R:=69;
     if Mas1[i].Cause2 = 'Iншi пошкодження                                  ' then R:=71;
     if Mas1[i].Cause2 = 'Втрата шунтової чутливості                        ' then R:=75;
     if (Mas1[i].Cause2 = 'Підвищення напруги з вини ШЧ                      ') or
        (Mas1[i].Cause2 = 'Неправильні дії працівників ШЧ                    ') then R:=77;
     if Mas1[i].Cause2 = 'Порушення чергування полярності і пробій стика    ' then R:=79;
     if Mas1[i].Cause2 = 'Інші причини                                      ' then R:=81;
     if Mas1[i].Cause2 = 'Підживлення реле від сторонніх джерел             ' then R:=83;
     if Mas1[i].Cause2 = 'Несправність перемичок з’єднувачів                ' then R:=85;
     if Mas1[i].Cause2 = 'Несправність апаратури, монтажу, кабелів          ' then R:=87;
        if R = 0 then
         begin
          R:=71;
          ShowMessage('Помилка! Дата ' + Mas1[i].DateBegin + ' Номер ' + Mas1[i].Number);
         end; //if R = 0
        DataMas[91,C]:=DataMas[91,C]+1;
        DataMas[91,C1]:=DataMas[91,C1]+1;
        DataMas[91,10]:=DataMas[91,10]+1;
        DataMas[R,C]:=DataMas[R,C]+1;
        DataMas[R,C1]:=DataMas[R,C1]+1;
        DataMas[R,10]:=DataMas[R,10]+1;
         if R < 74 then
          begin
           DataMas[73,C]:=DataMas[73,C]+1;
           DataMas[73,C1]:=DataMas[73,C1]+1;
           DataMas[73,10]:=DataMas[73,10]+1;
          end else
          begin
           DataMas[89,C]:=DataMas[89,C]+1;
           DataMas[89,C1]:=DataMas[89,C1]+1;
           DataMas[89,10]:=DataMas[89,10]+1;
          end;
    end;  //for
  for i:=0 to high(Mas2) do
   if Mas2[i].Element = 'Pейковi кола             ' then
    begin
     R:=1;
     C:=7;
     if Mas2[i].Slujba = 'Ш' then C:=1;
     if Mas2[i].Slujba = 'П' then C:=4;
      C1:=C+2;
     if Mas2[i].Cause1 <> 'Р.к. на станції                                   ' then C:=C+1;
     if Mas2[i].Cause2 = 'Обрив, вiдсутнiсть з’єднувачiв                    ' then
       begin
        DataMas[2,C]:=DataMas[2,C]+1;
        DataMas[2,C1]:=DataMas[2,C1]+1;
        DataMas[2,10]:=DataMas[2,10]+1;
        if Mas2[i].Cause3 = 'Корозiя                                           ' then R:=4;
        if Mas2[i].Cause3 = 'Пошкодження рухомим складом                       ' then R:=6;
        if Mas2[i].Cause3 = 'Пошкодження при колiйних роботах                  ' then R:=8;
        if Mas2[i].Cause3 = 'Неякiсне приварювання                             ' then R:=10;
        if Mas2[i].Cause3 = 'Неякiсне штепсельне з’єднання                     ' then R:=12;
        if Mas2[i].Cause3 = 'Нестандартний отвiр                               ' then R:=12;
        if Mas2[i].Cause3 = 'Угон рейки                                        ' then R:=14;
        if Mas2[i].Cause3 = 'Крадiжка (пошкодження стороннiми)                 ' then R:=16;
        if Mas2[i].Cause3 = 'Вiдсутнiсть декiлькох з’єднувачiв                 ' then R:=18;
       end;
     if Mas2[i].Cause2 = 'Обрив тягов. i джемперн. перемичок                ' then
       begin
        DataMas[20,C]:=DataMas[20,C]+1;
        DataMas[20,C1]:=DataMas[20,C1]+1;
        DataMas[20,10]:=DataMas[20,10]+1;
        if Mas2[i].Cause3 = 'Корозiя                                           ' then R:=22;
        if Mas2[i].Cause3 = 'Пошкодження рухомим складом                       ' then R:=24;
        if Mas2[i].Cause3 = 'Пошкодження при колiйних роботах                  ' then R:=26;
        if Mas2[i].Cause3 = 'Неякiсне приварювання                             ' then R:=28;
        if Mas2[i].Cause3 = 'Неякiсне штепсельне з’єднання                     ' then R:=30;
        if Mas2[i].Cause3 = 'Нестандартний отвiр                               ' then R:=30;
        if Mas2[i].Cause3 = 'Угон рейки                                        ' then R:=32;
        if Mas2[i].Cause3 = 'Крадiжка (пошкодження стороннiми)                 ' then R:=34;
        if Mas2[i].Cause3 = 'Вiдсутнiсть декiлькох з’єднувачiв                 ' then R:=18;
       end;
     if (Mas2[i].Cause2 = 'Обрив бутлежних перемичок                         ') or
        (Mas2[i].Cause2 = 'Несправнiсть ДТ-перемичок                         ') then
       begin
        DataMas[20,C]:=DataMas[20,C]+1;
        DataMas[20,C1]:=DataMas[20,C1]+1;
        DataMas[20,10]:=DataMas[20,10]+1;
        if Mas2[i].Cause3 = 'Корозiя                                           ' then R:=22;
        if Mas2[i].Cause3 = 'Пошкодження рухомим складом                       ' then R:=24;
        if Mas2[i].Cause3 = 'Пошкодження при колiйних роботах                  ' then R:=26;
        if Mas2[i].Cause3 = 'Неякiсне приварювання                             ' then R:=28;
        if Mas2[i].Cause3 = 'Неякiсне штепсельне з’єднання                     ' then R:=30;
        if Mas2[i].Cause3 = 'Нестандартний отвiр                               ' then R:=30;
        if Mas2[i].Cause3 = 'Угон рейки                                        ' then R:=32;
        if Mas2[i].Cause3 = 'Крадiжка (пошкодження стороннiми)                 ' then R:=34;
        if Mas2[i].Cause3 = 'Вiдсутнiсть декiлькох з’єднувачiв                 ' then R:=18;
       end;
     if Mas2[i].Cause2 = 'Порушення iзоляцiї                                ' then
       begin
        DataMas[36,C]:=DataMas[36,C]+1;
        DataMas[36,C1]:=DataMas[36,C1]+1;
        DataMas[36,10]:=DataMas[36,10]+1;
        if Mas2[i].Cause3 = 'Стика                                             ' then
          begin
           DataMas[38,C]:=DataMas[38,C]+1;
           DataMas[38,C1]:=DataMas[38,C1]+1;
           DataMas[38,10]:=DataMas[38,10]+1;
           if Mas2[i].Cause4 = 'Згін iзостика                                     ' then R:=40;
           if Mas2[i].Cause4 = 'Розтяжка iзостика                                 ' then R:=42;
           if Mas2[i].Cause4 = 'Стружка, окалина                                  ' then R:=44;
           if Mas2[i].Cause4 = 'Стороннi предмети                                 ' then R:=46;
           if Mas2[i].Cause4 = 'Угон рейки                                        ' then R:=48;
           if Mas2[i].Cause4 = 'Несправнiсть клеєболтового стика                  ' then R:=50;
          end;
        if Mas2[i].Cause3 = 'Стрiлочної гарнiтури                              ' then R:=52;
        if Mas2[i].Cause3 = 'Стяжної смуги                                     ' then R:=54;
        if Mas2[i].Cause3 = 'Серег                                             ' then R:=56;
        if Mas2[i].Cause3 = 'Розпiрок хрестовини                               ' then R:=58;
       end;
     if Mas2[i].Cause2 = 'Зниження опору iзоляцiї баласту                   ' then R:=60;
     if Mas2[i].Cause2 = 'Закорочування рейкового кола                      ' then R:=62;
     if Mas2[i].Cause2 = 'Вплив стороннiх джерел живлення                   ' then R:=64;
     if Mas2[i].Cause2 = 'Порушення регул. режиму персоналом                ' then R:=66;
     if Mas2[i].Cause2 = 'Злам рейки                                        ' then R:=68;
     if Mas2[i].Cause2 = 'Неякiсне графiтне мастило                         ' then R:=70;
     if Mas2[i].Cause2 = 'Iншi пошкодження                                  ' then R:=72;
     if Mas2[i].Cause2 = 'Втрата шунтової чутливості                        ' then R:=76;
     if (Mas2[i].Cause2 = 'Підвищення напруги з вини ШЧ                      ') or
        (Mas2[i].Cause2 = 'Неправильні дії працівників ШЧ                    ') then R:=78;
     if Mas2[i].Cause2 = 'Порушення чергування полярності і пробій стика    ' then R:=80;
     if Mas2[i].Cause2 = 'Інші причини                                      ' then R:=82;
     if Mas2[i].Cause2 = 'Підживлення реле від сторонніх джерел             ' then R:=84;
     if Mas2[i].Cause2 = 'Несправність перемичок з’єднувачів                ' then R:=86;
     if Mas2[i].Cause2 = 'Несправність апаратури, монтажу, кабелів          ' then R:=88;
        DataMas[92,C]:=DataMas[92,C]+1;
        DataMas[92,C1]:=DataMas[92,C1]+1;
        DataMas[92,10]:=DataMas[92,10]+1;
        DataMas[R,C]:=DataMas[R,C]+1;
        DataMas[R,C1]:=DataMas[R,C1]+1;
        DataMas[R,10]:=DataMas[R,10]+1;
         if R < 74 then
          begin
           DataMas[74,C]:=DataMas[74,C]+1;
           DataMas[74,C1]:=DataMas[74,C1]+1;
           DataMas[74,10]:=DataMas[74,10]+1;
          end else
          begin
           DataMas[90,C]:=DataMas[90,C]+1;
           DataMas[90,C1]:=DataMas[90,C1]+1;
           DataMas[90,10]:=DataMas[90,10]+1;
          end;
    end;  //for

   ValueArray:=VarArrayCreate([1,50,1,10],varVariant);
       for R:=1 to 50 do for C:=1 to 10 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
        ISheet:=IWorkBook.WorkSheets.Item['3-12'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[3,1].Value:=Period;    //Date
         IRange:=ISheet.Range['table121',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
       end;
     end;

   ValueArray:=VarArrayCreate([1,24,1,10],varVariant);
       for R:=1 to 24 do for C:=1 to 10 do
        if DataMas[R+50,C] <> 0 then ValueArray[R,C]:=DataMas[R+50,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
         IRange:=ISheet.Range['table122',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
       end;
     end;

   ValueArray:=VarArrayCreate([1,16,1,10],varVariant);
       for R:=1 to 16 do for C:=1 to 10 do
        if DataMas[R+74,C] <> 0 then ValueArray[R,C]:=DataMas[R+74,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
         IRange:=ISheet.Range['table123',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
       end;
     end;

   ValueArray:=VarArrayCreate([1,2,1,10],varVariant);
       for R:=1 to 2 do for C:=1 to 10 do
        if DataMas[R+90,C] <> 0 then ValueArray[R,C]:=DataMas[R+90,C]
                             else ValueArray[R,C]:='';

    if Assigned(IXLApp) then
     begin
       try
         IRange:=ISheet.Range['table124',EmptyParam];
          IRange.Value:=ValueArray;
       finally
        IRange:=nil;
        ISheet:=nil;
        IWorkBook:=nil;
       end;
     end;
//***** Кінець довідки №3-12 *****
 finally
  ShowExcel;
  ReleaseExcel;
 end;
 end; //if Checked 3

//****** Зведені дані про відмови апаратури СЦБ ******
if CheckBox4.Checked then
 begin
 for R:=1 to 34 do for C:=1 to 14 do DataMas[R,C]:=0;
 try
  CreateExcel(true);
    if Assigned(IXLApp) then
     begin
      IWorkBook:=AddWorkBook(LaunchDir + 'Prilad.xls');
       try
        ISheet:=IWorkBook.WorkSheets.Item['1'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,1].Value:=Period;    //Date
       R1:=7;
       R:=5;
       C:=0;  //номера відмов 1,2,3...
    for i:=0 to high(Mas1) do
     if Mas1[i].Slujba = 'Ш' then
      begin
        if Mas1[i].Element = 'Сигнали                  ' then
          if Mas1[i].Cause2 = 'Перегорання свiтлофорної лампи                    ' then
            begin
             inc(C);
             inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:='Тип лампи        '+Copy(Mas1[i].Cause3,0,Pos('  ',Mas1[i].Cause3));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[  i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[23,C1]:=DataMas[23,C1]+1;
                DataMas[23,14]:=DataMas[23,14]+1;
            end;

        if Mas1[i].Element = 'Двигуни                  ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:=Copy(Mas1[i].Cause1,0,Pos('  ',Mas1[i].Cause1));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[21,C1]:=DataMas[21,C1]+1;
                DataMas[21,14]:=DataMas[21,14]+1;
          end;

        if Mas1[i].Element = 'Прилади                  ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:=Copy(Mas1[i].Cause1,0,Pos('  ',Mas1[i].Cause1));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[19,C1]:=DataMas[19,C1]+1;
                DataMas[19,14]:=DataMas[19,14]+1;
          end;

        if Mas1[i].Element = 'Прилади захисту          ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:=Copy(Mas1[i].Cause1,0,Pos('  ',Mas1[i].Cause1));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[25,C1]:=DataMas[25,C1]+1;
                DataMas[25,14]:=DataMas[25,14]+1;
          end;

        if Mas1[i].Element = 'Установчi вироби         ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:='Встанов. виріб, ' + Copy(Mas1[i].Cause2,0,Pos('  ',Mas1[i].Cause2));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[33,C1]:=DataMas[33,C1]+1;
                DataMas[33,14]:=DataMas[33,14]+1;
          end;

        if Mas1[i].Element = 'Запобiжники              ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:='Запобіжник, ' + Copy(Mas1[i].Cause1,0,Pos('  ',Mas1[i].Cause1));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[27,C1]:=DataMas[27,C1]+1;
                DataMas[27,14]:=DataMas[27,14]+1;
          end;

        if Mas1[i].Element = 'Випрямлячi               ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:=Copy(Mas1[i].Cause1,0,Pos('  ',Mas1[i].Cause1));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[29,C1]:=DataMas[29,C1]+1;
                DataMas[29,14]:=DataMas[29,14]+1;
          end;

        if Mas1[i].Element = 'Трансформатори           ' then
          begin
           inc(C);
           inc(R);
             Station:=Copy(Mas1[i].Station1,0,Pos('  ',Mas1[i].Station1));
              if Pos(' ',Mas1[i].Station2) <> 1 then
              Station:=Station + ' – ' + Copy(Mas1[i].Station2,0,Pos('  ',Mas1[i].Station2));
              Station:=Station + ', ' + Copy(Mas1[i].Proyava,0,Pos('  ',Mas1[i].Proyava));
               ISheet.Cells.Item[R,1]:=C;
               ISheet.Cells.Item[R,2]:=Mas1[i].SH;
               ISheet.Cells.Item[R,3]:=Copy(Mas1[i].DateBegin,0,8) + ' №' + Mas1[i].Number;
               ISheet.Cells.Item[R,4]:=Station;
               ISheet.Cells.Item[R,5]:=Copy(Mas1[i].Cause1,0,Pos('  ',Mas1[i].Cause1));
               ISheet.Cells.Item[R,6]:=Mas1[i].NumberPrib;
               ISheet.Cells.Item[R,7]:=Mas1[i].Made;
                if Copy(Mas1[i].PribChecked,0,8) <> '01.01.01' then
                 ISheet.Cells.Item[R,8]:=Copy(Mas1[i].PribChecked,0,8) else
                 ISheet.Cells.Item[R,8]:='';
               ISheet.Cells.Item[R,9]:=GetCause;
                C1:=StrToInt(Mas1[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[1,C1]:=DataMas[1,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[1,14]:=DataMas[1,14]+1;
                DataMas[31,C1]:=DataMas[31,C1]+1;
                DataMas[31,14]:=DataMas[31,14]+1;
          end;
      end;  //for i:=0 to high(Mas1)

    for i:=0 to high(Mas2) do
     if Mas2[i].Slujba = 'Ш' then
      begin
        if Mas2[i].Element = 'Сигнали                  ' then
          if Mas2[i].Cause2 = 'Перегорання свiтлофорної лампи                    ' then
            begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[24,C1]:=DataMas[24,C1]+1;
                DataMas[24,14]:=DataMas[24,14]+1;
            end;

        if Mas2[i].Element = 'Двигуни                  ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[22,C1]:=DataMas[22,C1]+1;
                DataMas[22,14]:=DataMas[22,14]+1;
          end;

        if Mas2[i].Element = 'Прилади                  ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[20,C1]:=DataMas[20,C1]+1;
                DataMas[20,14]:=DataMas[20,14]+1;
          end;

        if Mas2[i].Element = 'Прилади захисту          ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[26,C1]:=DataMas[26,C1]+1;
                DataMas[26,14]:=DataMas[26,14]+1;
          end;

        if Mas2[i].Element = 'Установчi вироби         ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[34,C1]:=DataMas[34,C1]+1;
                DataMas[34,14]:=DataMas[34,14]+1;
          end;

        if Mas2[i].Element = 'Запобiжники              ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[28,C1]:=DataMas[28,C1]+1;
                DataMas[28,14]:=DataMas[28,14]+1;
          end;

        if Mas2[i].Element = 'Випрямлячi               ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[30,C1]:=DataMas[30,C1]+1;
                DataMas[30,14]:=DataMas[30,14]+1;
          end;

        if Mas2[i].Element = 'Трансформатори           ' then
          begin
               R1:=GetR1;
                C1:=StrToInt(Mas2[i].SH);
                 if C1 > 9 then dec(C1);
                DataMas[R1,C1]:=DataMas[R1,C1]+1;
                DataMas[2,C1]:=DataMas[2,C1]+1;
                DataMas[R1,14]:=DataMas[R1,14]+1;
                DataMas[2,14]:=DataMas[2,14]+1;
                DataMas[32,C1]:=DataMas[32,C1]+1;
                DataMas[32,14]:=DataMas[32,14]+1;
          end;
      end;  //for i:=0 to high(Mas2)

      ValueArray:=VarArrayCreate([1,18,1,14],varVariant);
       for R:=1 to 18 do for C:=1 to 14 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
        ISheet:=IWorkBook.WorkSheets.Item['7'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,1].Value:=Period;    //Date
        ISheet.Cells.Item[10,1].Value:=IntToStr(Y1);    //Date
        ISheet.Cells.Item[11,1].Value:=IntToStr(Y);     //Date

         IRange:=ISheet.Range['prib2',EmptyParam];
          IRange.Value:=ValueArray;

      ValueArray:=VarArrayCreate([1,16,1,14],varVariant);
       for R:=1 to 16 do for C:=1 to 14 do
        if DataMas[R+18,C] <> 0 then ValueArray[R,C]:=DataMas[R+18,C]
                                else ValueArray[R,C]:='';
        ISheet:=IWorkBook.WorkSheets.Item['7'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,1].Value:=Period;    //Date
         IRange:=ISheet.Range['prib3',EmptyParam];
          IRange.Value:=ValueArray;

      ValueArray:=VarArrayCreate([1,2,1,13],varVariant);
       for R:=1 to 2 do for C:=1 to 13 do
        if DataMas[R,C] <> 0 then ValueArray[R,C]:=DataMas[R,C]
                             else ValueArray[R,C]:='';
        ISheet:=IWorkBook.WorkSheets.Item['7'] as Excel97.ExcelWorkSheet;
        ISheet.Cells.Item[2,1].Value:=Period;    //Date
         IRange:=ISheet.Range['prib1',EmptyParam];
          IRange.Value:=ValueArray;

       finally
        IRange:=nil;
        ISheet:=nil;
        IWorkBook:=nil;
       end;
     end;
  finally
  ShowExcel;
  ReleaseExcel;
  end;
 end; //if CheckBox4 checked
//****** Кінець довідки про прилади ******


 Screen.Cursor := SaveCursor;
  Mas1:=nil;
  Mas2:=nil;
  Train1:=nil;
  Train2:=nil;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
if FileExists('c:\scb\reports\dovidka1.xls') = false then
    begin
     CheckBox1.Checked:=false;
     CheckBox1.Enabled:=false;
     ShowMessage('Не існує файл: c:\Scb\Reports\Dovidka1.xls');
    end;
if FileExists('c:\scb\reports\slujba.xls') = false then
    begin
     CheckBox2.Checked:=false;
     CheckBox2.Enabled:=false;
     ShowMessage('Не існує файл: c:\Scb\Reports\Slujba.xls');
    end;
if FileExists('c:\scb\reports\UkrZal.xls') = false then
    begin
     CheckBox3.Checked:=false;
     CheckBox3.Enabled:=false;
     ShowMessage('Не існує файл: c:\Scb\Reports\UkrZal.xls');
    end;
if FileExists('c:\scb\reports\Prilad.xls') = false then
    begin
     CheckBox4.Checked:=false;
     CheckBox4.Enabled:=false;
     ShowMessage('Не існує файл: c:\Scb\Reports\Prilad.xls');
    end;
end;

end.
