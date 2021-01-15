unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ComCtrls, Menus, ExtCtrls, ToolWin, Buttons, DBCtrls;

type
  TForm3 = class(TForm)
    Label2: TLabel;
    Label53: TLabel;
    Edit17: TEdit;
    Label54: TLabel;
    ToolBar2: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DateTimePicker4: TDateTimePicker;
    DBNavigator1: TDBNavigator;
    ToolButton18: TToolButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N14: TMenuItem;
    N23: TMenuItem;
    N110: TMenuItem;
    N14001: TMenuItem;
    N15001: TMenuItem;
    N114001: TMenuItem;
    N118001: TMenuItem;
    N120001: TMenuItem;
    N170001: TMenuItem;
    N111: TMenuItem;
    N1101: TMenuItem;
    N1111: TMenuItem;
    N1201: TMenuItem;
    N1221: TMenuItem;
    N11801: TMenuItem;
    N13601: TMenuItem;
    N15601: TMenuItem;
    N17001: TMenuItem;
    N17501: TMenuItem;
    N111201: TMenuItem;
    N114002: TMenuItem;
    N115001: TMenuItem;
    N110005601: TMenuItem;
    N111007001: TMenuItem;
    N113007501: TMenuItem;
    N210: TMenuItem;
    N29001: TMenuItem;
    N212001: TMenuItem;
    N240001: TMenuItem;
    N211: TMenuItem;
    N2151: TMenuItem;
    N2171: TMenuItem;
    N23201: TMenuItem;
    N23501: TMenuItem;
    N26401: TMenuItem;
    N27001: TMenuItem;
    N215001: TMenuItem;
    N217501: TMenuItem;
    N230001: TMenuItem;
    N235001: TMenuItem;
    N21015001: TMenuItem;
    N21017501: TMenuItem;
    N21115001: TMenuItem;
    N32: TMenuItem;
    N32504001: TMenuItem;
    N34604001: TMenuItem;
    N35504001: TMenuItem;
    N41: TMenuItem;
    N431: TMenuItem;
    N4341: TMenuItem;
    N45301: TMenuItem;
    N46001: TMenuItem;
    N47201: TMenuItem;
    N424001: TMenuItem;
    N430001: TMenuItem;
    N42: TMenuItem;
    N42501: TMenuItem;
    N42801: TMenuItem;
    N45001: TMenuItem;
    N45801: TMenuItem;
    N410011001: TMenuItem;
    N410013001: TMenuItem;
    N410510001: TMenuItem;
    N24: TMenuItem;
    N221: TMenuItem;
    N2371: TMenuItem;
    N2401: TMenuItem;
    N25201: TMenuItem;
    N27002: TMenuItem;
    N212301: TMenuItem;
    N216001: TMenuItem;
    N33: TMenuItem;
    N23101: TMenuItem;
    N23801: TMenuItem;
    N26201: TMenuItem;
    N27601: TMenuItem;
    N34: TMenuItem;
    N516001: TMenuItem;
    N25: TMenuItem;
    N1400301: TMenuItem;
    N18001: TMenuItem;
    N120002: TMenuItem;
    N1200301: TMenuItem;
    N12004001: TMenuItem;
    N35: TMenuItem;
    N222: TMenuItem;
    N2402: TMenuItem;
    N24001: TMenuItem;
    N26: TMenuItem;
    N121: TMenuItem;
    N1401: TMenuItem;
    N11101: TMenuItem;
    N11871: TMenuItem;
    N13752001: TMenuItem;
    N14002: TMenuItem;
    N17502: TMenuItem;
    N36: TMenuItem;
    N223: TMenuItem;
    N2403: TMenuItem;
    N24501: TMenuItem;
    N245011: TMenuItem;
    N2450601: TMenuItem;
    N250011: TMenuItem;
    N29002: TMenuItem;
    N210001: TMenuItem;
    N210002: TMenuItem;
    N26010001: TMenuItem;
    N220001: TMenuItem;
    N2100100001: TMenuItem;
    N2330001: TMenuItem;
    N2640001: TMenuItem;
    N27: TMenuItem;
    N1681: TMenuItem;
    N14003: TMenuItem;
    N116001: TMenuItem;
    N38: TMenuItem;
    N152001: TMenuItem;
    N1102: TMenuItem;
    N11601: TMenuItem;
    N16001: TMenuItem;
    N37: TMenuItem;
    N224001: TMenuItem;
    N210003: TMenuItem;
    N28: TMenuItem;
    N20001: TMenuItem;
    N3101: TMenuItem;
    N3801: TMenuItem;
    N18002: TMenuItem;
    N14004: TMenuItem;
    N17503: TMenuItem;
    N212: TMenuItem;
    N29: TMenuItem;
    N29009001: TMenuItem;
    N2100010001: TMenuItem;
    N224002: TMenuItem;
    N12001: TMenuItem;
    N18003: TMenuItem;
    N111001: TMenuItem;
    N12501: TMenuItem;
    N110001: TMenuItem;
    N119501: TMenuItem;
    N220002: TMenuItem;
    N245012: TMenuItem;
    N30: TMenuItem;
    N2001: TMenuItem;
    N9001: TMenuItem;
    N10001: TMenuItem;
    N24002: TMenuItem;
    N28001: TMenuItem;
    N211001: TMenuItem;
    N3022201: TMenuItem;
    N3022501: TMenuItem;
    N12502: TMenuItem;
    N11501: TMenuItem;
    N21501: TMenuItem;
    N21503001: TMenuItem;
    N41503001: TMenuItem;
    N31: TMenuItem;
    N4410001: TMenuItem;
    N4440001: TMenuItem;
    N4490001: TMenuItem;
    N4430001: TMenuItem;
    N8820001: TMenuItem;
    N8890001: TMenuItem;
    N887501: TMenuItem;
    N8815001: TMenuItem;
    N8890002: TMenuItem;
    N15: TMenuItem;
    N1501501: TMenuItem;
    N1501502: TMenuItem;
    N1501503: TMenuItem;
    N1402: TMenuItem;
    N31401: TMenuItem;
    N350001: TMenuItem;
    N3145045001: TMenuItem;
    N3270045001: TMenuItem;
    N34022001: TMenuItem;
    N360013001: TMenuItem;
    N16: TMenuItem;
    N4501: TMenuItem;
    N7501: TMenuItem;
    N30001: TMenuItem;
    N1403: TMenuItem;
    N1801: TMenuItem;
    N12801: TMenuItem;
    N14005: TMenuItem;
    N16002: TMenuItem;
    N18004: TMenuItem;
    N110002: TMenuItem;
    N14006: TMenuItem;
    N12503: TMenuItem;
    N11001: TMenuItem;
    N41601: TMenuItem;
    N53201: TMenuItem;
    N122: TMenuItem;
    N1241: TMenuItem;
    N1601: TMenuItem;
    N16003: TMenuItem;
    N110003: TMenuItem;
    N24003: TMenuItem;
    N26001: TMenuItem;
    N3241: TMenuItem;
    N110004: TMenuItem;
    N12701: TMenuItem;
    N21040061: TMenuItem;
    N328001: TMenuItem;
    N17: TMenuItem;
    N10151: TMenuItem;
    N1031: TMenuItem;
    N123: TMenuItem;
    N117001: TMenuItem;
    N1103: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N10152: TMenuItem;
    N1032: TMenuItem;
    N130001: TMenuItem;
    N1104: TMenuItem;
    N51101: TMenuItem;
    N518001: TMenuItem;
    N535001: TMenuItem;
    N580001: TMenuItem;
    N5741401: TMenuItem;
    N18: TMenuItem;
    N112: TMenuItem;
    N2372: TMenuItem;
    N2404: TMenuItem;
    N213: TMenuItem;
    N21800451: TMenuItem;
    N24000851: TMenuItem;
    N113: TMenuItem;
    N2881: TMenuItem;
    N19: TMenuItem;
    N43: TMenuItem;
    N21102201: TMenuItem;
    N214401: TMenuItem;
    N218001: TMenuItem;
    N241: TMenuItem;
    N1101271: TMenuItem;
    N2201: TMenuItem;
    N2121: TMenuItem;
    N2241: TMenuItem;
    N21101: TMenuItem;
    N22201: TMenuItem;
    N2122: TMenuItem;
    N2242: TMenuItem;
    N21102: TMenuItem;
    N22202: TMenuItem;
    N114: TMenuItem;
    N91: TMenuItem;
    N1105: TMenuItem;
    N2202: TMenuItem;
    N242: TMenuItem;
    N1106: TMenuItem;
    N1271: TMenuItem;
    N2203: TMenuItem;
    N243: TMenuItem;
    N1107: TMenuItem;
    N1272: TMenuItem;
    N2204: TMenuItem;
    N20: TMenuItem;
    N1651: TMenuItem;
    N651: TMenuItem;
    N120003: TMenuItem;
    N20002: TMenuItem;
    N310: TMenuItem;
    N311: TMenuItem;
    N312: TMenuItem;
    N20003: TMenuItem;
    N20004: TMenuItem;
    N20005: TMenuItem;
    N244: TMenuItem;
    N44: TMenuItem;
    N21: TMenuItem;
    N124: TMenuItem;
    N131: TMenuItem;
    N132: TMenuItem;
    N151: TMenuItem;
    N161: TMenuItem;
    N22: TMenuItem;
    N45: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N214: TMenuItem;
    N313: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N314: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N315: TMenuItem;
    N52: TMenuItem;
    N62: TMenuItem;
    N316: TMenuItem;
    N119: TMenuItem;
    N317: TMenuItem;
    N53: TMenuItem;
    N1110: TMenuItem;
    N46: TMenuItem;
    N120: TMenuItem;
    N125: TMenuItem;
    N318: TMenuItem;
    N54: TMenuItem;
    N63: TMenuItem;
    N126: TMenuItem;
    N127: TMenuItem;
    N319: TMenuItem;
    N55: TMenuItem;
    N64: TMenuItem;
    N2: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N320: TMenuItem;
    N215: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N3: TMenuItem;
    N50: TMenuItem;
    N60: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N652: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N621: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N622: TMenuItem;
    N623: TMenuItem;
    N653: TMenuItem;
    N624: TMenuItem;
    N654: TMenuItem;
    N691: TMenuItem;
    N761: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N1108: TMenuItem;
    N1109: TMenuItem;
    N2205: TMenuItem;
    N2206: TMenuItem;
    N692: TMenuItem;
    N65: TMenuItem;
    N130: TMenuItem;
    N133: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N693: TMenuItem;
    N78: TMenuItem;
    N021: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N56: TMenuItem;
    N81: TMenuItem;
    N216: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N57: TMenuItem;
    N625: TMenuItem;
    N671: TMenuItem;
    N672: TMenuItem;
    IV661: TMenuItem;
    V621: TMenuItem;
    VI621: TMenuItem;
    VII621: TMenuItem;
    VIII621: TMenuItem;
    IX621: TMenuItem;
    N626: TMenuItem;
    N627: TMenuItem;
    N628: TMenuItem;
    N629: TMenuItem;
    N6210: TMenuItem;
    N661: TMenuItem;
    N762: TMenuItem;
    N763: TMenuItem;
    N58: TMenuItem;
    N90: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N751: TMenuItem;
    N59: TMenuItem;
    N711: TMenuItem;
    N721: TMenuItem;
    N722: TMenuItem;
    N134: TMenuItem;
    N217: TMenuItem;
    N321: TMenuItem;
    N21781: TMenuItem;
    N21782: TMenuItem;
    N21783: TMenuItem;
    N21784: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N135: TMenuItem;
    N4: TMenuItem;
    N109: TMenuItem;
    N136: TMenuItem;
    N218: TMenuItem;
    N137: TMenuItem;
    N219: TMenuItem;
    N138: TMenuItem;
    N220: TMenuItem;
    N139: TMenuItem;
    N5: TMenuItem;
    N140: TMenuItem;
    N410: TMenuItem;
    N411: TMenuItem;
    N510: TMenuItem;
    N610: TMenuItem;
    N710: TMenuItem;
    N764: TMenuItem;
    N141: TMenuItem;
    N801: TMenuItem;
    N1202: TMenuItem;
    N142: TMenuItem;
    N1210: TMenuItem;
    N224: TMenuItem;
    N412: TMenuItem;
    N611: TMenuItem;
    N612: TMenuItem;
    N31100001: TMenuItem;
    N31200001: TMenuItem;
    N6: TMenuItem;
    N143: TMenuItem;
    N225: TMenuItem;
    N511: TMenuItem;
    N712: TMenuItem;
    N512: TMenuItem;
    N713: TMenuItem;
    N1310: TMenuItem;
    N5151: TMenuItem;
    N7151: TMenuItem;
    N13151: TMenuItem;
    N144: TMenuItem;
    N7: TMenuItem;
    N50251001: TMenuItem;
    N50251501: TMenuItem;
    N50253001: TMenuItem;
    N50256001: TMenuItem;
    N322: TMenuItem;
    N051: TMenuItem;
    N052: TMenuItem;
    N053: TMenuItem;
    N145: TMenuItem;
    N146: TMenuItem;
    N171: TMenuItem;
    N3001: TMenuItem;
    N501: TMenuItem;
    N8: TMenuItem;
    N147: TMenuItem;
    N148: TMenuItem;
    N149: TMenuItem;
    N150: TMenuItem;
    N152: TMenuItem;
    N226: TMenuItem;
    N201: TMenuItem;
    N153: TMenuItem;
    N154: TMenuItem;
    N155: TMenuItem;
    N156: TMenuItem;
    N157: TMenuItem;
    N158: TMenuItem;
    N159: TMenuItem;
    N752: TMenuItem;
    N753: TMenuItem;
    N160: TMenuItem;
    N162: TMenuItem;
    N163: TMenuItem;
    N164: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N165: TMenuItem;
    N166: TMenuItem;
    N167: TMenuItem;
    N168: TMenuItem;
    N169: TMenuItem;
    N170: TMenuItem;
    N227: TMenuItem;
    N413: TMenuItem;
    N172: TMenuItem;
    N173: TMenuItem;
    N174: TMenuItem;
    N175: TMenuItem;
    N176: TMenuItem;
    N177: TMenuItem;
    N323: TMenuItem;
    N178: TMenuItem;
    N179: TMenuItem;
    N180: TMenuItem;
    N181: TMenuItem;
    N182: TMenuItem;
    N183: TMenuItem;
    N184: TMenuItem;
    N14151: TMenuItem;
    N66417921: TMenuItem;
    N11: TMenuItem;
    N513: TMenuItem;
    N613: TMenuItem;
    N185: TMenuItem;
    N324: TMenuItem;
    N2161: TMenuItem;
    N514: TMenuItem;
    N228: TMenuItem;
    N229: TMenuItem;
    N1112: TMenuItem;
    N230: TMenuItem;
    N231: TMenuItem;
    N186: TMenuItem;
    N187: TMenuItem;
    N12: TMenuItem;
    N89111: TMenuItem;
    N1114151: TMenuItem;
    N89112: TMenuItem;
    N1114152: TMenuItem;
    N881: TMenuItem;
    N8121: TMenuItem;
    N981: TMenuItem;
    N9121: TMenuItem;
    N1181: TMenuItem;
    N11121: TMenuItem;
    N188: TMenuItem;
    N13: TMenuItem;
    N189: TMenuItem;
    N190: TMenuItem;
    N191: TMenuItem;
    N561: TMenuItem;
    N232: TMenuItem;
    N882: TMenuItem;
    N192: TMenuItem;
    N193: TMenuItem;
    N194: TMenuItem;
    N195: TMenuItem;
    N591: TMenuItem;
    N196: TMenuItem;
    N197: TMenuItem;
    PopupMenu2: TPopupMenu;
    N198: TMenuItem;
    N2501: TMenuItem;
    N2502: TMenuItem;
    N5001: TMenuItem;
    N0661: TMenuItem;
    N3501: TMenuItem;
    N6001: TMenuItem;
    N6002: TMenuItem;
    N199: TMenuItem;
    N2207: TMenuItem;
    N2208: TMenuItem;
    N11010: TMenuItem;
    N1010: TMenuItem;
    N204: TMenuItem;
    N205: TMenuItem;
    N200: TMenuItem;
    N202: TMenuItem;
    N206: TMenuItem;
    N1100: TMenuItem;
    N233: TMenuItem;
    N203: TMenuItem;
    N325: TMenuItem;
    N515: TMenuItem;
    N754: TMenuItem;
    N1011: TMenuItem;
    N1510: TMenuItem;
    PopupMenu3: TPopupMenu;
    N207: TMenuItem;
    DateTimePicker12: TDateTimePicker;
    Label55: TLabel;
    Label56: TLabel;
    Label61: TLabel;
    MaskEdit9: TMaskEdit;
    MaskEdit8: TMaskEdit;
    Button1: TButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    Label57: TLabel;
    Label58: TLabel;
    Edit20: TEdit;
    ComboBox4: TComboBox;
    Label60: TLabel;
    Label59: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    DateTimePicker1: TDateTimePicker;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Label6: TLabel;
    Label64: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    ComboBox5: TComboBox;
    ComboBox7: TComboBox;
    Label62: TLabel;
    Label63: TLabel;
    ComboBox8: TComboBox;
    SpeedButton3: TBitBtn;
    ListBox1: TListBox;
    Edit1: TEdit;
    Bevel7: TBevel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Edit29: TEdit;
    Edit28: TEdit;
    Edit27: TEdit;
    Edit26: TEdit;
    Label65: TLabel;
    Label74: TLabel;
    Bevel9: TBevel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label83: TLabel;
    ComboBox1: TComboBox;
    Memo5: TMemo;
    Label81: TLabel;
    Label7: TLabel;
    DateTimePicker13: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Memo3: TMemo;
    Label1: TLabel;
    Label70: TLabel;
    Edit30: TEdit;
    Edit31: TEdit;
    Bevel8: TBevel;
    Edit32: TEdit;
    Label80: TLabel;
    Label79: TLabel;
    Label78: TLabel;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    Label73: TLabel;
    Label72: TLabel;
    Label71: TLabel;
    ComboBox13: TComboBox;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Label8: TLabel;
    ComboBox11: TComboBox;
    Label11: TLabel;
    Memo1: TMemo;
    Label12: TLabel;
    Label13: TLabel;
    Bevel1: TBevel;
    N208: TMenuItem;
    N209: TMenuItem;
    N234: TMenuItem;
    N235: TMenuItem;
    Timer1: TTimer;
    N2209: TMenuItem;
    N901: TMenuItem;
    N22010: TMenuItem;
    ComboBox6: TComboBox;
    procedure ToolButton18Click(Sender: TObject);
    procedure ComboBox4Exit(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ComboBox8Exit(Sender: TObject);
    procedure ListBox1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MaskEdit8Exit(Sender: TObject);
    procedure MaskEdit9Exit(Sender: TObject);
    procedure DateTimePicker13Exit(Sender: TObject);
    procedure DateTimePicker12Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker12Change(Sender: TObject);
    procedure MaskEdit10Exit(Sender: TObject);
    procedure MaskEdit11Exit(Sender: TObject);
    procedure Edit26Exit(Sender: TObject);
    procedure Edit27Exit(Sender: TObject);
    procedure Edit28Exit(Sender: TObject);
    procedure Edit29Exit(Sender: TObject);
    procedure Edit30Exit(Sender: TObject);
    procedure Edit31Exit(Sender: TObject);
    procedure Edit32Exit(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit30Change(Sender: TObject);
    procedure Edit31Change(Sender: TObject);
    procedure Edit32Change(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox6Exit(Sender: TObject);
    procedure ComboBox5Exit(Sender: TObject);
    procedure MaskEdit5Exit(Sender: TObject);
    procedure MaskEdit6Exit(Sender: TObject);
    procedure MaskEdit7Exit(Sender: TObject);
    procedure N207Click(Sender: TObject);
    procedure PopUpClick(Sender: TObject);
    procedure ComboBox7Exit(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure DTP4Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox10Exit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure ComboBox9Exit(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure MaskEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit32KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit17DblClick(Sender: TObject);
    procedure Edit17Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure N208Click(Sender: TObject);
    procedure N209Click(Sender: TObject);
    procedure N235Click(Sender: TObject);
    procedure ComboBox10Change(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox13KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N234Click(Sender: TObject);
    procedure Texts;
    procedure InsertData(const i:integer);
    procedure ToolBar2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit26KeyPress(Sender: TObject; var Key: Char);
    procedure Edit27KeyPress(Sender: TObject; var Key: Char);
    procedure Edit28KeyPress(Sender: TObject; var Key: Char);
    procedure Edit29KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox8Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

type TVidpovidnist = packed array[0..20] of boolean;   //для перевірки на відповідність появлення і елементу

type TOtkazRecord = packed record
      ID:string;
      Number:string;
      DateBegin:string; //[17]
      DateEnd:string;
      ExDateBegin:string;
      ExDateEnd:string;
      Trivalist:string;
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
      Proizd:string;
      WOProizd:string;
      Priglasit:string;
      Closed:string;
      Pasajir:string;
      Primiskih:string;
      Vantajnih:string;
      TimePas:string;
      TimePrim:string;
      TimeVant:string;
      Incident:string[1];
      PrimIncid:string[50];
      PrimClosed:string[50];
      NumberPrib:string;
      Made:string;
      PribChecked:string; //[8]
      NumberElem:string[50];
      Primitka:ansistring;
      Texts1:ansistring;
      Modified:boolean;
                           end; //record

type TOtkazMas = array of TOtkazRecord;

var
  Form3: TForm3;
  Element:integer = 0;  //номер елементу для визначення послід. вибору Лист-боксов
  Vidp:TVidpovidnist;   //масив з номерами елементів ComboBox8
  Zakr:boolean;          //закриття
  Brak:boolean;          //брак
  Modify:boolean;
  CorrectData:boolean = true;       //правильність вводу
  MyMessage:string;
  OtkazMas:TotkazMas;    //масив відмов
  CurrentNumber:integer; //номер запису з яким іде робота
  Pribor:string;         //наименование прибора
                      //text constants
  List1,List2,List3,List4,List5,List6,List7,List10:Tstrings;
  List11,List12,List13,List14,List16,List17,List18,List19,List20:Tstrings;
  List21,List22,List23,List24,List25,List26,List27,List28,List29,List30:Tstrings;
  List31,List32,List33,List34,List35,List36,List37,List38,List39,List40:Tstrings;
  List41,List42,List43,List44,List45,List46,List47,List48,List49,List50:Tstrings;
  List51,List52,List53,List54,List55,List56,List57,List58,List59,List60:Tstrings;
  List61,List62,List63,List64,List65,List66,List67,List68,List69,List70:Tstrings;
  List71,List72,List73,List74,List75,List76,List80:Tstrings;
  List81,List82,List83,List84,List85,List86,List87,List88,List89,List90:Tstrings;
  List91,List92,List93,List94,ListE,ListD,ListPH,ListV:Tstrings;
  ListSH1,ListSH2,ListSH3,ListSH4,ListSH5,ListSH6,ListSH7:Tstrings;
  ListSH8,ListSH10,ListSH11,ListSH12,ListSH13,ListSH14:Tstrings;


implementation

uses Unit2,Unit1;

{$R *.DFM}

//************************* Program *****************************

//*********************** Initialize ****************************
procedure TForm3.FormCreate(Sender: TObject);
begin
if (Screen.Width > 800) and (Screen.Height > 600) then Form3.Position:=poScreenCenter;
DateTimePicker4.Date:=Date;       //Form.Show??
 KeyPreview:=true;
   ListPH:=TStringList.Create;
//*****************************************************
   List1:=TStringList.Create;
         with List1 do begin
          Add('Горіння сигналу червоним вогнем');
          Add('Погашений стан сигналу');
          Add('Неможливість зміни напрямку');
          Add('Більш дозволяюче показання сигналу');
          Add('Не відкр. вих. сигн. на без сигн. перегін');
          Add('Перекриття сигналу');
          Add('Несправжня зайнятість блок-ділянки');
          Add('Нерозвернення с.т. при зміні напрямку');
          Add('Самовільне розвернення сигн. точки');
          Add('Менш дозволяюче показання сигналу');
          Add('Несправжня вільність рейкового кола');
          Add('Несправжня занятість перегону ');
                       end;
//******************************************************
        List2:=TStringList.Create;
         with List2 do begin
          Add('Невідповідність ступеня гальмування');
          Add('Неможливість автоматичного розпуску');
          Add('Неможливість встановлення маршруту');
          Add('Неможливіть переведення стрілки');
          Add('Самовільне переведення стрілки');
          Add('Несправжня зайнятість р.к.');
          Add('Несправжня вільність р.к.');
          Add('Невірне показання гіркового світлофора');
          Add('Погашений стан гіркового світлофора');
                        end;
//********************************************************
        List3:=TStringList.Create;
         with List3 do begin
          Add('Несправжня занятість р.к.');
          Add('Втрата контролю стрілки на пульті');
          Add('Неможливість переводу стрілки');
          Add('Перекриття сигналу');
          Add('Погашений стан сигналу');
          Add('Неможливість відкриття сигналу');
          Add('Неможливість задання маршруту');
          Add('Неможливість відміни маршруту');
          Add('Неможливість оброблення маршруту');
          Add('Більш дозволяюче показання сигналу');
          Add('Менш дозволяюче показання сигналу');
          Add('Невірний контроль стрілки на пульті');
          Add('Самовільне переведення стілки');
          Add('Несправжня вільність р.к.');
                       end;
//***********************************************
        List4:=TStringList.Create;
         with List4 do begin
          Add('Непроходження сигналів управління');
          Add('Непроходження сповіщальних сигналів');
          Add('Неможливість встановлння маршруту');
          Add('Неможливість відміни маршруту');
          Add('Неможливість оброблення маршруту');
          Add('Неможливість відкриття сигналу');
          Add('Невірна індикація на пульт-табло');
          Add('Неможливість передачі на місцеве упр.');
                       end;
//****************************************************
        List5:=TStringList.Create;
         with List5 do begin
          Add('Неможливість подачі/отримання блок сигналів');
          Add('Неможливість відкриття сигналу');
          Add('Неможливість закриття сигнлу');
          Add('Самовільне отримання блок-сигналів');
          Add('Перекриття сигналу');
          Add('Погашений стан сигналу');
          Add('Несправжня занятість р.к.');
          Add('Несправжня вільність р.к.');
          Add('Самовільне відкриття сигналу');
                       end;
//*******************************************************
        List6:=TStringList.Create;
         with List6 do begin
          Add('Неможливість задання маршруту');
          Add('Неможливість оброблення маршруту');
          Add('Неможливість відкриття сигналу');
          Add('Неможливість переведення стрілки');
          Add('Перекриття вхідного сигналу');
          Add('Перекриття вихідного сигналу');
          Add('Втрата контролю на пульті');
          Add('Невірний контроль на пульті');
          Add('Несправжня занятість р.к.');
          Add('Несправжня вільність р.к.');
          Add('Самовільне відкриття сигналу');
                         end;
//*****************************************************
        List7:=TStringList.Create;
         with List7 do begin
          Add('Пошкодженння бруса шлагбаума');
          Add('Неможливість відкриття шлагбаума');
          Add('Неможливість закриття шлагбаума');
          Add('Неможливість включення загор. сигналу');
          Add('Неможливість вимкнення загор. сигналу');
          Add('Відсутність звукової сигналізації');
          Add('Погашений стан переїздного світлофора');
                        end;
//*******************************************************
        List10:=TStringList.Create;
         with List10 do begin
          Add('Втрата контакту в автоперемикачi');
          Add('Заклинювання шибера');
          Add('Несправнiсть механiчної передачi');
          Add('Порушення контакту блок. пристрою');
          Add('Несправнiсть контрольних лiнiйок');
          Add('Несправнiсть монтажу');
                         end;
//**********************************************
        List11:=TStringList.Create;
         with List11 do begin
          Add('СП-2');
          Add('СП-2Р');
          Add('СП-3');
          Add('СП-3P');
          Add('СП-6');
          Add('СП-6M');
          Add('СПГ');
          Add('СПГБ');
          Add('СП-6Т');
          Add('Привод автошлагбаума');
                        end;
//********************************
        List12:=TStringList.Create;
         with List12 do begin
          Add('Розрегулювання контактiв');
          Add('Злам контактної колодки');
          Add('Злам контактних пружин');
          Add('Злам важеля автоперемикача');
          Add('Забруднення контактiв');
          Add('Iнiй на контактах');
          Add('Злам, роз’єднання пружини');
          Add('Пiдгорання контактiв');
                        end;
//*****************************************
        List13:=TStringList.Create;
         with List13 do begin
          Add('Контрольнi тяги');
          Add('Робочi тяги');
          Add('Замoк Мелентьєва');
          Add('Iншi елементи');

                        end;
//*********************************************
        List14:=TStringList.Create;
         with List14 do begin
          Add('Розрегулювання');
          Add('Злам деталей');
          Add('Деформацiя деталей');
          Add('Роз’єднання деталей');
          Add('Заклинювання деталей');
          Add('Вiдсутнiсть мастила');
                        end;
//************************************************
        List16:=TStringList.Create;
         with List16 do begin
          Add('MСП-0,1');
          Add('МСП-0,15');
          Add('МСП-0,25');
          Add('МСТ-0,25');
          Add('МСТ-0,3');
          Add('МСТ-0,6');
          Add('ДП-0,18');
          Add('ДП-0,25');
          Add('СЛ-571к');
                       end;
//*****************************************
        List17:=TStringList.Create;
         with List17 do begin
          Add('30 В');
          Add('100 В');
          Add('160 В');
                       end;
//***************************************
        List18:=TStringList.Create;
         with List18 do begin
          Add('Обрив проводу обмотки статора');
          Add('Замикання проводу обмотки статора');
          Add('Обрив виводiв обмотки статора');
          Add('Ослаблення крiплення деталей');
          Add('Зниження iзоляцiї обмотки статора');
          Add('Злам вала');
          Add('Несправнiсть пiдшипникiв');
                        end;
//******************************************
        List19:=TStringList.Create;
         with List19 do begin
          Add('Невiдповiднiсть номiналу');
          Add('Коротке замиканння електр. кола');
          Add('Пошкодження тяговым струмом');
          Add('Дефект матерiалу');
          Add('Неякiсна пайка');
          Add('Ослаблення крiплення');
          Add('Поломка вивода');
          Add('Пошкодження грозовими розрядами');
          Add('Окислення (ветхiсть)');
          Add('Неякiсне регулювання');
          Add('Перегорання при перемик. фiдерiв');
                         end;
//************************************************
        List20:=TStringList.Create;
         with List20 do begin
          Add('Стативи');
          Add('Релейнi шафи');
          Add('Польовi коробки');
                        end;
//*************************************************
        List21:=TStringList.Create;
         with List21 do begin
          Add('Р.к. на перегоні');
          Add('1-ша діл. наближення');
          Add('2-га діл. наближення');
          Add('1-ша діл. віддалення');
          Add('2-га діл. віддалення');
          Add('Р.к. на станції');
                        end;
//***************************************
        List22:=TStringList.Create;
         with List22 do begin
          Add('Мачтовий');
          Add('Карликовий');
          Add('Переїздний');
                         end;
//*****************************************
        List23:=TStringList.Create;
         with List23 do begin
          Add('Перегорання свiтлофорної лампи');
          Add('Порушення к-ту в лампотримачi');
          Add('Биття лiнз стороннiми особами');
          Add('Руйнування основи, щогли');
          Add('Несправнiсть монтажу');
          Add('Крадiжка, биття свiтлофорних ламп');
                        end;
//************************************************
        List24:=TStringList.Create;
         with List24 do begin
          Add('ЖС-12-15+15');
          Add('ЖС-12-25+25');
          Add('ЖС-12-15');
          Add('ЖС-12-25');
          Add('ЖС-12-35');
          Add('ЖС-10-5');
          Add('ЖС-10-10');
          Add('Не повiдомлено');
                        end;
//********************************
        List25:=TStringList.Create;
         with List25 do begin
          Add('Заводський дефект');
          Add('Ранiше нормативного строку');
          Add('Порушення строку замiни');
                        end;
//***************************************
        List26:=TStringList.Create;
         with List26 do begin
          Add('Обрив, вiдсутнiсть з’єднувачiв');
          Add('Порушення iзоляцiї');
          Add('Зниження опору iзоляцiї баласту');
          Add('Обрив тягов. i джемперн. перемичок');
          Add('Закорочування рейкового кола');
          Add('Вплив стороннiх джерел живлення');
          Add('Порушення регул. режиму персоналом');
          Add('Злам рейки');
          Add('Iншi пошкодження');
          Add('Неякiсне графiтне мастило');
          Add('Обрив бутлежних перемичок');
          Add('Несправнiсть ДТ-перемичок');
                        end;
//*******************************************
        List27:=TStringList.Create;
         with List27 do begin
          Add('Корозiя');
          Add('Пошкодження рухомим складом');
          Add('Пошкодження при колiйних роботах');
          Add('Неякiсне приварювання');
          Add('Неякiсне штепсельне з’єднання');
          Add('Нестандартний отвiр');
          Add('Угон рейки');
          Add('Крадiжка (пошкодження стороннiми)');
          Add('Вiдсутнiсть декiлькох з’єднувачiв');
                         end;
//****************************************************
        List28:=TStringList.Create;
         with List28 do begin
          Add('Стика');
          Add('Стрiлочної гарнiтури');
          Add('Стяжної смуги');
          Add('Серег');
          Add('Розпiрок хрестовини');
                        end;
//*************************************
        List29:=TStringList.Create;
         with List29 do begin
          Add('Згін iзостика');
          Add('Розтяжка iзостика');
          Add('Стружка, окалина');
          Add('Стороннi предмети');
          Add('Несправнiсть клеєболтового стика');
          Add('Угон рейки');
                         end;
//************************************
        List30:=TStringList.Create;
         with List30 do begin
          Add('Зволоження пiд час дощу');
          Add('Невиконання пiдрiзування баласту');
          Add('Попадання хiмiчних речовин');
                        end;
//*************************************
        List31:=TStringList.Create;
         with List31 do begin
          Add('З вини працiвникiв ШЧ');
          Add('При колiйних роботах');
          Add('При роботi енергетикiв');
          Add('Стороннiми особами');
          Add('Зниження iзоляцiї залiзобет. шпал');
          Add('Предметом, що впав з поїзда');
          Add('Пошкодження рухомим складом');
          Add('Несправнiсть настилiв на переїздi');
                        end;
//************************************
        List32:=TStringList.Create;
         with List32 do begin
          Add('Грозовi перенапруження');
          Add('При колiйних роботах');
          Add('При роботi енергетикiв');
          Add('Пошкодження тяговим струмом');
          Add('Електрохiмiчний ефект');
          Add('Iншi стороннi джерела');
                         end;
//*************************************
        List33:=TStringList.Create;
         with List33 do begin
          Add('Обрив проводу обмотки');
          Add('К.з. проводу обмотки');
          Add('Злам зовнiшнього вивода приладу');
          Add('Втрата контакту на зовн. виводi');
          Add('Сполучення зовнiшнiх виводiв');
          Add('Невiдповiднiсть номiнала обмотки');
          Add('Обрив монтажного проводу');
          Add('К.з. монтажних проводiв');
          Add('Сполучення монтажу з корпусом');
          Add('Сполучення струмопровiдних частин');
          Add('Помилка пiд час монтажу приладу');
          Add('Обрив (неякiсна пайка) лiтци');
                        end;
//*****************************************
        List34:=TStringList.Create;
         with List34 do begin
          Add('Обмотки, монтаж, виводи');
          Add('Контактна система');
          Add('Передавальна система');
          Add('Напiвпровiдниковi елементи');
          Add('Конденсатори');
          Add('Резистори');
                        end;
//*****************************************
        List35:=TStringList.Create;
         with List35 do begin
          Add('Злам контактної пружини');
          Add('Сполучення контактних пружин');
          Add('Зрiзання контактного наклепу');
          Add('Випадання контактного наклепу');
          Add('Втрата електр. кола на контактах');
          Add('Пiдгорання контактiв');
          Add('Ерозiя контактiв');
          Add('Зварювання контактiв');
          Add('Сполучення ел. кола з корпусом');
          Add('Втрата контакту в тримачi вугля');
          Add('Неякiсне регулювання контактiв');
          Add('Стороннiй предмет мiж контактами');
          Add('Втрата електричн. кола на виводi');
          Add('Пробiй мiжконтактної iзоляцiї');
                        end;
//********************************************
        List36:=TStringList.Create;
         with List36 do begin
          Add('Заклинювання якоря');
          Add('Невiдповiднiсть ходу якоря нормi');
          Add('Випадання антимагнiтного упора');
          Add('Невiдпов. висоти антимагн. упора');
          Add('Стороннiй предмет пiд якорем');
          Add('Зношення контактних тяг');
          Add('Випадання контактних тяг');
          Add('Роз’єднання контактiв i тяг');
          Add('Випадання осьових гвинтiв якоря');
          Add('Злам осьових гвинтiв якоря');
          Add('Примерзання якоря');
          Add('Заклинювання ротора КПТШ');
          Add('Несправнiсть мех. передачi КПТШ');
                        end;
//*********************************************
        List37:=TStringList.Create;
         with List37 do begin
          Add('Дiоди');
          Add('Транзистори');
          Add('Тиристори');
          Add('Оптрони');
          Add('Стабiлiтрони');
          Add('Селеновi випрямлячi');
          Add('Варистори');
                        end;
//****************************************
       List38:=TStringList.Create;
         with List38 do begin
          Add('Пробiй конденсатора');
          Add('Внутрiшнiй обрив конденсатора');
          Add('Зниження ємностi конденсатора');
          Add('Пiдвищ. струму витоку конденсатора');
          Add('Невiдпов. номiнала конденсатора');
          Add('Невiдповiднiсть типу конденсатора');
          Add('Злaм (обрив) вивода конденсатора');
                        end;
//************************************************
        List39:=TStringList.Create;
         with List39 do begin
          Add('Внутрiшнiй обрив резистора');
          Add('Згорання резистора');
          Add('Обрив провода резистора');
          Add('Втрата кола на повзунку резистора');
          Add('Втрата контакту провода резистора');
          Add('Невiдповiднiсть номiнала резистора');
          Add('Злам (обрив) вивода резистора');
                        end;
//*************************************************
        List40:=TStringList.Create;
         with List40 do begin
          Add('Пробiй p-n переходу');
          Add('Внутрiшнє обривання');
          Add('Змiна параметрiв');
          Add('Невiдповiднiсть типу');
          Add('Несправнiсть виводiв');
                        end;
//***********************************************
        List41:=TStringList.Create;
         with List41 do begin
          Add('Резистори');
          Add('Конденсатори');
          Add('Напiвпровiдниковi елементи');
          Add('Трансформатори і дроселi зв’язку');
                        end;
//***********************************************
        List42:=TStringList.Create;
         with List42 do begin
          Add('Внутрiшнiй обрив резистора');
          Add('Згорання резистора');
          Add('Обрив провода резистора');
          Add('Втрата контакту на повзуні резистора');
          Add('Втрата контакту провода резистора');
          Add('Невiдповiднiсть номiнала резистора');
          Add('Злам (обрив) вивода резистора');
                        end;
//*************************************************
        List43:=TStringList.Create;
         with List43 do begin
          Add('Дiоди');
          Add('Транзистори');
          Add('Тиристори');
          Add('Оптрони');
          Add('Стабiлiтрони');
          Add('Селеновi випрямлячi');
          Add('Варистори');
                         end;
//******************************************
        List44:=TStringList.Create;
         with List44 do begin
          Add('Пробiй p-n переходу');
          Add('Внутрiшнє обривання');
          Add('Змiна параметрiв');
          Add('Невiдповiднiсть типу');
          Add('Несправнiсть виводiв');
                         end;
//*********************************************
        List45:=TStringList.Create;
         with List45 do begin
          Add('Пробiй конденсатора');
          Add('Внутрiшнiй обрив конденсатора');
          Add('Зниження ємностi конденсатора');
          Add('Пiдвищ. струму витоку конденсатора');
          Add('Невiдпов. номiнала конденсатора');
          Add('Невiдповiднiсть типу конденсатора');
          Add('Злaм (обрив) вивода конденсатора');
                         end;
//********************************************************
        List46:=TStringList.Create;
         with List46 do begin
          Add('Обрив провода обмотки');
          Add('К.з. провода обмотки');
          Add('Злам (обрив) зовнiшнього вивода');
          Add('Сполучення обмоток мiж собою');
          Add('Сполучення обмотки з корпусом');
          Add('Згорання обмотки');
          Add('Зниження опору iзоляцiї');
                        end;
//**************************************************
        List47:=TStringList.Create;
         with List47 do begin
          Add('Стативи');
          Add('Релейнi шафи');
          Add('Польовi коробки');
                        end;
//**************************************************
        List48:=TStringList.Create;
         with List48 do begin
          Add('Обрив монтажного проводу');
          Add('К. з. монтажних проводiв');
          Add('Пошкодження iзоляцiї монтажу');
          Add('Злам жили кабеля на клемi');
          Add('Помилка в монтажi пристроїв');
          Add('Втрата контакту на клемi');
          Add('Втрата контакту в пайцi');
          Add('Втрата контакту на виводi');
          Add('Втрата контакту в штепс. розетцi');
          Add('Прогорання штепсельної розетки');
          Add('Втрата контакту в з’ємнiй платi');
          Add('Прогорання з’ємної плати');
          Add('Злам (прогорання) клемної колодки');
                          end;
//*****************************************************
        List49:=TStringList.Create;
         with List49 do begin
          Add('З контролем перегорання');
          Add('Без контролю перегорання');
          Add('Трубчастi');
                        end;
//**********************************************
        List50:=TStringList.Create;
         with List50 do begin
          Add('O,3 A');
          Add('O,5 A');
          Add('1 A');
          Add('2 A');
          Add('3 A');
          Add('5 A');
          Add('1O A');
          Add('15 A');
          Add('2O A');
          Add('25 A');
          Add('3O A');
          Add('5O A');
          Add('6O A');
          Add('1OO A');
                         end;
//********************************************
        List51:=TStringList.Create;
         with List51 do begin
          Add('Невiдповiднiсть номiналу');
          Add('Коротке замиканння електр. кола');
          Add('Пошкодження тяговым струмом');
          Add('Дефект матерiалу');
          Add('Неякiсна пайка');
          Add('Ослаблення крiплення');
          Add('Поломка вивода');
          Add('Пошкодження грозовими розрядами');
          Add('Окислення (ветхiсть)');
          Add('Неякiсне регулювання');
          Add('Перегорання при перемик. фiдерiв');
                        end;
//*****************************************************
        List52:=TStringList.Create;
         with List52 do begin
          Add('Пульт ЕЦ');
          Add('Пульт ДЦ');
          Add('Пульт гiрковий');
          Add('Апарат НАБ');
          Add('Апарат МКП');
          Add('Маневрова колонка');
          Add('Щиток переїзду');
          Add('Iншi апарати управл.');
                         end;
//*****************************************************
        List53:=TStringList.Create;
         with List53 do begin
          Add('Несправнiсть кнопок, комутаторiв');
          Add('Порушення електричних з’єднань');
          Add('Несправнiсть блок-механiзму');
          Add('Несправнiсть iндуктора');
          Add('Несправнiсть замка, ключа-жезла');
          Add('Несправнiсть лiчильника');
          Add('Перегорання ламп iндикацiї');
                         end;
//******************************************************
        List54:=TStringList.Create;
         with List54 do begin
          Add('Злам контактної пружини');
          Add('Сполучення контактних пружин');
          Add('Зрiзання контактного наклепу');
          Add('Випадання контактного наклепу');
          Add('Втрата електр. кола на контактах');
          Add('Пiдгорання контактiв');
          Add('Ерозiя контактiв');
          Add('Зварювання контактiв');
          Add('Сполучення ел. кола з корпусом');
          Add('Втрата контакту в тримачi вугля');
          Add('Неякiсне регулювання контактiв');
          Add('Стороннiй предмет мiж контактами');
          Add('Втрата електричн. кола на виводi');
          Add('Пробiй мiжконтактної iзоляцiї');
                         end;
//***************************************************
        List55:=TStringList.Create;
         with List55 do begin
          Add('Вагонний сповiльнювач');
          Add('Вимiрювач швидкостi');
          Add('Ваговимiрювач');
          Add('Фотоелектричний пристрiй');
          Add('Компресор');
          Add('Пневмопошта');
          Add('Iншi елементи');
                         end;
//**********************************************
        List56:=TStringList.Create;
         with List56 do begin
          Add('Розрегулювання');
          Add('Поломка деталей');
          Add('Деформацiя деталей');
          Add('Роз’єднання деталей');
          Add('Заклинювання деталей');
          Add('Вiдсутнiсть мастила');
          Add('Несправнiсть електричної схеми');
                         end;
//************************************************
        List57:=TStringList.Create;
         with List57 do begin
          Add('Акумулятори');
          Add('Щитовi живильнi установки');
          Add('Дизель-генераторнi агрегати ДГА');
                        end;
//*************************************************
        List58:=TStringList.Create;
         with List58 do begin
          Add('Типу АБН-72');
          Add('Типу АБН-8O');
          Add('Типу "C"');
          Add('Типу "Cк"');
          Add('Iншi типи');
                        end;
//**************************************************
        List59:=TStringList.Create;
         with List59 do begin
          Add('Cульфатацiя');
          Add('К.з. пластин');
          Add('Руйнування пластин');
          Add('Злам вивода');
                        end;
//*************************************************
        List60:=TStringList.Create;
         with List60 do begin
          Add('Панель ввiдна');
          Add('Панель випрямлячiв 24 В');
          Add('Панель випрямлячiв 220 В');
          Add('Панель релейна');
          Add('Панель ввiдно-розподiльча');
          Add('Панель перетворювачiв');
                        end;
//**************************************************
        List61:=TStringList.Create;
         with List61 do begin
          Add('Блок фазний');
          Add('Блок регулювання БАР');
          Add('Пакетники, кнопки');
          Add('Дросель');
          Add('Монтаж');
          Add('Контактор');
          Add('Резистори');
          Add('Напiвпровiдн.елементи');
          Add('Вимiрювальнi прилади');
          Add('Сигналiзатор');
                        end;
//*****************************************
        List62:=TStringList.Create;
         with List62 do begin
          Add('Неякiсне механiчне регулювання');
          Add('Неякiсне регулювання електр. параметрiв');
          Add('Порушення контакту в з’єднаннях');
          Add('Злам, деформация деталей');
          Add('Роз’єднання деталей');
          Add('Електричний пробiй');
          Add('Згорання');
          Add('Обрив');
          Add('Причина не повiдомлена');
                        end;
//**********************************************
        List63:=TStringList.Create;
         with List63 do begin
          Add('Обмотки, монтаж, виводи');
          Add('Контактна система');
          Add('Механічна передача');
          Add('Напівпровідникові елементи');
          Add('Конденсатори');
          Add('Резистори');
          Add('Інші елементи');
                        end;
//************************************************
        List64:=TStringList.Create;
         with List64 do begin
          Add('ВАК-13Б');
          Add('ВАК-14Б');
          Add('ВАК-16Б');
          Add('ВАК-11А');
          Add('ВАК-13А');
          Add('ВАК-14А');
          Add('ВАК-16А');
          Add('ВУС-1,3');
          Add('РТА');
          Add('БВС-88');
          Add('БДР');
          Add('БПШ');
          Add('БПСН');
          Add('ЗБУ-12/10');
          Add('ВСП-24/10');
          Add('БВ');
          Add('БВЗ');
          Add('БПЗ');
          Add('УЗА');
          Add('БП-12/2');
          Add('БП-24/2');
                        end;
//************************************
        List65:=TStringList.Create;
         with List65 do begin
          Add('Обрив проводу обмотки');
          Add('К.з. проводу обмотки');
          Add('Злам зовнiшнього вивода приладу');
          Add('Втрата контакту на зовн. виводi');
          Add('Сполучення зовнiшнiх виводiв');
          Add('Невiдповiднiсть номiнала обмотки');
          Add('Обрив монтажного проводу');
          Add('К.з. монтажних проводiв');
          Add('Сполучення монтажу з корпусом');
          Add('Сполучення струмопровiдних частин');
          Add('Помилка пiд час монтажу приладу');
          Add('Обрив (неякiсна пайка) лiтци');
                        end;
//************************************************
        List66:=TStringList.Create;
         with List66 do begin
          Add('Обмотки, монтаж, виводи');
          Add('Напiвпровiдниковi елементи');
          Add('Конденсатори');
          Add('Резистори');
                        end;
//*************************************************
        List67:=TStringList.Create;
         with List67 do begin
          Add('Внутрiшнiй обрив резистора');
          Add('Згорання резистора');
          Add('Обрив провода резистора');
          Add('Втрата кола на повзунку резистора');
          Add('Втрата контакту провода резистора');
          Add('Невiдповiднiсть номiнала резистора');
          Add('Злам (обрив) вивода резистора');
                        end;
//*******************************************************
        List68:=TStringList.Create;
         with List68 do begin
          Add('Дiоди');
          Add('Транзистори');
          Add('Тиристори');
          Add('Оптрони');
          Add('Стабiлiтрони');
          Add('Селеновi випрямлячi');
          Add('Варистори');
                        end;
//*****************************************
        List69:=TStringList.Create;
         with List69 do begin
          Add('Пробiй p-n переходу');
          Add('Внутрiшнє обривання');
          Add('Змiна параметрiв');
          Add('Невiдповiднiсть типу');
          Add('Несправнiсть виводiв');
                        end;
//*****************************************
        List70:=TStringList.Create;
         with List70 do begin
          Add('ОМ');
          Add('ТС');
          Add('ДТ');
          Add('ТОС');
          Add('ПОБС-2А');
          Add('ПОБС-3А');
          Add('ПОБС-5А');
          Add('ПРТ-А');
          Add('ПТ-25А');
          Add('ПТI');
          Add('ПОБС-2');
          Add('ПОБС-3');
          Add('ПОБС-5');
          Add('ПРТ-25');
          Add('ПТ-25');
          Add('ПТМ-А');
          Add('ПТМ');
          Add('СТ-2А');
          Add('СТ-3');
          Add('СТ-3А');
          Add('СТ-4');
          Add('СТ-5');
          Add('СТ-6');
          Add('СОБС-2');
          Add('СОБС-2А');
          Add('СОБС-3А');
          Add('РТ-3');
          Add('СКТ-1');
                        end;
//**************************************
        List71:=TStringList.Create;
         with List71 do begin
          Add('Обрив провода обмотки');
          Add('К.з. провода обмотки');
          Add('Злам (обрив) зовнiшнього вивода');
          Add('Сполучення обмоток мiж собою');
          Add('Сполучення обмотки з корпусом');
          Add('Згорання обмотки');
          Add('Зниження опору iзоляцiї');
                        end;
//*****************************************
        List72:=TStringList.Create;
         with List72 do begin
          Add('Зниження опору iзоляцiї');
          Add('Обрив, злом жил');
          Add('Сполучення жил');
          Add('Механiчнi пошкодження');
                        end;
//*******************************************
        List73:=TStringList.Create;
         with List73 do begin
          Add('При виконаннi робiт працiвниками ШЧ');
          Add('В присутностi представника ШЧ');
          Add('Вплив грозових розрядiв');
          Add('Вплив тягового струму');
          Add('Вина стороннiх осiб i органiзацiй');
          Add('Неякiсне оброблення пiд час монтажу');
          Add('Дефект матерiалу');
                        end;
//***********************************************
        List74:=TStringList.Create;
         with List74 do begin
          Add('При виконаннi робiт працiвниками ШЧ');
          Add('В присутностi представника ШЧ');
          Add('Зовнiшнiй вплив (стихiя та iн.)');
          Add('Накидання стороннiх предметiв на дроти');
          Add('Неякiсне зварювання, зв’язування та iн.');
          Add('Падiння опори');
                        end;
//**************************************************
        List75:=TStringList.Create;
         with List75 do begin
          Add('Конструктивні');
          Add('Проектні');
                        end;
//**************************************************
        List76:=TStringList.Create;
         with List76 do begin
          Add('Недотрим. строкiв перевiрки, огляду');
          Add('Порушення правил виконання робiт');
          Add('Помилки при виконаннi робiт');
          Add('Неякiсне виконання робiт');
          Add('Неякiсний ремонт в РТД СЦБ');
          Add('Неякiсний ремонт в майстернi ШЧ');
          Add('Някiсний ремонт в КРП АЛСБ');
          Add('Тривалий час усунення вiдмови');
                        end;
//*******************************************************
        List80:=TStringList.Create;
         with List80 do begin
          Add('Обрив проводу обмотки якоря');
          Add('Замикання проводу обмотки якоря');
          Add('Обрив проводу обмотки статора');
          Add('Замикання проводу обмотки статора');
          Add('Обрив виводiв обмотки статора');
          Add('Несправнiсть щiткового вузла');
          Add('Ослаблення крiплення деталей');
          Add('Зниження iзоляцiї обмотки якоря');
          Add('Зниження iзоляцiї обмотки статора');
          Add('Злам вала');
          Add('Несправнiсть пiдшипникiв');
          Add('Прогорання iзоляцiї колектора');
                        end;
//*****************************************************
        List81:=TStringList.Create;
         with List81 do begin
          Add('Злам контактної пружини');
          Add('Сполучення контактних пружин');
          Add('Зрiзання контактного наклепу');
          Add('Випадання контактного наклепу');
          Add('Втрата електр. кола на контактах');
          Add('Пiдгорання контактiв');
          Add('Ерозiя контактiв');
          Add('Зварювання контактiв');
          Add('Сполучення ел. кола з корпусом');
          Add('Втрата контакту в тримачi вугля');
          Add('Неякiсне регулювання контактiв');
          Add('Стороннiй предмет мiж контактами');
          Add('Втрата електричн. кола на виводi');
          Add('Пробiй мiжконтактної iзоляцiї');
                        end;
//****************************************************
        List82:=TStringList.Create;
         with List82 do begin
          Add('Розрегулювання контактiв');
          Add('Злам контактної колодки');
          Add('Злам контактної пружини');
          Add('Забруднення контактiв');
          Add('Iнiй на контактах');
          Add('Пiдгорання контактiв');
                        end;
//******************************************************
        List83:=TStringList.Create;
         with List83 do begin
          Add('Обрив провода обмотки');
          Add('Замикання провода обмотки');
          Add('Обрив вивода');
          Add('Несправнiсть контактної системи');
          Add('Розрегулювання');
                        end;
//*******************************************************
        List84:=TStringList.Create;
         with List84 do begin
          Add('Перегорання свiтлофорної лампи');
          Add('Порушення к-ту в лампотримачi');
          Add('Биття лiнз стороннiми особами');
          Add('Руйнування основи, щогли');
          Add('Несправнiсть монтажу');
          Add('Крадiжка, биття свiтлофорних ламп');
                        end;
//***************************************************
        List85:=TStringList.Create;
         with List85 do begin
          Add('Заводський дефект');
          Add('Ранiше нормативного строку');
          Add('Порушення строку замiни');
                        end;
//*******************************************
        List86:=TStringList.Create;
         with List86 do begin
          Add('Приймання поїзда на зайняту колію');
          Add('Відправлення поїзда на зайнятий перегін');
          Add('Прийом, відправлення поїзда за неготовим маршрутом');
          Add('Переведення стрілки під поїздом');
          Add('Поява більш дозволяючого показання сигналу');
          Add('Переведення стрілки в маршруті');
          Add('Відкриття світлофора ворожого маршруту');
          Add('Несвоєчасне закінчення робіт у вікно');
          Add('Перекриття сигналу з проїздом');
          Add('Тривале усунення пошкодження');
          Add('Затримка пас. поїзда бiльше 1 години');
          Add('Схiд рухомого складу');
          Add('Виклик допомiжного локомотива');
                      end;
//*********************************************
        List87:=TStringList.Create;
         with List87 do begin
          Add('Ш Служба сигналізації та зв’язку');
          Add('П Служба колії');
          Add('Д Служба перевезень');
          Add('Е Служба електропостачання');
          Add('Т Служба локомотивного господарства');
          Add('В Служба вагонного господарства');
          Add('Інші служби та організації');
                      end;
//**************************************************
        List88:=TStringList.Create;
         with List88 do begin
          Add('Автоблокування');
          Add('Електрична централізація');
          Add('Диспетчерська централізація');
          Add('Напівавтоматичне блокування');
          Add('Маршрутно-контрольні пристрої');
          Add('Пристрої автоматики на переїздах');
          Add('Гіркові пристрої');
                          end;
//***************************************************
        ListD:=TStringList.Create;
         with ListD do begin
          Add('Неправильне користування пристроями');
          Add('Розрiз стрiлки');
                       end;
//***************************************************
        List89:=TStringList.Create;
         with List89 do begin
          Add('01');
          Add('02');
          Add('03');
          Add('04');
          Add('05');
          Add('06');
          Add('07');
          Add('08');
          Add('10');
          Add('11');
          Add('12');
          Add('13');
          Add('14');
                         end;
//***********************************
        List90:=TStringList.Create;
         with List90 do begin
          Add('Pейковi кола');
          Add('Сигнали');
          Add('Приводи');
          Add('Гарнітура');
          Add('Двигуни');
          Add('Прилади');
          Add('Прилади захисту');
          Add('Установчi вироби');
          Add('Електричнi кола');
          Add('Запобiжники');
          Add('Апарати управлiння');
          Add('Джерела живлення');
          Add('Випрямлячi');
          Add('Трансформатори');
          Add('Кабельнi лiнiї');
          Add('Повiтрянi лiнiї');
          Add('Гiрковi пристрої');
          Add('Інші елементи');
          Add('Елемент не визначений');
          Add('Крадіжка');
          Add('Навмисне пошкодження');
                          end;
//***************************************
        List91:=TStringList.Create;
         with List91 do begin
          Add('Експлуатацiйнi');
          Add('Виробничi (заводськi)');
          Add('Схемно-конструктивнi');
          Add('Проектні');
          Add('Грозовi перенапруження');
          Add('Комутацiйнi перенапруження');
          Add('Причина не встановлена');
                       end;
//******************************************
        List92:=TStringList.Create;
         with List92 do begin
          Add('Недотрим. строкiв перевiрки, огляду');
          Add('Порушення правил виконання робiт');
          Add('Помилки при виконаннi робiт');
          Add('Неякiсне виконання робiт');
          Add('Неякiсний ремонт в РТД СЦБ');
          Add('Неякiсний ремонт в майстернi ШЧ');
          Add('Неякiсний ремонт в КРП АЛСБ');
          Add('Тривалий час усунення вiдмови');
                        end;
//************************************************
        List93:=TStringList.Create;
         with List93 do begin
          Add('Вимкнення електроенергії');
          Add('Несправність рейкових кіл');
          Add('Несправність приладів СЦБ');
          Add('Несправність повітряних ліній');
          Add('Несправність кабельних ліній');
          Add('Несправність акумуляторів');
          Add('Грозові перенапруження');
          Add('Аварія в контактній мережі');
          Add('Неправильні дії ДСП');
          Add('Помилки обслуговуючого персоналу ШЧ');
          Add('Інші причини');
                        end;
//******************************************************
        List94:=TStringList.Create;
         with List94 do begin
          Add('Ожеледь');
          Add('Вiтер');
          Add('Гроза');
          Add('Пожежа');
          Add('Транспорт');
                        end;
//******************************************************
        ListE:=TStringList.Create;
         with ListE do begin
          Add('Вимкнення електроенергiї');
          Add('Подання завищеної напруги');
          Add('Подання заниженої напруги');
          Add('Неправильне заземлення при роботах');
          Add('Несправнiсть iскрових промiжкiв');
          Add('Тривалий час перемикання фiдерiв');
          Add('К.з. в контактнiй мережi');
          Add('К.з. в линiї автоблокування');
          Add('Пробиття кабеля тяговим струмом');
          Add('Розрядження акумуляторiв');
          Add('Iншi причини');
                        end;
//******************************************************
        ListV:=TStringList.Create;
         with ListV do begin
          Add('Втрата шунтової чутливості');
          Add('Підвищення напруги з вини ШЧ');
          Add('Неправильні дії працівників ШЧ');
          Add('Порушення чергування полярності і пробій стика');
          Add('Підживлення реле від сторонніх джерел');
          Add('Несправність перемичок, з’єднувачів');
          Add('Несправність апаратури, монтажу, кабелів');
          Add('Інші причини');
                       end;
//******************************************************
        ListSH1:=TStringList.Create;
if FileExists('c:\scb\stations\sh01.txt') then ListSH1.LoadFromFile('c:\scb\stations\sh01.txt') else ListSH1.Clear;
        ListSH2:=TStringList.Create;
if FileExists('c:\scb\stations\sh02.txt') then ListSH2.LoadFromFile('c:\scb\stations\sh02.txt') else ListSH2.Clear;
        ListSH3:=TStringList.Create;
if FileExists('c:\scb\stations\sh03.txt') then ListSH3.LoadFromFile('c:\scb\stations\sh03.txt') else ListSH3.Clear;
        ListSH4:=TStringList.Create;
if FileExists('c:\scb\stations\sh04.txt') then ListSH4.LoadFromFile('c:\scb\stations\sh04.txt') else ListSH4.Clear;
        ListSH5:=TStringList.Create;
if FileExists('c:\scb\stations\sh05.txt') then ListSH5.LoadFromFile('c:\scb\stations\sh05.txt') else ListSH5.Clear;
        ListSH6:=TStringList.Create;
if FileExists('c:\scb\stations\sh06.txt') then ListSH6.LoadFromFile('c:\scb\stations\sh06.txt') else ListSH6.Clear;
        ListSH7:=TStringList.Create;
if FileExists('c:\scb\stations\sh07.txt') then ListSH7.LoadFromFile('c:\scb\stations\sh07.txt') else ListSH7.Clear;
        ListSH8:=TStringList.Create;
if FileExists('c:\scb\stations\sh08.txt') then ListSH8.LoadFromFile('c:\scb\stations\sh08.txt') else ListSH8.Clear;
//        ListSH9:=TStringList.Create;
//        ListSH9.LoadFromFile('c:\scb\stations\sh09.txt');
        ListSH10:=TStringList.Create;
if FileExists('c:\scb\stations\sh10.txt') then ListSH10.LoadFromFile('c:\scb\stations\sh10.txt') else ListSH10.Clear;
        ListSH11:=TStringList.Create;
if FileExists('c:\scb\stations\sh11.txt') then ListSH11.LoadFromFile('c:\scb\stations\sh11.txt') else ListSH11.Clear;
        ListSH12:=TStringList.Create;
if FileExists('c:\scb\stations\sh12.txt') then ListSH12.LoadFromFile('c:\scb\stations\sh12.txt') else ListSH12.Clear;
        ListSH13:=TStringList.Create;
if FileExists('c:\scb\stations\sh13.txt') then ListSH13.LoadFromFile('c:\scb\stations\sh13.txt') else ListSH13.Clear;
        ListSH14:=TStringList.Create;
if FileExists('c:\scb\stations\sh14.txt') then ListSH14.LoadFromFile('c:\scb\stations\sh14.txt') else ListSH14.Clear;
//        ListSH15:=TStringList.Create;
//        ListSH15.LoadFromFile('c:\scb\stations\sh15.txt');
//*************************************
//           Start Data
  ComboBox1.Items.Assign(List86);
  ComboBox1.ItemIndex:=-1;

  ComboBox2.Items.Assign(List87);
  ComboBox2.ItemIndex:=-1;

  ComboBox3.Items.Assign(List88);
  ComboBox3.ItemIndex:=-1;

  ComboBox4.Items.Assign(List89);
  ComboBox4.ItemIndex:=-1;

  ComboBox8.Items.Assign(List90);
  ComboBox8.ItemIndex:=-1;

  ComboBox9.Items.Assign(List91);
  ComboBox9.ItemIndex:=-1;

  ComboBox13.Items.Assign(List93);
  ComboBox13.ItemIndex:=-1;
//Form1.Destroy;
end;

procedure TForm3.FormShow(Sender: TObject);
 var i:smallint;
begin
DateTimePicker12.SetFocus;

Zakr:=false;
Brak:=false;
for i:=0 to 20 do Vidp[i]:=false;

Button1.Caption:='+';

DateTimePicker12.Date:=DateTimePicker4.Date;
DateTimePicker13.Date:=DateTimePicker4.Date;
DateTimePicker1.Date:=StrToDate('01.01.01');
DateTimePicker2.Date:=DateTimePicker4.Date;
DateTimePicker3.Date:=DateTimePicker4.Date;
DateTimePicker2.Enabled:=false;
DateTimePicker3.Enabled:=false;
DateTimePicker2.Time:=StrToTime('00:00');
DateTimePicker3.Time:=StrToTime('00:00');
DateTimePicker12.Time:=StrToTime('00:00');
DateTimePicker13.Time:=StrToTime('00:00');

MaskEdit5.Text:='000:00';
MaskEdit6.Text:='000:00';
MaskEdit7.Text:='000:00';
MaskEdit8.Text:='00:00';
MaskEdit9.Text:='00:00';
MaskEdit10.Text:='00:00';
MaskEdit11.Text:='00:00';
MaskEdit5.Enabled:=false;
MaskEdit6.Enabled:=false;
MaskEdit7.Enabled:=false;
MaskEdit10.Enabled:=false;
MaskEdit11.Enabled:=false;

Edit17.Text:=IntToStr(CurrentNumber);   //?????
Edit17.Visible:=false;
Edit4.Text:=Edit17.Text;
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit20.Text:='';
Edit26.Text:='';
Edit27.Text:='';
Edit28.Text:='';
Edit29.Text:='';
Edit30.Text:='';
Edit31.Text:='';
Edit32.Text:='';
//Edit1.Enabled:=false;

ComboBox5.Clear;
ComboBox6.Clear;
ComboBox7.Clear;
ComboBox10.Clear;
ComboBox11.Clear;
ComboBox1.ItemIndex:=-1;
ComboBox2.ItemIndex:=-1;
ComboBox3.ItemIndex:=-1;
ComboBox4.ItemIndex:=-1;
ComboBox5.ItemIndex:=-1;
ComboBox6.ItemIndex:=-1;
ComboBox7.ItemIndex:=-1;
ComboBox8.ItemIndex:=-1;
ComboBox9.ItemIndex:=-1;
ComboBox10.ItemIndex:=-1;
ComboBox11.ItemIndex:=-1;
ComboBox13.ItemIndex:=-1;
ComboBox1.Enabled:=false;
ComboBox9.Enabled:=false;
ComboBox10.Enabled:=false;
ComboBox13.Enabled:=false;

Memo1.Lines.Clear;
Memo3.Lines.Clear;
Memo5.Lines.Clear;
Memo1.Enabled:=false;

CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;

Label2.Enabled:=false;
Label6.Enabled:=false;
Label7.Enabled:=false;
Label8.Enabled:=false;
Label11.Enabled:=false;
Label12.Enabled:=false;
Label64.Enabled:=false;
Label83.Enabled:=false;
Label13.Caption:='';

RadioGroup1.Enabled:=false;    //станция или перегон?
RadioButton1.Enabled:=false;
RadioButton2.Enabled:=false;

end;           //Form3.onShow
//********************* End Initialize **************************

procedure TForm3.ToolButton18Click(Sender: TObject); //Close form
 var i:integer;
begin
//** проверка на наличие измененных записей и их обновление **
if High(OtkazMas) >= 0 then begin
   for i:=0 to High(OtkazMas) do begin
     if OtkazMas[i].Modified = true then begin
      Form3.InsertData(i);
                                         end;
                                 end;
                            end;
PopUpMenu3.Items[4].Enabled:=true;
ToolButton15.Enabled:=true;
ToolButton2.Enabled:=true;
ToolButton16.Enabled:=false;
ToolButton17.Enabled:=false;
ToolButton1.Enabled:=false;
OtkazMas:=nil;
Modify:=false;
PopUpMenu3.Items[3].Enabled:=true;
 if DM2.IBTransaction1.InTransaction then
   DM2.IBTransaction1.CommitRetaining;
Close;
end;   //ToolButton18.Click

procedure TForm3.ComboBox4Exit(Sender: TObject); //выбор станций
begin
 ListPH.Clear;
  if ComboBox4.ItemIndex = -1 then ComboBox4.ItemIndex:=0;
 case ComboBox4.ItemIndex of
    0:begin
        ComboBox5.Items.Assign(ListSH1);
        ComboBox6.Items.Assign(ListSH1);
         with ListPH do begin
           Add('2');
           Add('3');
           Add('13');
                        end;
      end;
    1:begin
        ComboBox5.Items.Assign(ListSH2);
        ComboBox6.Items.Assign(ListSH2);
         with ListPH do begin
           Add('4');
                        end;
      end;
    2:begin
        ComboBox5.Items.Assign(ListSH3);
        ComboBox6.Items.Assign(ListSH3);
         with ListPH do begin
           Add('7');
                        end;
      end;
    3:begin
        ComboBox5.Items.Assign(ListSH4);
        ComboBox6.Items.Assign(ListSH4);
         with ListPH do begin
           Add('9');
           Add('19');
                        end;
      end;
    4:begin
        ComboBox5.Items.Assign(ListSH5);
        ComboBox6.Items.Assign(ListSH5);
         with ListPH do begin
           Add('19');
           Add('20');
                        end;
      end;
    5:begin
        ComboBox5.Items.Assign(ListSH6);
        ComboBox6.Items.Assign(ListSH6);
         with ListPH do begin
           Add('18');
                        end;
      end;
    6:begin
        ComboBox5.Items.Assign(ListSH7);
        ComboBox6.Items.Assign(ListSH7);
         with ListPH do begin
           Add('11');
           Add('13');
                        end;
      end;
    7:begin
        ComboBox5.Items.Assign(ListSH8);
        ComboBox6.Items.Assign(ListSH8);
         with ListPH do begin
           Add('1');
           Add('14');
                        end;
      end;
    8:begin
        ComboBox5.Items.Assign(ListSH10);
        ComboBox6.Items.Assign(ListSH10);
         with ListPH do begin
           Add('1');
           Add('6');
                        end;
      end;
    9:begin
        ComboBox5.Items.Assign(ListSH11);
        ComboBox6.Items.Assign(ListSH11);
         with ListPH do begin
           Add('5');
           Add('10');
                        end;
      end;
    10:begin
        ComboBox5.Items.Assign(ListSH12);
        ComboBox6.Items.Assign(ListSH12);
         with ListPH do begin
           Add('2');
                        end;
      end;
    11:begin
        ComboBox5.Items.Assign(ListSH13);
        ComboBox6.Items.Assign(ListSH13);
         with ListPH do begin
           Add('13');
           Add('15');
                        end;
       end;
    12:begin
        ComboBox5.Items.Assign(ListSH14);
        ComboBox6.Items.Assign(ListSH14);
         with ListPH do begin
           Add('8');
           Add('20');
                        end;
       end;
 end;  //case

ComboBox5.ItemIndex:=1;
ComboBox6.ItemIndex:=0;
ComboBox11.Items.Assign(ListPH);
ComboBox11.ItemIndex:=0;

end;  //ComboBox4.Exit

procedure TForm3.ComboBox3Exit(Sender: TObject); //выбор проявления отказа
begin
Zakr:=false;
Brak:=false;

   RadioGroup1.Enabled:=false;    //переезд станция или перегон
   RadioButton1.Enabled:=false;
   RadioButton2.Enabled:=false;
   Label11.Enabled:=false;

if ComboBox3.ItemIndex = -1 then ComboBox3.ItemIndex:=0;

case ComboBox3.ItemIndex of
  0:begin                //АБ
      ComboBox7.Items.Assign(List1);
      ComboBox5.Enabled:=true;
    end;
  1:begin                //ЕЦ
      ComboBox7.Items.Assign(List3);
      ComboBox5.Enabled:=false;
    end;
  2:begin                //ДЦ
      ComboBox7.Items.Assign(List4);
      ComboBox5.Enabled:=false;
      RadioButton2.Checked:=true;
      ComboBox5.Enabled:=true;
      RadioGroup1.Enabled:=true;
      RadioButton1.Enabled:=true;
      RadioButton2.Enabled:=true;
    end;
  3:begin
      ComboBox7.Items.Assign(List5);
      ComboBox5.Enabled:=true;
    end;
  4:begin
      ComboBox7.Items.Assign(List6);
      ComboBox5.Enabled:=false;
    end;
  5:begin
      ComboBox7.Items.Assign(List7);
      RadioButton2.Checked:=true;
      ComboBox5.Enabled:=true;  //по умолчанию переезд на перегоне
      RadioGroup1.Enabled:=true;
      RadioButton1.Enabled:=true;
      RadioButton2.Enabled:=true;
      Label11.Enabled:=true;
    end;
  6:begin
      ComboBox7.Items.Assign(List2);
      ComboBox5.Enabled:=false;
    end;
end;  //case
end;  //ComboBox3.Exit

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
       ComboBox8.OnExit(Sender);
end;  //SpeedButton3.Click

procedure TForm3.ComboBox8Exit(Sender: TObject); //вибір 1-го меню для елементу
 var p:TPoint;
begin
 { DONE 2 -oРуслан -cИсправить : Исправить ComboBox8.onExit }
if not SpeedButton3.Focused then Exit; //!!!

   Memo3.Lines.Clear;
    ListBox1.Clear;

if ComboBox8.ItemIndex = -1 then ComboBox8.ItemIndex:=0;

if ComboBox8.ItemIndex = 0 then begin //Рейкові кола
                                 ListBox1.Items.Assign(List21);
                                 Element:=0;
                                end;
if ComboBox8.ItemIndex = 1 then begin //Світлофори
                                 ListBox1.Items.Assign(List22);
                                 Element:=100;
                                end;
if ComboBox8.ItemIndex = 2 then begin //Приводи
                                 ListBox1.Items.Assign(List11);
                                 Element:=200;
                                end;
if ComboBox8.ItemIndex = 3 then begin //Гарнітура
                                 ListBox1.Items.Assign(List13);
                                 Element:=230;
                                end;
if ComboBox8.ItemIndex = 4 then begin //Двигуни
                                 ListBox1.Items.Assign(List16);
                                 Element:=260;
                                end;
if ComboBox8.ItemIndex = 5 then begin //Прилади
                                 Pribor:='';
                                 p:=GetClientOrigin;
                                 PopupMenu1.Popup(SpeedButton3.Left+p.x+26,SpeedButton3.Top+p.y);
                                 Element:=303;
                                 ListBox1.Items.Assign(List34);
                                end;
if ComboBox8.ItemIndex = 6 then begin //Прилади захисту
                                 Pribor:='';
                                 p:=GetClientOrigin;
                                 PopupMenu2.Popup(SpeedButton3.Left+p.x+26,SpeedButton3.Top+p.y);
                                 Element:=402;
                                 ListBox1.Items.Assign(List19);
                                end;
if ComboBox8.ItemIndex = 7 then begin //Установчі вироби
                                 ListBox1.Items.Assign(List20);
                                 Element:=500;
                                end;
if ComboBox8.ItemIndex = 8 then begin //Електричні кола
                                 ListBox1.Items.Assign(List47);
                                 Element:=600;
                                end;
if ComboBox8.ItemIndex = 9 then begin //Запобіжники
                                 ListBox1.Items.Assign(List49);
                                 Element:=700;
                                end;
if ComboBox8.ItemIndex = 10 then begin //Апарати управління
                                 ListBox1.Items.Assign(List52);
                                 Element:=800;
                                end;
if ComboBox8.ItemIndex = 11 then begin //Джерела живлення
                                 ListBox1.Items.Assign(List57);
                                 Element:=900;
                                end;
if ComboBox8.ItemIndex = 12 then begin //Випрямлячі
                                  ListBox1.Items.Assign(List64);
                                  Element:=1000;
                                 end;
if ComboBox8.ItemIndex = 13 then begin //Трансформатори
                                  ListBox1.Items.Assign(List70);
                                  Element:=1100;
                                 end;
if ComboBox8.ItemIndex = 14 then begin //Кабельні лінії
       if (ComboBox2.ItemIndex = 0) or (ComboBox2.ItemIndex = 3) then
                                       begin
                                        ListBox1.Items.Assign(List72);
                                        Element:=1200;
                                       end
                                  else begin
                                        Memo3.Lines.Add('Пошкодження.');
                                        Element:=99;
                                        ListBox1.Clear;
                                        ListBox1.SendToBack;
                                        ListBox1.Visible:=false;
                                       end;
                                 end;
if ComboBox8.ItemIndex = 15 then begin //Повітряні лінії
                                  ListBox1.Items.Assign(List72);
                                  Element:=1300;
                                 end;
if ComboBox8.ItemIndex = 16 then begin //Гірки
                                  ListBox1.Items.Assign(List55);
                                  Element:=1500;
                                 end;

if ComboBox8.ItemIndex = 17 then begin //інші
                                  Memo3.Lines.Add('Інші елементи');
                                  Element:=99;
                                  ListBox1.Clear;
                                  ListBox1.SendToBack;
                                  ListBox1.Visible:=false;
                                 end;

if ComboBox8.ItemIndex = 18 then
    begin //Не визначено, пристрої СЦБ справні, крадіжка
     case ComboBox2.ItemIndex of

          0,1,4,5:begin  //Ш,П,Т,В не визначено
                   Memo3.Lines.Add('Елемент не визначений.');
                   Element:=99;
                   ListBox1.Clear;
                   ListBox1.SendToBack;
                   ListBox1.Visible:=false;
                   ComboBox9.ItemIndex:=6;
                   ComboBox10.Enabled:=false;
                  end;

          2:begin  //Д пристрої СЦБ справні
               ListBox1.Items.Assign(ListD);
               Element:=1600;
            end;

          3:begin  //Е пристрої СЦБ справні
               ListBox1.Items.Assign(ListE);
               Element:=1600;
            end;

     end;  //case
    end;

if ComboBox8.ItemIndex = 19 then begin
                                  Memo3.Lines.Add('Крадіжка');
                                  Element:=99;
                                  ListBox1.Clear;
                                  ListBox1.SendToBack;
                                  ListBox1.Visible:=false;
                                 end;

if ComboBox8.ItemIndex = 20 then begin //навмисне пошкодження
                                  Memo3.Lines.Add('Навмисне пошкодження');
                                  Element:=99;
                                  ListBox1.Clear;
                                  ListBox1.SendToBack;
                                  ListBox1.Visible:=false;
                                 end;

//============ Перевірка відповідності Проявлення-Елемент ===========
if Vidp[ComboBox8.ItemIndex] = false then begin
                                           ShowMessage('Невідповідність елементу і проявлення!');
                                           ComboBox8.ItemIndex:=0;
                                           ComboBox7.SetFocus;
                                          end
                                     else begin
                                           if (ComboBox8.ItemIndex in [0..17]) and (Element <> 99) then begin
                                                   ListBox1.ItemIndex:=0;
                                                   ListBox1.Visible:=true;
                                                   ListBox1.BringToFront;
                                                   ListBox1.SetFocus;
                                                                                  end;
                                           if (ComboBox8.ItemIndex = 18) and (ComboBox2.ItemIndex in [2,3]) then begin
                                                   ListBox1.ItemIndex:=0;
                                                   ListBox1.Visible:=true;
                                                   ListBox1.BringToFront;
                                                   ListBox1.SetFocus;
                                                                                                                 end;
                                          end;
end;         //ComboBox8.Exit

procedure TForm3.ListBox1DblClick(Sender: TObject);
var Svob:boolean;
    Marka:string;
begin
if Pribor <> '' then begin
                      Memo3.Lines.Add(Pribor);
                      Pribor:='';
                     end;
Case Element of
0:begin   //рейкові кола
   Svob:=false;
   if (ComboBox3.ItemIndex = 0) and (ComboBox7.ItemIndex = 10) then
    begin
     Svob:=true;
     Memo3.Lines.Add(ListBox1.Items.Strings[0]);
    end;
   if (ComboBox3.ItemIndex = 1) and (ComboBox7.ItemIndex = 13) then
    begin
     Svob:=true;
     Memo3.Lines.Add(ListBox1.Items.Strings[5]);
    end;
   if (ComboBox3.ItemIndex = 3) and (ComboBox7.ItemIndex = 7) then
    begin
     Svob:=true;
     Memo3.Lines.Add(ListBox1.Items.Strings[0]);
    end;
   if (ComboBox3.ItemIndex = 4) and (ComboBox7.ItemIndex = 9) then
    begin
     Svob:=true;
     Memo3.Lines.Add(ListBox1.Items.Strings[5]);
    end;
   if (ComboBox3.ItemIndex = 6) and (ComboBox7.ItemIndex = 6) then
    begin
     Svob:=true;
     Memo3.Lines.Add(ListBox1.Items.Strings[5]);
    end;
     if Svob then
      begin
       Element:=4;
       ListBox1.Items.Assign(ListV);
      end else
      begin
       Element:=1;
       Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
       ListBox1.Items.Assign(List26);
      end;
    ListBox1.ItemIndex:=0;
  end;

1:begin   //обрив з"єднувачів, порушення ізоляції...List26
   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
    Case ListBox1.ItemIndex of

         0,3,10,11:begin
                    Element:=2;
                    ListBox1.Items.Assign(List27);
                   end;

         1:begin
            Element:=3;
            ListBox1.Items.Assign(List28);
           end;

         2:begin
            Element:=4;
            ListBox1.Items.Assign(List30);
           end;

         4:begin
            Element:=5;
            ListBox1.Items.Assign(List31);
           end;

         5:begin
            Element:=6;
            ListBox1.Items.Assign(List32);
           end;

         6..9:Element:=99;
       end; //case;

  end;  //1

2:begin //корозія, пошкодження рух. складом...List27
   Element:=99;
   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
  end;

3:begin //стика,стрілочної гарнітури...List28
   if ListBox1.ItemIndex = 0 then begin
                                   Element:=7;
                                   Memo3.Lines.Add(ListBox1.Items.Strings[0]);
                                   ListBox1.Items.Assign(List29);
                                  end
                             else begin
                                   Element:=99;
                                   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                  end;
  end;

4:begin //List30
   Element:=99;
   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
  end;

5:begin
   if ListBox1.ItemIndex = 2 then begin
                                   Element:=4;
                                   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                   ListBox1.Items.Assign(ListE);
                                  end
                             else begin
                                   Element:=99;
                                   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                  end;
  end;

6:begin
   if ListBox1.ItemIndex = 2 then begin
                                   Element:=4;
                                   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                   ListBox1.Items.Assign(ListE);
                                  end
                             else begin
                                   Element:=99;
                                   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                  end;
  end;

7:begin
   Element:=99;
   Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
  end;

99:begin //вибір закінчено
    ListBox1.Items.Clear;
    ListBox1.SendToBack;
    ListBox1.Visible:=false;
   end;

100:begin    //Світлофори
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=101;
     ListBox1.Items.Assign(List23);
    end;

101:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Case ListBox1.ItemIndex of

           0:begin
              Element:=102;
              ListBox1.Items.Assign(List24);
             end;

           1..5:Element:=99;

      end; //case
    end;

102:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=103;
     ListBox1.Items.Assign(List25);
    end;

103:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

200:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=201;
     ListBox1.Items.Assign(List10);
    end;

201:begin //Стрілки ЕЦ, ГАЦ
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
            Case ListBox1.ItemIndex of

                 0,3:begin
                      Element:=202;
                      ListBox1.Items.Assign(List12);
                   end;

                 1,2,4..7:Element:=99;

          end; //case
    end;

202:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

230:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=202;
     ListBox1.Items.Assign(List14);
    end;

260:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Case ListBox1.ItemIndex of

           0..2:begin
                 ListBox1.Items.Assign(List17);
                 Element:=261;
                end;

           3..5:begin
                 ListBox1.Items.Assign(List18);
                 Element:=202;
                end;

           6..8:begin
                 ListBox1.Items.Assign(List80);
                 Element:=202;
                end;

      end; //case
    end;

261:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=202;
     ListBox1.Items.Assign(List80);
    end;

//300:begin
//   ListBox1.Items:=ListBox35.Items;
//   end;

301:begin   //прилади
     ListBox1.Items.Assign(List34);
     Element:=303;
    end;

302:begin //сигн. мех.  ??????????
     Element:=99;
    end;

303:begin
     if ListBox1.ItemIndex = 0 then begin //обмотка
                                    Memo3.Lines.Add(ListBox1.Items.Strings[0]);
                                    ListBox1.Items.Assign(List33);
                                    Element:=304;
                                   end;
     if ListBox1.ItemIndex = 1 then begin //контакти
                                    Memo3.Lines.Add(ListBox1.Items.Strings[1]);
                                    ListBox1.Items.Assign(List35);
                                    Element:=305;
                                   end;
     if ListBox1.ItemIndex = 2 then begin //передавальна система
                                    Memo3.Lines.Add(ListBox1.Items.Strings[2]);
                                    ListBox1.Items.Assign(List36);
                                    Element:=306;
                                   end;
     if ListBox1.ItemIndex = 3 then begin //напівпров.
                                    Memo3.Lines.Add(ListBox1.Items.Strings[3]);
                                    ListBox1.Items.Assign(List37);
                                    Element:=307;
                                   end;
     if ListBox1.ItemIndex = 4 then begin //конденс.
                                    Memo3.Lines.Add(ListBox1.Items.Strings[4]);
                                    ListBox1.Items.Assign(List38);
                                    Element:=308;
                                   end;
     if ListBox1.ItemIndex = 5 then begin //резистори
                                    Memo3.Lines.Add(ListBox1.Items.Strings[5]);
                                    ListBox1.Items.Assign(List39);
                                    Element:=309;
                                   end;
    end;

304:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

305:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

306:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

307:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=310;
     ListBox1.Items.Assign(List40);
    end;

308:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

309:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

310:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

//400:begin
//   ListBox1.Items:=ListBox35.Items;
//   end;

401:begin //прилади захисту
     Element:=402;
     ListBox1.Items.Assign(List19);
    end;

402:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

500:begin //установчі вироби
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=501;
     ListBox1.Items.Assign(List41);
    end;

501:begin
    if ListBox1.ItemIndex = 0 then begin //резистори
                                    Memo3.Lines.Add(ListBox1.Items.Strings[0]);
                                    ListBox1.Items.Assign(List42);
                                    Element:=502;
                                   end;
    if ListBox1.ItemIndex = 1 then begin //конденсат.
                                    Memo3.Lines.Add(ListBox1.Items.Strings[1]);
                                    ListBox1.Items.Assign(List45);
                                    Element:=502;
                                   end;
    if ListBox1.ItemIndex = 2 then begin //напівпров.
                                    Memo3.Lines.Add(ListBox1.Items.Strings[2]);
                                    ListBox1.Items.Assign(List43);
                                    Element:=503;
                                   end;
    if ListBox1.ItemIndex = 3 then begin //трансформ.
                                    Memo3.Lines.Add(ListBox1.Items.Strings[3]);
                                    ListBox1.Items.Assign(List46);
                                    Element:=502;
                                   end;
    end;

502:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

503:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=504;
     ListBox1.Items.Assign(List44);
    end;

504:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

600:begin //електричні кола
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=601;
     ListBox1.Items.Assign(List48);
    end;

601:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

700:begin //запобіжники
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=701;
     ListBox1.Items.Assign(List50);
    end;

701:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=702;
     ListBox1.Items.Assign(List51);
    end;

702:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

800:begin //апарати управління
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=801;
     ListBox1.Items.Assign(List53);
    end;

801:begin
     if ListBox1.ItemIndex = 0 then begin
                                     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                     Element:=802;
                                     ListBox1.Items.Assign(List54);
                                    end
                               else begin
                                     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                     Element:=99;
                                    end;
    end;

802:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

900:begin //джерела живлення
     if ListBox1.ItemIndex = 0 then begin
                                     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                     Element:=901;
                                     ListBox1.Items.Assign(List58);
                                    end;
     if ListBox1.ItemIndex = 1 then begin
                                     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                     Element:=902;
                                     ListBox1.Items.Assign(List60);
                                    end;
     if ListBox1.ItemIndex = 2 then begin
                                     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                     Element:=903;
                                     ListBox1.Items.Assign(List63);
                                    end;
    end;

901:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=904;
     ListBox1.Items.Assign(List59);
    end;

902:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=905;
     ListBox1.Items.Assign(List61);
    end;

903:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

904:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

905:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=906;
     ListBox1.Items.Assign(List62);
    end;

906:begin
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=99;
    end;

1000:begin //випрямлячі
     Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
     Element:=1001;
     ListBox1.Items.Assign(List66);
     end;

1001:begin
      if ListBox1.ItemIndex = 0 then begin
                                      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                      Element:=1002;
                                      ListBox1.Items.Assign(List65);
                                     end;
      if ListBox1.ItemIndex = 1 then begin
                                      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                      Element:=1003;
                                      ListBox1.Items.Assign(List68);
                                     end;
      if ListBox1.ItemIndex = 2 then begin
                                      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                      Element:=1002;
                                      ListBox1.Items.Assign(List38);
                                     end;
      if ListBox1.ItemIndex = 3 then begin
                                      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
                                      Element:=1002;
                                      ListBox1.Items.Assign(List67);
                                     end;
     end;

1002:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=99;
     end;

1003:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=1002;
      ListBox1.Items.Assign(List69);
     end;

1100:begin //трансформатори
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=1101;
      ListBox1.Items.Assign(List71);
     end;

1101:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=99;
     end;

1200:begin //кабельні лінії
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
       if ComboBox2.ItemIndex = 3 then
        begin
         Memo3.Lines.Add('При роботі енергетиків');
         Element:=4;
         ListBox1.Items.Assign(ListE);
        end else
        begin
         Element:=1201;
         ListBox1.Items.Assign(List73);
        end;
     end;

1201:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
       if InputQuery('Кабель?','Введіть марку кабеля',Marka) then
         begin
          if Marka = '' then Marka:='не повідомлено';
          Memo3.Lines.Add('Марка: ' + Marka)
         end
         else Memo3.Lines.Add('Марку кабеля не повідомлено');
      Element:=99;
     end;


1300:begin  //повітряні лінії
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
       if ComboBox2.ItemIndex = 3 then
        begin
         Memo3.Lines.Add('При роботі енергетиків');
         Element:=4;
         ListBox1.Items.Assign(ListE);
        end else
        begin
         Element:=1301;
         ListBox1.Items.Assign(List74);
        end;
     end;

1301:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
       if ListBox1.ItemIndex = 2 then begin
                                       Element:=1302;
                                       ListBox1.Items.Assign(List94);
                                      end
                                 else Element:=99;
     end;

1302:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=99;
     end;

1500:begin //гірки
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=1501;
      ListBox1.Items.Assign(List56);
     end;

1501:begin
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=99;
     end;

1600:begin //пристрої СЦБ справні, Д,Е
      Memo3.Lines.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]);
      Element:=99;
     end;

end; //case

if Element = 99 then begin //вибір закінчено
    ListBox1.Clear;
    ListBox1.SendToBack;
    ListBox1.Visible:=false;
                     end
                else ListBox1.ItemIndex:=0;

end;      //ListBox1DblClick

procedure TForm3.ListBox1Exit(Sender: TObject);
begin
if Element <> 99 then begin
                       Pribor:='';
                       Memo3.Lines.Clear;
                       ListBox1.Items.Clear;
                       ListBox1.SendToBack;
                       ListBox1.Visible:=false;
                      end
                 else Edit2.SetFocus;
end;

procedure TForm3.PopUpClick(Sender: TObject);
begin
 with Sender as TMenuItem do Pribor:=Caption;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if not MaskEdit10.Enabled then begin
MaskEdit10.Enabled:=true;
MaskEdit11.Enabled:=true;
DateTimePicker2.Enabled:=true;
DateTimePicker3.Enabled:=true;
Button1.Caption:='-';
DateTimePicker2.SetFocus;
                               end
                          else begin
//******* Disabled ************
MaskEdit10.Enabled:=false;
MaskEdit11.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker3.Enabled:=false;
//******* Initialize for ReEvaluation ********
 MaskEdit10.Text:='00:00';
 MaskEdit11.Text:='00:00';
 DateTimePicker2.Date:=DateTimePicker13.Date;
 DateTimePicker2.Time:=StrToTime('00:00:00');
 DateTimePicker3.DateTime:=DateTimePicker2.DateTime;
//******* ReEvaluate **************
MaskEdit9.SetFocus;
Button1.Caption:='+';
Button1.SetFocus;

                               end;
end;      //Button1.Click

procedure TForm3.MaskEdit8Exit(Sender: TObject);
begin
try
StrToTime(MaskEdit8.Text);
except
ShowMessage('Невірний час!');
MaskEdit8.SetFocus;
end; //try-except
end;

procedure TForm3.MaskEdit9Exit(Sender: TObject);
type THoursMinutes = record
      Hours:string;
      Minutes:string;
                     end; //record

var HourMinute:THoursMinutes;
    DTP:boolean;

function getHours:THoursMinutes;
var TimeStamp1,TimeStamp2:TTimeStamp;
    Minutes1,Minutes2:integer;
    Hours:integer;
begin //function
TimeStamp1:=DateTimeToTimeStamp(DateTimePicker13.DateTime);
TimeStamp2:=DateTimeToTimeStamp(DateTimePicker12.DateTime);
Minutes1:=(TimeStamp1.Date-TimeStamp2.Date)*1440;      //1440 minutes per day = minutes
Minutes1:=Minutes1+Round(TimeStamp1.Time/60000);       //1 minute has 60000 miliseconds
Minutes1:=Minutes1-Round(TimeStamp2.Time/60000);       //time in minutes

TimeStamp1:=DateTimeToTimeStamp(DateTimePicker3.DateTime);
TimeStamp2:=DateTimeToTimeStamp(DateTimePicker2.DateTime);
Minutes2:=(TimeStamp1.Date-TimeStamp2.Date)*1440;      //1440 minutes per day = minutes
Minutes2:=Minutes2+Round(TimeStamp1.Time/60000);       //1 minute has 60000 miliseconds
Minutes2:=Minutes2-Round(TimeStamp2.Time/60000);       //time in minutes

Minutes1:=Minutes1+Minutes2;
Hours:=Minutes1 div 60;
if Hours < 10 then getHours.Hours:='0' + IntToStr(Hours) else getHours.Hours:=IntToStr(Hours);
Minutes1:=Minutes1-Hours*60;
if Minutes1 < 10 then getHours.Minutes:='0' + IntToStr(Minutes1) else getHours.Minutes:=IntToStr(Minutes1);
end;

begin //procedure
 DTP:=true;
try
 StrToTime(MaskEdit9.Text);
except
 ShowMessage('Невірний час закінчення відмови!');
 MaskEdit9.SetFocus;
 Exit;
end; //try-except

try
 StrToTime(MaskEdit11.Text);
except
 ShowMessage('Невірний час закінчення інтервалу!');
 MaskEdit11.SetFocus;
 Exit;
end; //try-except

DateTimePicker12.Time:=StrToTime('00:00:00');
DateTimePicker13.Time:=StrToTime('00:00:00');
DateTimePicker2.Time:=StrToTime('00:00:00');
DateTimePicker3.Time:=StrToTime('00:00:00');


if DateTimePicker12.Date > Date then begin
                                      ShowMessage('Невірна дата початку відмови! Сьогодні ' + DateTimeToStr(Now));
                                      DTP:=false;
                                     end;

if DateTimePicker13.Date < DateTimePicker12.Date then begin
                                                  ShowMessage('Невірно введено дату закінчення відмови!');
                                                  DTP:=false;
                                                      end;
if DateTimePicker13.Date > Date then begin
                                      ShowMessage('Невірна дата закінчення відмови! Сьогодні ' + DateTimeToStr(Now));
                                      DTP:=false;
                                     end;

if DateTimePicker2.Enabled then begin

 if DateTimePicker2.Date < DateTimePicker13.Date then
  begin
   ShowMessage('Невірно введено дату початку інтервалу!');
   DTP:=false;
  end;

 if DateTimePicker2.Date > Date then
  begin
   ShowMessage('Невірна дата початку інтервалу! Сьогодні ' + DateTimeToStr(Now));
   DTP:=false;
  end;

 if DateTimePicker3.Date < DateTimePicker2.Date then
  begin
   ShowMessage('Невірно введено дату закінчення інтервалу!');
   DTP:=false;
  end;

 if DateTimePicker3.Date > Date then
  begin
   ShowMessage('Невірна дата закінчення інтервалу! Сьогодні ' + DateTimeToStr(Now));
   DTP:=false;
  end;
                                                                                    
 if (StrToTime(MaskEdit10.Text) < StrToTime(MaskEdit9.Text)) and
   (DateTimePicker2.Date = DateTimePicker13.Date) then
     begin
      ShowMessage('Невірний час початку інтервалу!');
      DTP:=false;
     end;

 if (StrToTime(MaskEdit11.Text) < StrToTime(MaskEdit10.Text)) and
   (DateTimePicker2.Date = DateTimePicker3.Date) then
     begin
      ShowMessage('Невірний час закінчення інтервалу!');
      DTP:=false;
     end;

                                end; //if DTP2.Enabled

if (StrToTime(MaskEdit9.Text) <= StrToTime(MaskEdit8.Text)) and
     (DateTimePicker12.Date = DateTimePicker13.Date) then
    begin
     ShowMessage('Невірний час!');
     DTP:=false;
    end;

  if MaskEdit10.Enabled then
   if (StrToTime(MaskEdit10.Text) <= StrToTime(MaskEdit9.Text)) and
   (DateTimePicker13.Date = DateTimePicker2.Date) then
    begin
     ShowMessage('Невірний час прочатку інтервалу!');
     DTP:=false;
    end;

DateTimePicker12.Time:=StrToTime(MaskEdit8.Text);
DateTimePicker13.Time:=StrToTime(MaskEdit9.Text);
DateTimePicker2.Time:=StrToTime(MaskEdit10.Text);
DateTimePicker3.Time:=StrToTime(MaskEdit11.Text);

if DTP then begin
 try
  HourMinute:=getHours;
  Edit20.Text:=HourMinute.Hours + ':' + HourMinute.Minutes;
 except
  ShowMessage('Помилка в даті або годині!');
 end; //try-except
            end
       else Edit20.Text:='';

end;             //MaskEdit9.Exit

procedure TForm3.DateTimePicker13Exit(Sender: TObject);
begin
 DateTimePicker2.Date:=DateTimePicker13.Date;
 DateTimePicker3.Date:=DateTimePicker13.Date;
end;

procedure TForm3.DateTimePicker12Exit(Sender: TObject);
 var D1,D2:string;
begin
D1:=DateToStr(DateTimePicker12.Date);
D2:=DateToStr(DateTimePicker4.Date);
D1:=D1[4] + D1[5] + D1[7] + D1[8];
D2:=D2[4] + D2[5] + D2[7] + D2[8];
if  D1 <> D2 then begin
                   ShowMessage('Можна змінювати тільки число!');
                   DateTimePicker12.Date:=DateTimePicker4.Date;
                   DateTimePicker12.SetFocus;
                  end;

end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then begin
                           CheckBox2.Checked:=false;
                           CheckBox3.Checked:=false;
                           ComboBox1.Enabled:=true;
                           Label83.Enabled:=true;
                          end
                     else begin
    ComboBox1.Enabled:=false;
    Label83.Enabled:=false;
                          end;
 Form3.Texts;
end;

procedure TForm3.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked then begin
                           CheckBox1.Checked:=false;
                           CheckBox3.Checked:=false;
                           ComboBox1.Enabled:=true;
                           Label83.Enabled:=true;
                          end
                     else begin
    ComboBox1.Enabled:=false;
    Label83.Enabled:=false;
                          end;
 Form3.Texts;
end;

procedure TForm3.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked then begin
                           CheckBox2.Checked:=false;
                           CheckBox1.Checked:=false;
                           ComboBox1.Enabled:=true;
                           Label83.Enabled:=true;
                          end
                     else begin
    ComboBox1.Enabled:=false;
    Label83.Enabled:=false;
                          end;
 Form3.Texts;
end;

procedure TForm3.ComboBox7Change(Sender: TObject);
begin
Memo3.Lines.Clear;
Edit1.Text:='';
ComboBox8.ItemIndex:=-1;
ComboBox8.Text:='';
ComboBox7.OnExit(Sender);
end;

procedure TForm3.DateTimePicker12Change(Sender: TObject);
begin
 DateTimePicker13.DateTime:=DateTimePicker12.DateTime;
end;

procedure TForm3.MaskEdit10Exit(Sender: TObject);
begin
try
 StrToTime(MaskEdit10.Text);
except
 ShowMessage('Невірний час!');
 MaskEdit10.SetFocus;
end; //try-except
end;

procedure TForm3.MaskEdit11Exit(Sender: TObject);
begin
 MaskEdit9.OnExit(Sender);          //Evaluate time
 ComboBox4.SetFocus;
end;         //MaskEdit11.Exit

procedure TForm3.Edit26Exit(Sender: TObject);
var i:integer;
    YesNo:boolean;
begin

i:=0;
YesNo:=false;
if Edit26.Text = '' then YesNo:=true;
case ComboBox3.ItemIndex of
        0: if ComboBox7.ItemIndex = 5 then YesNo:=true;
        1: if ComboBox7.ItemIndex = 3 then YesNo:=true;
        3: if ComboBox7.ItemIndex = 4 then YesNo:=true;
        4: if (ComboBox7.ItemIndex = 4) or (ComboBox7.ItemIndex = 5) then YesNo:=true;
end; //case
if YesNo = false then if MessageDlg('Перекриття не було. Внести?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
           begin
            Edit26.Text:='';
            Edit28.SetFocus;
           end;

try
if Edit26.Text <> '' then begin
                           i:=StrToInt(Edit26.Text);
                           if (ComboBox2.ItemIndex = 0) and (ComboBox3.ItemIndex <> 0) then Brak:=true;
                          end;
if i > 1 then begin
               if MessageDlg('Ви впевнені що більше одного?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit26.SetFocus;
              end;
except
Edit26.Text:='';
ShowMessage('Можна вводити тільки число!');
Edit26.SetFocus;
end; //try-except

end;       //Edit26.Exit

procedure TForm3.Edit27Exit(Sender: TObject);
 var i:integer;
     YesNo:boolean;
begin
i:=0;
YesNo:=false;
if Edit27.Text = '' then YesNo:=true;
case ComboBox3.ItemIndex of
        0: if ComboBox7.ItemIndex = 5 then YesNo:=true;
        1: if ComboBox7.ItemIndex = 3 then YesNo:=true;
        3: if ComboBox7.ItemIndex = 4 then YesNo:=true;
        4: if (ComboBox7.ItemIndex = 4) or (ComboBox7.ItemIndex = 5) then YesNo:=true;
end; //case
if YesNo = false then if MessageDlg('Перекриття не було. Внести?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
           begin
            Edit27.Text:='';
            Edit28.SetFocus;
           end;

try
if Edit27.Text <> '' then i:=StrToInt(Edit27.Text);
 if i > 1 then begin
                if MessageDlg('Ви впевнені що більше одного?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit27.SetFocus;
               end;
except
Edit27.Text:='';
ShowMessage('Можна вводити тільки число!');
Edit27.SetFocus;
end; //try-except

end;          //Edit27.Exit

procedure TForm3.Edit28Exit(Sender: TObject);
 var i:integer;
begin
i:=0;
try
if Edit28.Text <> '' then i:=StrToInt(Edit28.Text);
 if i > 99 then begin
                if MessageDlg('Ви впевнені що більше 99?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit28.SetFocus;
               end;
except
Edit28.Text:='';
ShowMessage('Можна вводити тільки число!');
Edit28.SetFocus;
end; //try-except

end;            //Edit28.Exit

procedure TForm3.Edit29Exit(Sender: TObject);
 var i:integer;
begin
i:=0;

if (Zakr = false) and (Edit29.Text <> '') then if MessageDlg('Ви впевнені що потрібно ввести закриття системи?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
                                                            begin
                                                             Edit29.Text:='';
                                                             Edit30.SetFocus;
                                                            end
                                                       else Zakr:=true;

try
if Edit29.Text <> '' then begin
                           i:=StrToInt(Edit29.Text);
                           Label7.Enabled:=true;
                           ComboBox13.Enabled:=true;
                          end
                     else begin
                           Label7.Enabled:=false;
                           ComboBox13.Enabled:=false;
                          end;
if i > 1 then begin
               if MessageDlg('Ви впевнені що більше одного?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit29.SetFocus;
              end;
except
ShowMessage('Можна вводити тільки число!');
Edit29.Text:='';
ComboBox13.Enabled:=false;
Edit29.SetFocus;
end; //try-except

end;     //Edit29.Exit

procedure TForm3.Edit30Exit(Sender: TObject);
 var i:integer;
begin
i:=0;
try
if Edit30.Text <> '' then i:=StrToInt(Edit30.Text) else
  begin
   MaskEdit5.Text:='000:00';
   MaskEdit5.Enabled:=false;
  end;

if i > 25 then begin
               if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit30.SetFocus;
              end;
if i = 0 then
 begin
  MaskEdit5.Enabled:=false;
  Edit30.Text:='';
 end;
except
ShowMessage('Можна вводити тільки число!');
Edit30.Text:='';
Edit30.SetFocus;
end; //try-except
  Form3.Texts;
end;

procedure TForm3.Edit31Exit(Sender: TObject);
var i:integer;
begin
i:=0;
try
if Edit31.Text <> '' then i:=StrToInt(Edit31.Text) else
  begin
   MaskEdit6.Text:='000:00';
   MaskEdit6.Enabled:=false;
  end;

if i > 25 then begin
               if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit31.SetFocus;
              end;
if i = 0 then
 begin
  MaskEdit6.Enabled:=false;
  Edit31.Text:='';
 end;
except
ShowMessage('Можна вводити тільки число!');
Edit31.Text:='';
Edit31.SetFocus;
end; //try-except
  Form3.Texts;
end;

procedure TForm3.Edit32Exit(Sender: TObject);
var i:integer;
begin
i:=0;
try
if Edit32.Text <> '' then i:=StrToInt(Edit32.Text) else
  begin
   MaskEdit7.Text:='000:00';
   MaskEdit7.Enabled:=false;
  end;

if i > 25 then begin
               if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrNo then Edit32.SetFocus;
              end;
if i = 0 then
 begin
  MaskEdit7.Enabled:=false;
  Edit32.Text:='';
 end;
except
ShowMessage('Можна вводити тільки число!');
Edit32.Text:='';
Edit32.SetFocus;
end; //try-except
  Form3.Texts;
end;

procedure TForm3.ComboBox9Change(Sender: TObject);
begin
// Memo1.Enabled:=false;
// Label12.Enabled:=false;
case ComboBox9.ItemIndex of
      0:begin
          ComboBox10.Items.Assign(List76);
          ComboBox10.Enabled:=true;
        end;

      1,3,4,5,6:ComboBox10.Enabled:=false;

      2:begin
         ComboBox10.Items.Assign(List75);
         ComboBox10.Enabled:=true;
        end;
end; //case
 Form3.Texts;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
  ComboBox5.Enabled:=false;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
  ComboBox5.Enabled:=true;
end;

procedure TForm3.Edit2Exit(Sender: TObject);
begin
try
if Edit2.Text <> '' then StrToInt(Edit2.Text);
except
ShowMessage('Можна вводити тільки число!');
Edit2.Text:='';
Edit2.SetFocus;
end; //try-except
end;

procedure TForm3.Edit3Exit(Sender: TObject);
 var i:integer;
begin
i:=0;
try
if Edit3.Text <> '' then i:=StrToInt(Edit3.Text);
 if i <> 0 then
  if (i < 1950) or (i > 2050) then Edit3.Text:='2000';

except
ShowMessage('Можна вводити тільки число!');
Edit3.Text:='';
Edit3.SetFocus;
end; //try-except
end;

procedure TForm3.Edit30Change(Sender: TObject);
 var i:smallint;
begin
i:=Length(Edit30.Text);
 if i > 0 then
  begin
   if Edit30.Text[i] in ['0'..'9'] then else
     begin
      Beep;
      Edit30.Text:='';
     end;
   if Edit30.Text <> '0' then MaskEdit5.Enabled:=true
                         else begin
                               MaskEdit5.Text:='000:00';
                               MaskEdit5.Enabled:=false;
                              end;
  end;
end;

procedure TForm3.Edit31Change(Sender: TObject);
 var i:smallint;
begin
i:=Length(Edit31.Text);
 if i > 0 then
  begin
   if Edit31.Text[i] in ['0'..'9'] then else
     begin
      Beep;
      Edit31.Text:='';
     end;
   if Edit31.Text <> '0' then MaskEdit6.Enabled:=true
                         else begin
                               MaskEdit6.Text:='000:00';
                               MaskEdit6.Enabled:=false;
                              end;
  end;
end;

procedure TForm3.Edit32Change(Sender: TObject);
 var i:smallint;
begin
i:=Length(Edit32.Text);
 if i > 0 then
  begin
   if Edit32.Text[i] in ['0'..'9'] then else
     begin
      Beep;
      Edit32.Text:='';
     end;
   if Edit32.Text <> '0' then MaskEdit7.Enabled:=true
                         else begin
                               MaskEdit7.Text:='000:00';
                               MaskEdit7.Enabled:=false;
                              end;
  end;
end;

procedure TForm3.ToolButton15Click(Sender: TObject);
begin
 MyMessage:='Не введено всі необхідні дані!';
  Edit17.OnDblClick(Sender);                      //перевірка правильності вводу
   if CorrectData then begin                      //якщо правильно то
       SetLength(OtkazMas,CurrentNumber+1);    //збільшення масиву для внесення даних
        Edit17.OnClick(Sender);
         OtkazMas[CurrentNumber].ID:='';
          inc(CurrentNumber);
           ShowMessage('Внесено.');
            Form3.OnActivate(Sender);
             Modify:=true;
              PopUpMenu3.Items[3].Enabled:=false;
                       end                        //if CorrectData
           else ShowMessage(MyMessage);

end;               //ToolButton15Click


procedure TForm3.ComboBox6Exit(Sender: TObject);
var i:smallint;
begin

if not ComboBox5.Enabled then begin
                               i:=9;
                               repeat
                                inc(i);
                               until (ComboBox6.Items[i] = '--------------------') or (i > 100);
                               if ComboBox6.ItemIndex >= i then begin
                                                                 ShowMessage('Невірно введено станцію!');
                                                                 ComboBox6.ItemIndex:=0;
                                                                 ComboBox6.SetFocus;
                                                                end;
                              end;


end;

procedure TForm3.ComboBox5Exit(Sender: TObject);
var i:smallint;
begin
if (ComboBox5.Text = ComboBox6.Text) and (ComboBox6.Text <> '') then begin
     ShowMessage('Введено дві однакові станції!');
      ComboBox5.SetFocus;
                                        end;
i:=9;
 repeat
  inc(i);
 until (ComboBox5.Items[i] = '--------------------') or (i > 100);
if (ComboBox6.ItemIndex >= i) and (ComboBox5.ItemIndex >= i) then begin
     ShowMessage('Невірно введено станції!');
     ComboBox6.SetFocus;
                                                                  end;
end;

procedure TForm3.MaskEdit5Exit(Sender: TObject);
begin

try
 StrToInt(MaskEdit5.Text[1]);
 StrToInt(MaskEdit5.Text[2]);
 StrToInt(MaskEdit5.Text[3]);
 if StrToInt(MaskEdit5.Text[5]) > 5 then MaskEdit5.Text:='000:00';
 StrToInt(MaskEdit5.Text[6]);
except
 MaskEdit5.Text:='000:00';
end;

if MaskEdit5.Text = '000:00' then
  begin
    Edit30.Text:='';
    MaskEdit5.Enabled:=false;
  end;
 Form3.Texts;
end;

procedure TForm3.MaskEdit6Exit(Sender: TObject);
begin
try
 StrToInt(MaskEdit6.Text[1]);
 StrToInt(MaskEdit6.Text[2]);
 StrToInt(MaskEdit6.Text[3]);
 if StrToInt(MaskEdit6.Text[5]) > 5 then MaskEdit6.Text:='000:00';
 StrToInt(MaskEdit6.Text[6]);
except
 MaskEdit6.Text:='000:00';
end;

if MaskEdit6.Text = '000:00' then
  begin
    Edit31.Text:='';
    MaskEdit6.Enabled:=false;
  end;
 Form3.Texts;
end;

procedure TForm3.MaskEdit7Exit(Sender: TObject);
begin
try
 StrToInt(MaskEdit7.Text[1]);
 StrToInt(MaskEdit7.Text[2]);
 StrToInt(MaskEdit7.Text[3]);
 if StrToInt(MaskEdit7.Text[5]) > 5 then MaskEdit7.Text:='000:00';
 StrToInt(MaskEdit7.Text[6]);
except
 MaskEdit7.Text:='000:00';
end;

if MaskEdit7.Text = '000:00' then
  begin
    Edit32.Text:='';
    MaskEdit7.Enabled:=false;
  end;
 Form3.Texts;
end;

procedure TForm3.N207Click(Sender: TObject);
begin
if Form3.ShowHint then Form3.ShowHint:=false else Form3.ShowHint:=true;
end;

procedure TForm3.ComboBox7Exit(Sender: TObject);
 var i:smallint;
begin
//********************************
Zakr:=false;
Brak:=false;
if ComboBox7.ItemIndex = -1 then begin
                                  Memo3.Lines.Clear;
                                  Edit1.Text:='';
                                  ComboBox8.ItemIndex:=-1;
                                  ComboBox8.Text:='';
                                  ComboBox7.ItemIndex:=0;
                                 end;

if ComboBox3.ItemIndex = 0 then begin //АБ
   Case ComboBox7.ItemIndex of
        0,1,3..10:begin
                   Label13.Caption:='сигналу';
                   Label2.Enabled:=true;
//                   Edit1.Enabled:=true;
                  end;

        2,11:begin
              Label13.Caption:='';
//              Edit1.Enabled:=false;
              Edit1.Text:='';
              Label2.Enabled:=false;
             end;

   end; //Case
                                end;

if ComboBox3.ItemIndex = 1 then begin //ЕЦ
    Case ComboBox7.ItemIndex of

          0,13:begin
                Label13.Caption:='р.к.';
                Label2.Enabled:=true;
//                Edit1.Enabled:=true;
               end;

          1,2,10,11:begin
                     Label13.Caption:='стрілки';
                     Label2.Enabled:=true;
//                     Edit1.Enabled:=true;
                    end;

          3..5,9,12:begin
                     Label13.Caption:='сигналу';
                     Label2.Enabled:=true;
//                     Edit1.Enabled:=true;
                    end;

          6..8:begin
                Label13.Caption:='';
//                Edit1.Enabled:=false;
                Edit1.Text:='';
                Label2.Enabled:=false;
               end;

    end; //Case
                                end;

if ComboBox3.ItemIndex = 2 then begin //ДЦ
    Case ComboBox7.ItemIndex of
          0..4,6,7:begin
                    Label13.Caption:='';
//                    Edit1.Enabled:=false;
                    Edit1.Text:='';
                    Label2.Enabled:=false;
                   end;

          5:begin
             Label13.Caption:='сигналу';
             Label2.Enabled:=true;
//             Edit1.Enabled:=true;
            end;
    end;
                                end;

if ComboBox3.ItemIndex = 3 then begin //НАБ
    Case ComboBox7.ItemIndex of

          0,3:begin
               Label13.Caption:='';
//               Edit1.Enabled:=false;
               Edit1.Text:='';
               Label2.Enabled:=false;
              end;

          1,2,4,5,8:begin
                     Label13.Caption:='сигналу';
                     Label2.Enabled:=true;
//                     Edit1.Enabled:=true;
                    end;

          6,7:begin
               Label13.Caption:='р.к.';
               Label2.Enabled:=true;
//               Edit1.Enabled:=true;
              end;

    end; //case
                                end;

if ComboBox3.ItemIndex = 4 then begin //МКП
    Case ComboBox7.ItemIndex of

           0,1,6,7:begin
                    Label13.Caption:='';
//                    Edit1.Enabled:=false;
                    Edit1.Text:='';
                    Label2.Enabled:=false;
                   end;

           2,4,5,10:begin
                     Label13.Caption:='сигналу';
                     Label2.Enabled:=true;
//                     Edit1.Enabled:=true;
                    end;

           3:begin
              Label13.Caption:='стрілки';
              Label2.Enabled:=true;
//              Edit1.Enabled:=true;
             end;

           8,9:begin
                Label13.Caption:='р.к.';
                Label2.Enabled:=true;
//                Edit1.Enabled:=true;
               end;

    end; //case
                                end;

if ComboBox3.ItemIndex = 5 then begin //Переїзди
    Case ComboBox7.ItemIndex of

          0,1,2,5:begin
                   Label13.Caption:='';
//                   Edit1.Enabled:=false;
                   Edit1.Text:='';
                   Label2.Enabled:=false;
                  end;

          3,4,6:begin
                 Label13.Caption:='сигналу';
                 Label2.Enabled:=true;
//                 Edit1.Enabled:=true;
                end;

    end; //case
                                end;

if ComboBox3.ItemIndex = 6 then begin //Гірки
    Case ComboBox7.ItemIndex of

          0,1,2:begin
                 Label13.Caption:='';
//                 Edit1.Enabled:=false;
                 Edit1.Text:='';
                 Label2.Enabled:=false;
                end;

          3,4:begin
               Label13.Caption:='стрілки';
               Label2.Enabled:=true;
//               Edit1.Enabled:=true;
              end;

          5,6:begin
               Label13.Caption:='р.к.';
               Label2.Enabled:=true;
//               Edit1.Enabled:=true;
              end;

          7,8:begin
               Label13.Caption:='сигналу';
               Label2.Enabled:=true;
//               Edit1.Enabled:=true;
              end;

    end; //case
                                end;
//********************************
 for i:=0 to 20 do Vidp[i]:=true;

if ComboBox3.ItemIndex = 0 then begin //підготовка для перевірки на відповідність, АБ
  case ComboBox7.ItemIndex of

     1..4:begin
           Vidp[2]:=false;   //стрілки
           Vidp[3]:=false;   //стрілки
           Vidp[4]:=false;   //стрілки
           Vidp[16]:=false;  //гірка
           Zakr:=true;       //закриття системи
          end;

     0,5,7..9:begin
               Vidp[2]:=false;   //стрілки
               Vidp[3]:=false;   //стрілки
               Vidp[4]:=false;   //стрілки
               Vidp[16]:=false;  //гірка
              end;

     6,10,11:begin
                Vidp[1]:=false;     //сигнали
                Vidp[2]:=false;
                Vidp[3]:=false;
                Vidp[4]:=false;
                Vidp[16]:=false;
             end;

  end; //case
                                end; //АБ

if ComboBox3.ItemIndex = 1 then begin  //ЕЦ
  case ComboBox7.ItemIndex of

     0,9,12,13:begin
                Vidp[2]:=false;
                Vidp[3]:=false;
                Vidp[4]:=false;   //стрілки
                Vidp[16]:=false;
               end;

     1..8,10,11:begin
                 Vidp[16]:=false;
                end;

  end; //case
                                end;   //ЕЦ

if ComboBox3.ItemIndex = 3 then begin  //НАБ
  case ComboBox7.ItemIndex of

     0,3:begin
          Vidp[0]:=false;
          Vidp[1]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
          Zakr:=true;       //закриття системи
         end;

     5,8:begin
          Vidp[0]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
         end;

       1:begin
          Vidp[16]:=false;
          Zakr:=true;
         end;

       2:begin
          Vidp[0]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
          Zakr:=true;
         end;

       4:begin
          Vidp[16]:=false;
         end;

     6,7:begin
          Vidp[1]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
         end;

  end; //case
                                end;   //НАБ

if ComboBox3.ItemIndex = 2 then begin  //ДЦ
  case ComboBox7.ItemIndex of

     0,1:begin
          Vidp[0]:=false;
          Vidp[1]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
         end;

     2..7:begin
           Vidp[16]:=false;
          end;

  end; //case
                                end;   //ДЦ

if ComboBox3.ItemIndex = 4 then begin  //МКП
  case ComboBox7.ItemIndex of

     0,2,4,5:begin
          Vidp[16]:=false;
         end;

     1:begin
          Vidp[0]:=false;
          Vidp[1]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[15]:=false;
          Vidp[16]:=false;
         end;

     3:begin
          Vidp[1]:=false;
          Vidp[15]:=false;
          Vidp[16]:=false;
         end;

     6,7:begin
          Vidp[0]:=false;
          Vidp[1]:=false;
          Vidp[16]:=false;
         end;

     8,9:begin
          Vidp[1]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
         end;

     10:begin
         Vidp[0]:=false;
         Vidp[2]:=false;
         Vidp[3]:=false;
         Vidp[4]:=false;
         Vidp[16]:=false;
        end;

  end; //case
                                end;   //МКП

if ComboBox3.ItemIndex = 5 then begin  //Переїзди
  case ComboBox7.ItemIndex of

     0:for i:=0 to 16 do Vidp[i]:=false;

     1,2:begin
          Vidp[0]:=false;
          Vidp[1]:=false;
          Vidp[16]:=false;
         end;

     3,4:begin
          Vidp[0]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
         end;

     5:begin
          Vidp[0]:=false;
          Vidp[1]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
       end;

     6:begin
          Vidp[0]:=false;
          Vidp[2]:=false;
          Vidp[3]:=false;
          Vidp[4]:=false;
          Vidp[16]:=false;
         end;

  end; //case
                                end;   //Переїзди

end;               //ComboBox7Exit

procedure TForm3.DTP4Change(Sender: TObject);
begin
 Timer1.Enabled:=false;
 Timer1.Enabled:=true;
end;

procedure TForm3.DateTimePicker4Change(Sender: TObject);
 var i:integer;
     Month,Year:smallint;
     String8,Date1,Date2:string[8];
     Counter:smallint;
begin
Timer1.Enabled:=false;
//** проверка на наличие измененных записей и их обновление **
if High(OtkazMas) >= 0 then begin
   for i:=0 to High(OtkazMas) do begin
     if OtkazMas[i].Modified = true then begin
       Form3.InsertData(i);
              OtkazMas[i].Modified:=false;
                                         end;
                                 end;
                            end;
//*************** чтение данных из БД ****************
Modify:=false;
PopUpMenu3.Items[3].Enabled:=true;
 String8:=DateToStr(DateTimePicker4.Date);
  Month:=StrToInt(String8[4] + String8[5]);
   Year:=StrToInt(String8[7] + String8[8]);
    Date1:='01.' + String8[4] + String8[5] + '.' + String8[7] + String8[8];
   inc(Month);
  if Month > 12 then begin
                      Month:=1;
                      Inc(Year);
                     end;
    if Month > 9 then Date2:='01.' + IntToStr(Month) else Date2:='01.0' + IntToStr(Month);
     if Year > 9 then Date2:=Date2 + '.' + IntToStr(Year) else Date2:=Date2 + '.0' + IntToStr(Year);

 Counter:=0;
 i:=1;
try

with DM2.Otkaz do begin  //чтение сбоев за текущий месяц
        Close;
        SQL.Clear;
        SQL.Add('Select * from otkaz');
        SQL.Add('where (DateBegin >= "' + Date1 + '") and (DateBegin < "' + Date2 + '")');
        SQL.Add('order by Number');
        Open;
          First; //получение числа записей
           while not EOF do begin
            inc(Counter);
            Next;
                            end;
               CurrentNumber:=Counter+1;
                SetLength(OtkazMas,Counter+1);  //номер элемента массива соответствует номеру отказа
 if Counter > 0 then begin
          First;
           while not EOF do begin //занесение отказов в массив
            OtkazMas[i].ID:=Fields[0].AsString;
            OtkazMas[i].Number:=Fields[1].AsString;
            OtkazMas[i].DateBegin:=Fields[2].AsString; //datetime??
            OtkazMas[i].DateEnd:=Fields[3].AsString;
            OtkazMas[i].ExDateBegin:=Fields[4].AsString;
            OtkazMas[i].ExDateEnd:=Fields[5].AsString;
            OtkazMas[i].Trivalist:=Fields[6].AsString;
            OtkazMas[i].SH:=Fields[7].AsString;
            OtkazMas[i].PH:=Fields[8].AsString;
            OtkazMas[i].Slujba:=Fields[9].AsString;
            OtkazMas[i].Systema:=Fields[10].AsString;
            OtkazMas[i].Station1:=Fields[11].AsString;
            OtkazMas[i].Station2:=Fields[12].AsString;
            OtkazMas[i].Proyava:=Fields[13].AsString;
            OtkazMas[i].Element:=Fields[14].AsString;
            OtkazMas[i].Cause1:=Fields[15].AsString;
            OtkazMas[i].Cause2:=Fields[16].AsString;
            OtkazMas[i].Cause3:=Fields[17].AsString;
            OtkazMas[i].Cause4:=Fields[18].AsString;
            OtkazMas[i].Cause5:=Fields[19].AsString;
            OtkazMas[i].Cause6:=Fields[20].AsString;
            OtkazMas[i].Clas1:=Fields[21].AsString;
            OtkazMas[i].Clas2:=Fields[22].AsString;
            OtkazMas[i].Proizd:=Fields[23].AsString;
            OtkazMas[i].WOProizd:=Fields[24].AsString;
            OtkazMas[i].Priglasit:=Fields[25].AsString;
            OtkazMas[i].Closed:=Fields[26].AsString;
            OtkazMas[i].Pasajir:=Fields[27].AsString;
            OtkazMas[i].Primiskih:=Fields[28].AsString;
            OtkazMas[i].Vantajnih:=Fields[29].AsString;
            OtkazMas[i].TimePas:=Fields[30].AsString;
            OtkazMas[i].TimePrim:=Fields[31].AsString;
            OtkazMas[i].TimeVant:=Fields[32].AsString;
            OtkazMas[i].Incident:=Fields[33].AsString;
            OtkazMas[i].PrimIncid:=Fields[34].AsString;
            OtkazMas[i].PrimClosed:=Fields[35].AsString;
            OtkazMas[i].NumberPrib:=Fields[36].AsString;
            OtkazMas[i].Made:=Fields[37].AsString;
            OtkazMas[i].PribChecked:=Fields[38].AsString;
            OtkazMas[i].NumberElem:=Fields[39].AsString;
            OtkazMas[i].Primitka:=Fields[40].AsString;
            OtkazMas[i].Texts1:=Fields[41].AsString;
            OtkazMas[i].Modified:=false;
               inc(i);
                Next;
                            end;
                     end;  //if counter > 0
                  end; //with
DateTimePicker12.Date:=DateTimePicker4.Date;
DateTimePicker13.Date:=DateTimePicker4.Date;
Edit17.Text:=IntToStr(CurrentNumber);
Edit4.Text:=Edit17.Text;
ToolButton1.OnClick(Sender);
//Form3.OnActivate(Sender);
except
 ShowMessage('Помилка при роботі з БД!');
end; //try-except
//*************************************************

end;           //DateTimePicker4Change

procedure TForm3.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);

 procedure ShowOtkaz;

         type THoursMinutes = record
              Hours:string[3];
              Minutes:string[2];
                              end; //record

        var Minutes1,i:integer;

        function getHours:THoursMinutes;
         var H:String[3];
        begin
                H:=IntToStr(Minutes1 div 60);
                if StrToInt(H) < 100 then H:='0' + H;
                if StrToInt(H) < 10 then H:='0' + H;
                getHours.Hours:=H;
                Minutes1:=Minutes1 mod 60;
                if Minutes1 < 10 then getHours.Minutes:='0' + IntToStr(Minutes1) else getHours.Minutes:=IntToStr(Minutes1);
        end;
  begin  //ShowOtkaz
 Form3.OnActivate(Sender);
//1
      DateTimePicker12.SetFocus;
      DateTimePicker12.DateTime:=StrToDateTime(OtkazMas[CurrentNumber].DateBegin);
      DateTimePicker13.SetFocus;
      DateTimePicker13.DateTime:=StrToDateTime(OtkazMas[CurrentNumber].DateEnd);
      MaskEdit8.SetFocus;
       if Length(TimeToStr(DateTimePicker12.Time)) = 7 then MaskEdit8.Text:='0' + copy(TimeToStr(DateTimePicker12.Time),1,4)
                                                       else MaskEdit8.Text:=copy(TimeToStr(DateTimePicker12.Time),1,5);
      MaskEdit9.SetFocus;
       if Length(TimeToStr(DateTimePicker13.Time)) = 7 then MaskEdit9.Text:='0' + copy(TimeToStr(DateTimePicker13.Time),1,4)
                                                       else MaskEdit9.Text:=copy(TimeToStr(DateTimePicker13.Time),1,5);
//      MaskEdit9.SetFocus;

//2
      if OtkazMas[CurrentNumber].ExDateBegin <> '01.01.01' then begin
          MaskEdit10.Enabled:=true;
          MaskEdit11.Enabled:=true;
          DateTimePicker2.Enabled:=true;
          DateTimePicker3.Enabled:=true;
          Button1.Caption:='-';

          DateTimePicker2.DateTime:=StrToDateTime(OtkazMas[CurrentNumber].ExDateBegin);
          DateTimePicker3.DateTime:=StrToDateTime(OtkazMas[CurrentNumber].ExDateEnd);
          if Length(TimeToStr(DateTimePicker2.Time)) = 7 then MaskEdit10.Text:='0' + copy(TimeToStr(DateTimePicker2.Time),1,4)
                           else MaskEdit10.Text:=copy(TimeToStr(DateTimePicker2.Time),1,5);
          if Length(TimeToStr(DateTimePicker3.Time)) = 7 then MaskEdit11.Text:='0' + copy(TimeToStr(DateTimePicker3.Time),1,4)
                           else MaskEdit11.Text:=copy(TimeToStr(DateTimePicker3.Time),1,5);

          DateTimePicker2.SetFocus;
          DateTimePicker3.SetFocus;
          MaskEdit10.SetFocus;
          MaskEdit11.SetFocus;

//          MaskEdit11.SetFocus;
                                                                end;

          ComboBox4.SetFocus;
          ComboBox4.Text:=OtkazMas[CurrentNumber].SH;
         i:=0;
          while i < ComboBox4.Items.Count do
           if Pos(ComboBox4.Items[i],OtkazMas[CurrentNumber].SH) <> 0 then
             begin
              ComboBox4.ItemIndex:=i;
              Break;
             end
             else inc(i);

        ComboBox2.SetFocus;
        if OtkazMas[CurrentNumber].Slujba = 'Ш' then ComboBox2.ItemIndex:=0;
        if OtkazMas[CurrentNumber].Slujba = 'П' then ComboBox2.ItemIndex:=1;
        if OtkazMas[CurrentNumber].Slujba = 'Д' then ComboBox2.ItemIndex:=2;
        if OtkazMas[CurrentNumber].Slujba = 'Е' then ComboBox2.ItemIndex:=3;
        if OtkazMas[CurrentNumber].Slujba = 'Т' then ComboBox2.ItemIndex:=4;
        if OtkazMas[CurrentNumber].Slujba = 'В' then ComboBox2.ItemIndex:=5;
        if OtkazMas[CurrentNumber].Slujba = 'І' then ComboBox2.ItemIndex:=6;

        ComboBox3.SetFocus;
        if OtkazMas[CurrentNumber].Systema = 'А' then ComboBox3.ItemIndex:=0;
        if OtkazMas[CurrentNumber].Systema = 'Е' then ComboBox3.ItemIndex:=1;
        if OtkazMas[CurrentNumber].Systema = 'Д' then ComboBox3.ItemIndex:=2;
        if OtkazMas[CurrentNumber].Systema = 'Н' then ComboBox3.ItemIndex:=3;
        if OtkazMas[CurrentNumber].Systema = 'М' then ComboBox3.ItemIndex:=4;
        if OtkazMas[CurrentNumber].Systema = 'П' then ComboBox3.ItemIndex:=5;
        if OtkazMas[CurrentNumber].Systema = 'Г' then ComboBox3.ItemIndex:=6;

        if ComboBox11.Enabled then begin
                                    ComboBox11.SetFocus;
                                     i:=0;
                while i < ComboBox11.Items.Count do
                 if Pos(ComboBox11.Items[i],OtkazMas[CurrentNumber].PH) <> 0 then
                    begin
                      ComboBox11.ItemIndex:=i;
                      Break;
                    end
                    else inc(i);
                                   end;

        ComboBox6.SetFocus;
        ComboBox6.Text:=OtkazMas[CurrentNumber].Station1;
         i:=0;
          while i < ComboBox6.Items.Count do
           if Pos(ComboBox6.Items[i],OtkazMas[CurrentNumber].Station1) <> 0 then
             begin
              ComboBox6.ItemIndex:=i;
              Break;
             end
             else inc(i);

        if OtkazMas[CurrentNumber].Station2 = '                              ' then begin
                                                                                     ComboBox5.Enabled:=false;
                                                                                     ComboBox5.Text:='';
                                                                                     ComboBox5.ItemIndex:=-1;
                                                                                    end;

        if ComboBox5.Enabled then begin
             ComboBox5.SetFocus;
             ComboBox5.Text:=OtkazMas[CurrentNumber].Station2;
         i:=0;
          while i < ComboBox5.Items.Count do
           if Trim(ComboBox5.Items[i]) = Trim(OtkazMas[CurrentNumber].Station2) then
             begin
              ComboBox5.ItemIndex:=i;
              Break;
             end
             else inc(i);
                                  end;

        ComboBox7.SetFocus;
         ComboBox7.Text:=OtkazMas[CurrentNumber].Proyava;
         i:=0;
          while i < ComboBox7.Items.Count do
           if Pos(ComboBox7.Items[i],OtkazMas[CurrentNumber].Proyava) <> 0 then
             begin
              ComboBox7.ItemIndex:=i;
              Break;
             end
             else inc(i);

           Memo5.SetFocus;
//         ComboBox8.SetFocus;
         ComboBox8.Text:=OtkazMas[CurrentNumber].Element;
         i:=0;
          while i < ComboBox8.Items.Count do
           if Pos(ComboBox8.Items[i],OtkazMas[CurrentNumber].Element) <> 0 then
             begin
              ComboBox8.ItemIndex:=i;
              Break;
             end
             else inc(i);
           if OtkazMas[CurrentNumber].Element = 'Прилади захисту          ' then
             ComboBox8.ItemIndex:=i+1;

//        Memo3.SetFocus;
        Memo3.Lines.Clear;                        //по 50 символов в строке
        Memo3.Lines.Add(OtkazMas[CurrentNumber].Cause1);
         if OtkazMas[CurrentNumber].Cause2 <> '                                                  ' then
        Memo3.Lines.Add(OtkazMas[CurrentNumber].Cause2);
         if OtkazMas[CurrentNumber].Cause3 <> '                                                  ' then
        Memo3.Lines.Add(OtkazMas[CurrentNumber].Cause3);
         if OtkazMas[CurrentNumber].Cause4 <> '                                                  ' then
        Memo3.Lines.Add(OtkazMas[CurrentNumber].Cause4);
         if OtkazMas[CurrentNumber].Cause5 <> '                                                  ' then
        Memo3.Lines.Add(OtkazMas[CurrentNumber].Cause5);
         if OtkazMas[CurrentNumber].Cause6 <> '                                                  ' then
        Memo3.Lines.Add(OtkazMas[CurrentNumber].Cause6);
          Memo3.SelStart:=0;
          Memo3.SelLength:=0;
        if ComboBox9.Enabled then begin
        ComboBox9.SetFocus;
         ComboBox9.Text:=OtkazMas[CurrentNumber].Clas1;
         i:=0;
          while i < ComboBox9.Items.Count do
           if Pos(ComboBox9.Items[i],OtkazMas[CurrentNumber].Clas1) <> 0 then
             begin
              ComboBox9.ItemIndex:=i;
              Break;
             end
             else inc(i);
                   ComboBox9.OnExit(Sender);
                                  end
                                  else ComboBox10.Enabled:=false;

         if ComboBox10.Enabled then begin
             ComboBox10.SetFocus;
             ComboBox10.Text:=OtkazMas[CurrentNumber].Clas2;
                i:=0;
                  while i < ComboBox10.Items.Count do
                   if Pos(ComboBox10.Items[i],OtkazMas[CurrentNumber].Clas2) <> 0 then
                        begin
                         ComboBox10.ItemIndex:=i;
                         Break;
                        end
                        else inc(i);
                                     end;

        Edit26.Text:=OtkazMas[CurrentNumber].Proizd;
         if StrToInt(Edit26.Text) = 0 then Edit26.Text:='';
        Edit27.Text:=OtkazMas[CurrentNumber].WOProizd;
         if StrToInt(Edit27.Text) = 0 then Edit27.Text:='';
        Edit28.Text:=OtkazMas[CurrentNumber].Priglasit;
         if StrToInt(Edit28.Text) = 0 then Edit28.Text:='';
        Edit29.Text:=OtkazMas[CurrentNumber].Closed;
         if StrToInt(Edit29.Text) = 0 then Edit29.Text:=''  else begin
                                                                 Label7.Enabled:=true;
                                                                 ComboBox13.Enabled:=true;
                                                                end;;
        Edit30.Text:=OtkazMas[CurrentNumber].Pasajir;
         if StrToInt(Edit30.Text) = 0 then Edit30.Text:='';
        Edit31.Text:=OtkazMas[CurrentNumber].Primiskih;
         if StrToInt(Edit31.Text) = 0 then Edit31.Text:='';
        Edit32.Text:=OtkazMas[CurrentNumber].Vantajnih;
         if StrToInt(Edit32.Text) = 0 then Edit32.Text:='';

        Minutes1:=StrToInt(OtkazMas[CurrentNumber].TimePas);
           MaskEdit5.Text:=getHours.Hours + ':' + getHours.Minutes;

        Minutes1:=StrToInt(OtkazMas[CurrentNumber].TimePrim);
           MaskEdit6.Text:=getHours.Hours + ':' + getHours.Minutes;

        Minutes1:=StrToInt(OtkazMas[CurrentNumber].TimeVant);
           MaskEdit7.Text:=getHours.Hours + ':' + getHours.Minutes;

        if MaskEdit5.Text <> '000:00' then MaskEdit5.Enabled:=true
                                      else MaskEdit5.Enabled:=false;

        if MaskEdit6.Text <> '000:00' then MaskEdit6.Enabled:=true
                                      else MaskEdit6.Enabled:=false;

        if MaskEdit7.Text <> '000:00' then MaskEdit7.Enabled:=true
                                      else MaskEdit7.Enabled:=false;

        CheckBox1.Checked:=false;
        CheckBox2.Checked:=false;
        CheckBox3.Checked:=false;

        if OtkazMas[CurrentNumber].Incident = 'П' then CheckBox1.Checked:=true;
        if OtkazMas[CurrentNumber].Incident = 'І' then CheckBox2.Checked:=true;
        if OtkazMas[CurrentNumber].Incident = 'С' then CheckBox3.Checked:=true;

//        Memo5.Lines.Clear;
         Memo5.Text:=(OtkazMas[CurrentNumber].Primitka);
          Memo5.SelStart:=0;
          Memo5.SelLength:=0;

//        Memo6.Lines.Clear;
//        Memo1.Lines.Clear;
         Memo1.Text:=(OtkazMas[CurrentNumber].Texts1);
          Memo1.SelStart:=0;
          Memo1.SelLength:=0;
          
         if ComboBox1.Enabled then
            begin
             ComboBox1.SetFocus;
             ComboBox1.Text:=OtkazMas[CurrentNumber].PrimIncid;
         i:=0;
          while i < ComboBox1.Items.Count do
           if Pos(ComboBox1.Items[i],OtkazMas[CurrentNumber].PrimIncid) <> 0 then
             begin
              ComboBox1.ItemIndex:=i;
              Break;
             end
             else inc(i);
            end;

         if ComboBox13.Enabled then
            begin
             ComboBox13.SetFocus;
             ComboBox13.Text:=OtkazMas[CurrentNumber].PrimClosed;
         i:=0;
          while i < ComboBox13.Items.Count do
           if Pos(ComboBox13.Items[i],OtkazMas[CurrentNumber].PrimClosed) <> 0 then
             begin
              ComboBox13.ItemIndex:=i;
              Break;
             end
             else inc(i);
            end;


         Edit2.Text:=OtkazMas[CurrentNumber].NumberPrib;
          if StrToInt(Edit2.Text) = 0 then Edit2.Text:='';
         Edit3.Text:=OtkazMas[CurrentNumber].Made;
          if StrToInt(Edit3.Text) = 0 then Edit3.Text:='';

         DateTimePicker1.Date:=StrToDate(OtkazMas[CurrentNumber].PribChecked);

         Edit1.Text:=OtkazMas[CurrentNumber].NumberElem;
         
         DateTimePicker12.SetFocus;

    if (Edit30.Text <> '') or (Edit31.Text <> '') or (Edit32.Text <> '') or (ComboBox10.ItemIndex = 1) then
     begin
      Memo1.Enabled:=true;
      Label12.Enabled:=true;
     end;

  end;      //ShowOtkaz}

begin          //DBNavigator1Click
PopUpMenu3.Items[4].Enabled:=false;
ToolButton15.Enabled:=false;
ToolButton2.Enabled:=false;
ToolButton16.Enabled:=true;
ToolButton17.Enabled:=true;
ToolButton1.Enabled:=true;

if Button = nbPrior then  //предыдущая запись
    if CurrentNumber > 1 then begin
     dec(CurrentNumber);
      Edit17.Text:=IntToStr(CurrentNumber);
        ShowOtkaz;
                              end
                         else begin
   DM2.Otkaz.First;
    CurrentNumber:=1;
     Edit17.Text:=IntToStr(CurrentNumber);
       ShowOtkaz;
                              end;

if Button = nbNext then  //следующая запись
    if CurrentNumber < High(OtkazMas) then begin
      inc(CurrentNumber);
       Edit17.Text:=IntToStr(CurrentNumber);
         ShowOtkaz;
                                           end
                                      else begin
                                            DM2.Otkaz.Last;
                                            CurrentNumber:=High(OtkazMas);
                                            Edit17.Text:=IntToStr(CurrentNumber);
                                            ShowOtkaz;
                                           end;

if Button = nbFirst then begin //первая запись
    DM2.Otkaz.First;
     CurrentNumber:=1;
      Edit17.Text:=IntToStr(CurrentNumber);
       ShowOtkaz;
                         end;

if Button = nbLast then begin //последняя запись
    DM2.Otkaz.Last;
     CurrentNumber:=High(OtkazMas);
      Edit17.Text:=IntToStr(CurrentNumber);
       ShowOtkaz;
                        end;

end;            //DBNavigator1Click

procedure TForm3.ToolButton1Click(Sender: TObject);
begin
PopUpMenu3.Items[4].Enabled:=true;
ToolButton15.Enabled:=true;
ToolButton2.Enabled:=true;
ToolButton16.Enabled:=false;
ToolButton17.Enabled:=false;
ToolButton1.Enabled:=false;
CurrentNumber:=High(OtkazMas)+1;
DM2.Otkaz.Last;
Form3.OnActivate(Sender);
end;

procedure TForm3.ToolButton16Click(Sender: TObject);       //Change data
var ID:string;
begin
ID:=OtkazMas[CurrentNumber].ID;
if MessageDlg('Ви впевнені?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
           MyMessage:='Не введено всі необхідні дані!';
            Edit17.OnDblClick(Sender);                      //перевірка правильності вводу
             if CorrectData then begin                      //якщо правильно то
                  Edit17.OnClick(Sender);
                   OtkazMas[CurrentNumber].ID:=ID;
                                 end
                            else ShowMessage(MyMessage);     
                                                                         end;
end;

procedure TForm3.ToolButton2Click(Sender: TObject);
var NewNomer,i:integer;
    SNomer:string;
begin
try
 if InputQuery('Номер?','Введіть номер під яким вставити картку',SNomer) then
   NewNomer:=StrToInt(SNomer) else NewNomer:=-1;
except
 NewNomer:=-1;
end;
           MyMessage:='Не введено всі необхідні дані!';
            Edit17.OnDblClick(Sender);                      //перевірка правильності вводу
             if CorrectData then begin                      //якщо правильно то
if (NewNomer > 0) and (NewNomer <= High(OtkazMas)+1)
   then begin
         SetLength(OtkazMas,High(OtkazMas)+2);
          for i:=High(OtkazMas) downto NewNomer+1 do begin
            OtkazMas[i].ID:=OtkazMas[i-1].ID;
            OtkazMas[i].Number:=IntToStr(StrToInt(OtkazMas[i-1].Number)+1);
            OtkazMas[i].DateBegin:=OtkazMas[i-1].DateBegin;
            OtkazMas[i].DateEnd:=OtkazMas[i-1].DateEnd;
            OtkazMas[i].ExDateBegin:=OtkazMas[i-1].ExDateBegin;
            OtkazMas[i].ExDateEnd:=OtkazMas[i-1].ExDateEnd;
            OtkazMas[i].Trivalist:=OtkazMas[i-1].Trivalist;
            OtkazMas[i].SH:=OtkazMas[i-1].SH;
            OtkazMas[i].PH:=OtkazMas[i-1].PH;
            OtkazMas[i].Slujba:=OtkazMas[i-1].Slujba;
            OtkazMas[i].Systema:=OtkazMas[i-1].Systema;
            OtkazMas[i].Station1:=OtkazMas[i-1].Station1;
            OtkazMas[i].Station2:=OtkazMas[i-1].Station2;
            OtkazMas[i].Proyava:=OtkazMas[i-1].Proyava;
            OtkazMas[i].Element:=OtkazMas[i-1].Element;
            OtkazMas[i].Cause1:=OtkazMas[i-1].Cause1;
            OtkazMas[i].Cause2:=OtkazMas[i-1].Cause2;
            OtkazMas[i].Cause3:=OtkazMas[i-1].Cause3;
            OtkazMas[i].Cause4:=OtkazMas[i-1].Cause4;
            OtkazMas[i].Cause5:=OtkazMas[i-1].Cause5;
            OtkazMas[i].Cause6:=OtkazMas[i-1].Cause6;
            OtkazMas[i].Clas1:=OtkazMas[i-1].Clas1;
            OtkazMas[i].Clas2:=OtkazMas[i-1].Clas2;
            OtkazMas[i].Proizd:=OtkazMas[i-1].Proizd;
            OtkazMas[i].WOProizd:=OtkazMas[i-1].WOProizd;
            OtkazMas[i].Priglasit:=OtkazMas[i-1].Priglasit;
            OtkazMas[i].Closed:=OtkazMas[i-1].Closed;
            OtkazMas[i].Pasajir:=OtkazMas[i-1].Pasajir;
            OtkazMas[i].Primiskih:=OtkazMas[i-1].Primiskih;
            OtkazMas[i].Vantajnih:=OtkazMas[i-1].Vantajnih;
            OtkazMas[i].TimePas:=OtkazMas[i-1].TimePas;
            OtkazMas[i].TimePrim:=OtkazMas[i-1].TimePrim;
            OtkazMas[i].TimeVant:=OtkazMas[i-1].TimeVant;
            OtkazMas[i].Incident:=OtkazMas[i-1].Incident;
            OtkazMas[i].PrimIncid:=OtkazMas[i-1].PrimIncid;
            OtkazMas[i].PrimClosed:=OtkazMas[i-1].PrimClosed;
            OtkazMas[i].NumberPrib:=OtkazMas[i-1].NumberPrib;
            OtkazMas[i].Made:=OtkazMas[i-1].Made;
            OtkazMas[i].PribChecked:=OtkazMas[i-1].PribChecked;
            OtkazMas[i].NumberElem:=OtkazMas[i-1].NumberElem;
            OtkazMas[i].Primitka:=OtkazMas[i-1].Primitka;
            OtkazMas[i].Texts1:=OtkazMas[i-1].Texts1;
            OtkazMas[i].Modified:=true;
                                                     end;
             CurrentNumber:=NewNomer;
              Edit17.OnClick(Sender);
               OtkazMas[CurrentNumber].ID:='';              
               CurrentNumber:=High(OtkazMas)+1;
                ShowMessage('Внесено.');
                 Form3.OnActivate(Sender);
                  Modify:=true;
                   PopUpMenu3.Items[3].Enabled:=false;
        end                                        //if nomer correct
   else ShowMessage('Невірний номер!');
                                 end               //if data correct
                            else ShowMessage(MyMessage);
end;

procedure TForm3.ToolButton17Click(Sender: TObject);
 var DelNumber,i:integer;
begin

if MessageDlg('Ви впевнені що потрібно видалити запис?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
       DelNumber:=CurrentNumber;
//**************************************************
        with DM2.Otkaz do begin
             Close;
             SQL.Clear;
             SQL.Add('Delete from Otkaz');
             SQL.Add('where Otkaz_ID =' + OtkazMas[DelNumber].ID);
             ExecSQL;
                          end; //with
//**************************************************
          for i:=DelNumber to High(OtkazMas)-1 do begin
            OtkazMas[i].ID:=OtkazMas[i+1].ID;
            OtkazMas[i].Number:=IntToStr(StrToInt(OtkazMas[i+1].Number)-1);
            OtkazMas[i].DateBegin:=OtkazMas[i+1].DateBegin;
            OtkazMas[i].DateEnd:=OtkazMas[i+1].DateEnd;
            OtkazMas[i].ExDateBegin:=OtkazMas[i+1].ExDateBegin;
            OtkazMas[i].ExDateEnd:=OtkazMas[i+1].ExDateEnd;
            OtkazMas[i].Trivalist:=OtkazMas[i+1].Trivalist;
            OtkazMas[i].SH:=OtkazMas[i+1].SH;
            OtkazMas[i].PH:=OtkazMas[i+1].PH;
            OtkazMas[i].Slujba:=OtkazMas[i+1].Slujba;
            OtkazMas[i].Systema:=OtkazMas[i+1].Systema;
            OtkazMas[i].Station1:=OtkazMas[i+1].Station1;
            OtkazMas[i].Station2:=OtkazMas[i+1].Station2;
            OtkazMas[i].Proyava:=OtkazMas[i+1].Proyava;
            OtkazMas[i].Element:=OtkazMas[i+1].Element;
            OtkazMas[i].Cause1:=OtkazMas[i+1].Cause1;
            OtkazMas[i].Cause2:=OtkazMas[i+1].Cause2;
            OtkazMas[i].Cause3:=OtkazMas[i+1].Cause3;
            OtkazMas[i].Cause4:=OtkazMas[i+1].Cause4;
            OtkazMas[i].Cause5:=OtkazMas[i+1].Cause5;
            OtkazMas[i].Cause6:=OtkazMas[i+1].Cause6;
            OtkazMas[i].Clas1:=OtkazMas[i+1].Clas1;
            OtkazMas[i].Clas2:=OtkazMas[i+1].Clas2;
            OtkazMas[i].Proizd:=OtkazMas[i+1].Proizd;
            OtkazMas[i].WOProizd:=OtkazMas[i+1].WOProizd;
            OtkazMas[i].Priglasit:=OtkazMas[i+1].Priglasit;
            OtkazMas[i].Closed:=OtkazMas[i+1].Closed;
            OtkazMas[i].Pasajir:=OtkazMas[i+1].Pasajir;
            OtkazMas[i].Primiskih:=OtkazMas[i+1].Primiskih;
            OtkazMas[i].Vantajnih:=OtkazMas[i+1].Vantajnih;
            OtkazMas[i].TimePas:=OtkazMas[i+1].TimePas;
            OtkazMas[i].TimePrim:=OtkazMas[i+1].TimePrim;
            OtkazMas[i].TimeVant:=OtkazMas[i+1].TimeVant;
            OtkazMas[i].Incident:=OtkazMas[i+1].Incident;
            OtkazMas[i].PrimIncid:=OtkazMas[i+1].PrimIncid;
            OtkazMas[i].PrimClosed:=OtkazMas[i+1].PrimClosed;
            OtkazMas[i].NumberPrib:=OtkazMas[i+1].NumberPrib;
            OtkazMas[i].Made:=OtkazMas[i+1].Made;
            OtkazMas[i].PribChecked:=OtkazMas[i+1].PribChecked;
            OtkazMas[i].NumberElem:=OtkazMas[i+1].NumberElem;
            OtkazMas[i].Primitka:=OtkazMas[i+1].Primitka;
            OtkazMas[i].Texts1:=OtkazMas[i+1].Texts1;
            OtkazMas[i].Modified:=true;
                                                  end;
             SetLength(OtkazMas,High(OtkazMas));
              ShowMessage('Видалено!');
               CurrentNumber:=High(OtkazMas)+1;
               PopUpMenu3.Items[4].Enabled:=true;
                ToolButton15.Enabled:=true;
                ToolButton2.Enabled:=true;
                ToolButton16.Enabled:=false;
                ToolButton17.Enabled:=false;
                ToolButton1.Enabled:=false;
               Timer1.OnTimer(Sender);
              Form3.OnActivate(Sender);
      end;

end;             //ToolButton17.Click

procedure TForm3.ComboBox2Change(Sender: TObject);
begin

if ComboBox4.ItemIndex = -1 then begin    //служба Ш
                                  ComboBox4.ItemIndex:=0;
                                  ComboBox4.OnExit(Sender);
                                 end;

if ComboBox2.ItemIndex = 1 then begin    //служба П
                                 ComboBox11.Enabled:=true;
                                 Label8.Enabled:=true;
                                end
                           else begin
                                 ComboBox11.Enabled:=false;
                                 Label8.Enabled:=false;
                                end;

if ComboBox2.ItemIndex = 0 then begin
                                 ComboBox9.Enabled:=true;
                                 Label6.Enabled:=true;
                                 Label64.Enabled:=true;
                                end
                           else begin
                                 ComboBox9.Enabled:=false;
                                 ComboBox10.Enabled:=false;
                                 Label6.Enabled:=false;
                                 Label64.Enabled:=false;
                                end;
 ComboBox11.ItemIndex:=0;

//******** робота з меню елементів **********
 case ComboBox2.ItemIndex of

     0,1,4,5,6:ComboBox8.Items.Assign(List90);

     2,3:begin
          ComboBox8.Items.Assign(List90);

          ComboBox8.Items.Delete(20);
          ComboBox8.Items.Delete(19);
          ComboBox8.Items.Delete(18);
          ComboBox8.Items.Add('Пристрої СЦБ справні');
         end;

 end; //case
end;

procedure TForm3.ComboBox10Exit(Sender: TObject);
begin
 if ComboBox10.ItemIndex = -1 then ComboBox10.ItemIndex:=0;
  Form3.Texts;
end;

procedure TForm3.ComboBox2Exit(Sender: TObject);
begin
 if ComboBox2.ItemIndex = -1 then ComboBox2.ItemIndex:=0;
 ComboBox2.OnChange(Sender);
end;

procedure TForm3.ComboBox9Exit(Sender: TObject);
begin
 if ComboBox9.ItemIndex = -1 then ComboBox9.ItemIndex:=0;
 ComboBox9.OnChange(Sender);
 if ComboBox10.Enabled then ComboBox10.SetFocus;
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
begin
   Label2.Enabled:=false;    //2,1,13 number of element
   Label13.Caption:='';
//   Edit1.Enabled:=false;
   ComboBox7.Clear;
   ComboBox7.Text:='';
end;

procedure TForm3.MaskEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then MaskEdit9.SetFocus;
end;

procedure TForm3.MaskEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then Button1.SetFocus;
end;

procedure TForm3.MaskEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then MaskEdit10.SetFocus;
end;

procedure TForm3.MaskEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then ComboBox4.SetFocus;
end;

procedure TForm3.Edit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_RETURN) and (Edit30.Text <> '') then MaskEdit5.SetFocus;
end;

procedure TForm3.Edit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_RETURN) and (Edit31.Text <> '') then MaskEdit6.SetFocus;
end;

procedure TForm3.Edit32KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_RETURN) and (Edit32.Text <> '') then MaskEdit7.SetFocus;
end;

procedure TForm3.MaskEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then Edit31.SetFocus;
end;

procedure TForm3.MaskEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then Edit32.SetFocus;
end;

procedure TForm3.MaskEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then CheckBox1.SetFocus;
end;

procedure TForm3.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then ListBox1.OnDblClick(Sender);
end;

procedure TForm3.Edit17DblClick(Sender: TObject);
begin
CorrectData:=true;
//************ Перевірка правильності вводу *******************************
//1.Перекриття сигналу
if (Edit26.Text = '') and (Edit27.Text = '') then
  case ComboBox3.ItemIndex of
        0: if ComboBox7.ItemIndex = 5 then begin
                                            CorrectData:=false;
                                            MyMessage:='Не введено перекриття сигналу!';
                                           end;
        1: if ComboBox7.ItemIndex = 3 then begin
                                            CorrectData:=false;
                                            MyMessage:='Не введено перекриття сигналу!';
                                           end;
        3: if ComboBox7.ItemIndex = 4 then begin
                                            CorrectData:=false;
                                            MyMessage:='Не введено перекриття сигналу!';
                                           end;
        4: if (ComboBox7.ItemIndex = 4) or (ComboBox7.ItemIndex = 5) then begin
                                            CorrectData:=false;
                                            MyMessage:='Не введено перекриття сигналу!';
                                                                          end;
  end; //case

//2.Закриття системи
  if (Zakr = true) and (Edit29.Text = '') then
        if MessageDlg('Не введено закриття системи. Внести закриття?',mtConfirmation,[mbYes,mbNo],0) = mrYes
                          then begin
                                CorrectData:=false;
                                MyMessage:='Введіть "1" у поле "Закриття" і примітку до закриття.';
                               end;
  if (Edit29.Text <> '') and (ComboBox13.Text = '') then CorrectData:=false;

//3.Час відмови
  MaskEdit9.OnExit(Sender);
   if (Edit20.Text = '00:00') or (Edit20.Text = '') then
    begin
      CorrectData:=false;
      ShowMessage('Невірно введено час відмови!');
    end;

//4.Перевіка ComboBox
  if ComboBox2.Text = '' then CorrectData:=false;
  if ComboBox3.Text = '' then CorrectData:=false;
  if ComboBox4.Text = '' then CorrectData:=false;
  if ComboBox6.Text = '' then CorrectData:=false;
  if ComboBox7.Text = '' then CorrectData:=false;
  if ComboBox8.Text = '' then CorrectData:=false;
  if (ComboBox1.Text = '') and (ComboBox1.Enabled = true) then CorrectData:=false;
  if (ComboBox5.Text = '') and (ComboBox5.Enabled = true) then CorrectData:=false;
  if (ComboBox9.Text = '') and (ComboBox9.Enabled = true) then CorrectData:=false;
  if (ComboBox10.Text = '') and (ComboBox10.Enabled = true) then CorrectData:=false;
  if (ComboBox11.Text = '') and (ComboBox11.Enabled = true) then CorrectData:=false;
  if (ComboBox13.Text = '') and (ComboBox13.Enabled = true) then CorrectData:=false;

//5.Перевірка причини
  if Memo3.Lines[0] = '' then CorrectData:=false;

//6.Перевірка внесення порушень, інцидентів
      if ComboBox1.Enabled then
            begin
             if (ComboBox1.Text = '') or (Memo1.Text = '') then
              begin
               CorrectData:=false;
               MyMessage:='Введіть примітку і текстовий опис до порушення.';
              end;
            end;
 if (Brak = true) and (CheckBox1.Checked = false) and (CheckBox2.Checked = false) and (CheckBox3.Checked = false) then
        if MessageDlg('Не введено інцидент або порушення. Ввести?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
                               begin
                                CorrectData:=false;
                                MyMessage:='Введіть інциднт або порушення, примітку і текстовий опис.';
                               end;

//7.Перевірка внесення примітки до затримок поїздів
  if (Memo1.Enabled = true) and (Memo1.Lines[0] = '') then
     begin
      CorrectData:=false;
      ShowMessage('Не введено опис до іциденту, затримки поїздів або порушення правил виконання робіт!');
     end;
//8.Перевірка внесення часу затримки при внесенні поїздів
  if (Edit30.Text <> '') and (MaskEdit5.Text = '000:00') then
    begin
     CorrectData:=false;
     ShowMessage('Не введено час затримки поїздів!');
    end;
  if (Edit30.Text = '') and (MaskEdit5.Text <> '000:00') then
    begin
     CorrectData:=false;
     ShowMessage('Не введено кількість затриманих поїздів!');
    end;
  if (Edit31.Text <> '') and (MaskEdit6.Text = '000:00') then
    begin
     CorrectData:=false;
     ShowMessage('Не введено час затримки поїздів!');
    end;
  if (Edit31.Text = '') and (MaskEdit6.Text <> '000:00') then
    begin
     CorrectData:=false;
     ShowMessage('Не введено кількість затриманих поїздів!');
    end;
  if (Edit32.Text <> '') and (MaskEdit7.Text = '000:00') then
    begin
     CorrectData:=false;
     ShowMessage('Не введено час затримки поїздів!');
    end;
  if (Edit32.Text = '') and (MaskEdit7.Text <> '000:00') then
    begin
     CorrectData:=false;
     ShowMessage('Не введено кількість затриманих поїздів!');
    end;
//************ Кінець перевірки правильності вводу **************
end;

procedure TForm3.Edit17Click(Sender: TObject);
var Hours,Minutes:SmallInt;
begin
//************ Внесення даних  у масив **************************
  with OtkazMas[CurrentNumber] do begin

//1.Номер відмови в місяці
    Number:=IntToStr(CurrentNumber);

//2.Дата і час основні
    DateBegin:=DateTimeToStr(DateTimePicker12.DateTime);
    DateEnd:=DateTimeToStr(DateTimePicker13.DateTime);

//3.Дата і час інтервалу
    if DateTimePicker2.Enabled then begin
      ExDateBegin:=DateTimeToStr(DateTimePicker2.DateTime);
      ExDateEnd:=DateTimeToStr(DateTimePicker3.DateTime);
                                    end
                               else begin
      ExDateBegin:='01.01.01';
      ExDateEnd:='01.01.01';
                                    end;
//4.Тривалість відмови у хвилинах
      Hours:=StrToInt(Edit20.Text[1]+Edit20.Text[2]);
     try
      Minutes:=StrToInt(Edit20.Text[4]+Edit20.Text[5]);
     except
      Hours:=StrToInt(Edit20.Text[1]+Edit20.Text[2]+Edit20.Text[3]);
      Minutes:=StrToInt(Edit20.Text[5]+Edit20.Text[6]);
     end;
      Minutes:=Hours*60+Minutes;
      Trivalist:=IntToStr(Minutes);

//5.ШЧ,ПЧ,служба,система,станції,проява,елемент
      SH:=ComboBox4.Text;
      if ComboBox11.Enabled then PH:=ComboBox11.Text else PH:='';
      Slujba:=ComboBox2.Text;
      Systema:=ComboBox3.Text;
      Station1:=ComboBox6.Text;
      if ComboBox5.Enabled then Station2:=ComboBox5.Text else Station2:='';
      Proyava:=ComboBox7.Text;
      Element:=ComboBox8.Text;

//6.Причина
      Cause1:=Memo3.Lines[0];
      Cause2:=Memo3.Lines[1];
      Cause3:=Memo3.Lines[2];
      Cause4:=Memo3.Lines[3];
      Cause5:=Memo3.Lines[4];
      Cause6:=Memo3.Lines[5];

//7.Клас причини
      if ComboBox9.Enabled then Clas1:=ComboBox9.Text else Clas1:='';
      if ComboBox10.Enabled then Clas2:=ComboBox10.Text else Clas2:='';

//8.Наслідки
      if Edit26.Text = '' then Proizd:='0' else Proizd:=Edit26.Text;          //З проїздом
      if Edit27.Text = '' then WOProizd:='0' else WOProizd:=Edit27.Text;      //без проїзду
      if Edit28.Text = '' then Priglasit:='0' else Priglasit:=Edit28.Text;    //по запрошувальному
      if Edit29.Text = '' then Closed:='0' else Closed:=Edit29.Text;          //закриття

//9.Затримки
      if Edit30.Text = '' then Pasajir:='0' else Pasajir:=Edit30.Text;        //пасажирських
      if Edit31.Text = '' then Primiskih:='0' else Primiskih:=Edit31.Text;    //приміських
      if Edit32.Text = '' then Vantajnih:='0' else Vantajnih:=Edit32.Text;    //вантажних

      Hours:=StrToInt(MaskEdit5.Text[1]+MaskEdit5.Text[2]+MaskEdit5.Text[3]);   //час затримки
      Minutes:=StrToInt(MaskEdit5.Text[5]+MaskEdit5.Text[6]); //пасажирських
      Minutes:=Minutes+Hours*60;                              //в хвилинах
      TimePas:=IntToStr(Minutes);

      Hours:=StrToInt(MaskEdit6.Text[1]+MaskEdit6.Text[2]+MaskEdit6.Text[3]);    //приміських
      Minutes:=StrToInt(MaskEdit6.Text[5]+MaskEdit6.Text[6]);
      Minutes:=Minutes+Hours*60;
      TimePrim:=IntToStr(Minutes);

      Hours:=StrToInt(MaskEdit7.Text[1]+MaskEdit7.Text[2]+MaskEdit7.Text[3]);     //вантажних
      Minutes:=StrToInt(MaskEdit7.Text[5]+MaskEdit7.Text[6]);
      Minutes:=Minutes+Hours*60;
      TimeVant:=IntToStr(Minutes);

//10.Порушення,інцидент і серйозний інцидент
      Incident:='';
      if CheckBox1.Checked then Incident:='П';
      if CheckBox2.Checked then Incident:='І';
      if CheckBox3.Checked then Incident:='С';

//11.Примітки до порушеь і закриття
      if ComboBox1.Enabled then PrimIncid:=ComboBox1.Text else PrimIncid:='';
      if ComboBox13.Enabled then PrimClosed:=ComboBox13.Text else PrimClosed:='';

//12.Номер,рік випуску,дата перевірки прибору
     if Edit2.Text = '' then NumberPrib:='0' else NumberPrib:=Edit2.Text;
     if Edit3.Text = '' then Made:='0' else Made:=Edit3.Text;
     PribChecked:=DateToStr(DateTimePicker1.Date);

//13.Номер елементу
     if Edit1.Text = '' then NumberElem:='Неповідомлено' else NumberElem:=Edit1.Text;

//14.Примітка
      if Memo5.Lines[0] <> '' then Primitka:=Memo5.Text
                              else Primitka:='';

//15.Текстовий опис до інциденту або порушення
//Текстовий опис до затримок поїздів або порушення правил виконання робіт
     if Memo1.Enabled then Texts1:=Memo1.Text
                      else Texts1:='';

     Modified:=true;
                 end; //with
//*********** Кінець внесення даних у запис *****************
end;

procedure TForm3.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
if Modify then Timer1.OnTimer(Sender);
end;

procedure TForm3.N208Click(Sender: TObject);
begin
try
Form3.PrintScale:=poPrintToFit;
Form3.Print;
except
 ShowMessage('Перевірте принтер!');
end;
end;

procedure TForm3.N209Click(Sender: TObject);
 var ShowNomer,i:integer;
     SNomer:string;
begin
if Modify = false then begin
try
 if InputQuery('Номер?','Введіть номер картки',SNomer) then
   ShowNomer:=StrToInt(SNomer) else ShowNomer:=-1;
except
 ShowNomer:=-1;
end;
   if (ShowNomer > 0) and (ShowNomer <= high(OtkazMas)) then
    begin

       if ShowNomer > CurrentNumber then
        begin
          for i:=2 to ShowNomer-CurrentNumber do
           begin
            DM2.Otkaz.Next;
            inc(CurrentNumber);
           end;
         DBNavigator1.OnClick(Sender,nbNext);
        end;

       if ShowNomer < CurrentNumber then
        begin
          for i:=2 to CurrentNumber-ShowNomer do
           begin
            DM2.Otkaz.Prior;
            dec(CurrentNumber);
           end;
         DBNavigator1.OnClick(Sender,nbPrior);
        end;

   end;
                       end;
end;

procedure TForm3.N235Click(Sender: TObject);
begin
  ToolButton15.Click;
end;

procedure TForm3.ComboBox10Change(Sender: TObject);
begin
 ComboBox10.OnExit(Sender);
end;

procedure TForm3.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.Memo5KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.ComboBox13KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.ComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = '"' then Key:=#146;
 if Key = '''' then Key:=#146;
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_F4) and (ssAlt in Shift) then
 begin
  ToolBar2.SetFocus;
  ToolButton18.Click;
 end;
end;

procedure TForm3.N234Click(Sender: TObject);
begin
 if FileExists('c:\scb\help\scb.hlp') then
   begin
    Application.HelpFile:='c:\scb\help\scb.hlp';
    Application.HelpCommand(HELP_FINDER,0);
   end else ShowMessage('Відсутній файл c:\scb\help\scb.hlp');
end;

procedure TForm3.Texts;
 var Enable:boolean;
begin
 Enable:=false;
  if CheckBox1.Checked then Enable:=true;
  if CheckBox2.Checked then Enable:=true;
  if CheckBox3.Checked then Enable:=true;
  if MaskEdit5.Enabled then Enable:=true;
  if MaskEdit6.Enabled then Enable:=true;
  if MaskEdit7.Enabled then Enable:=true;
  if (ComboBox10.ItemIndex = 1) and (ComboBox9.ItemIndex = 0) then Enable:=true;
   Memo1.Enabled:=Enable;
   Label12.Enabled:=Enable;
end;

procedure TForm3.InsertData(const i:integer);
begin
         with DM2.Otkaz do begin
          Close;
          SQL.Clear;
        if OtkazMas[i].ID <> '' then begin
          SQL.Add('Update Otkaz');
          SQL.Add('set Number =' + OtkazMas[i].Number + ',');
          SQL.Add('DateBegin ="' + OtkazMas[i].DateBegin + '",');
          SQL.Add('DateEnd ="' + OtkazMas[i].DateEnd + '",');
          SQL.Add('ExDateBegin ="' + OtkazMas[i].ExDateBegin + '",');
          SQL.Add('ExDateEnd ="' + OtkazMas[i].ExDateEnd + '",');
          SQL.Add('Trivalist =' + OtkazMas[i].Trivalist + ',');
          SQL.Add('SH ="' + OtkazMas[i].SH + '",');
          SQL.Add('PH ="' + OtkazMas[i].PH + '",');
          SQL.Add('Slujba ="' + OtkazMas[i].Slujba + '",');
          SQL.Add('System ="' + OtkazMas[i].Systema + '",');
          SQL.Add('Station1 ="' + OtkazMas[i].Station1 + '",');
          SQL.Add('Station2 ="' + OtkazMas[i].Station2 + '",');
          SQL.Add('Proyava ="' + OtkazMas[i].Proyava + '",');
          SQL.Add('Element ="' + OtkazMas[i].Element + '",');
          SQL.Add('Cause1 ="' + OtkazMas[i].Cause1 + '",');
          SQL.Add('Cause2 ="' + OtkazMas[i].Cause2 + '",');
          SQL.Add('Cause3 ="' + OtkazMas[i].Cause3 + '",');
          SQL.Add('Cause4 ="' + OtkazMas[i].Cause4+ '",');
          SQL.Add('Cause5 ="' + OtkazMas[i].Cause5 + '",');
          SQL.Add('Cause6 ="' + OtkazMas[i].Cause6 + '",');
          SQL.Add('Clas1 ="' + OtkazMas[i].Clas1 + '",');
          SQL.Add('Clas2 ="' + OtkazMas[i].Clas2 + '",');
          SQL.Add('Proizd =' + OtkazMas[i].Proizd + ',');
          SQL.Add('WOProizd =' + OtkazMas[i].WOProizd + ',');
          SQL.Add('Priglasit =' + OtkazMas[i].Priglasit + ',');
          SQL.Add('Closed =' + OtkazMas[i].Closed + ',');
          SQL.Add('Pasajir =' + OtkazMas[i].Pasajir + ',');
          SQL.Add('Primiskih =' + OtkazMas[i].Primiskih + ',');
          SQL.Add('Vantajnih =' + OtkazMas[i].Vantajnih + ',');
          SQL.Add('TimePas =' + OtkazMas[i].TimePas + ',');
          SQL.Add('TimePrim =' + OtkazMas[i].TimePrim + ',');
          SQL.Add('TimeVant =' + OtkazMas[i].TimeVant + ',');
          SQL.Add('Incident ="' + OtkazMas[i].Incident + '",');
          SQL.Add('PrimIncid ="' + OtkazMas[i].PrimIncid + '",');
          SQL.Add('PrimClosed ="' + OtkazMas[i].PrimClosed + '",');
          SQL.Add('NumberPrib =' + OtkazMas[i].NumberPrib + ',');
          SQL.Add('Made =' + OtkazMas[i].Made + ',');
          SQL.Add('Checked ="' + OtkazMas[i].PribChecked + '",');
          SQL.Add('NumberElem ="' + OtkazMas[i].NumberElem + '",');
          SQL.Add('Primitka ="' + OtkazMas[i].Primitka + '",');
          SQL.Add('Tekst1 ="' + OtkazMas[i].Texts1 + '"');
          SQL.Add('where Otkaz_ID =' + OtkazMas[i].ID);
//          Memo3.Lines.Clear;
//          Memo3.Lines.Text:=SQL.Text;
         try
           ExecSQL;
         except
           ShowMessage('Помилка при роботі з БД! (обновлення даних)');
           SQL.SaveToFile('C:\SCB\Error.txt');
         end;
                                     end
                                else begin
      SQL.Add('Insert into OTKAZ values');
      SQL.Add('(GEN_ID(G_OTKAZ_ID,1),');        //generator
      SQL.Add(OtkazMas[i].Number + ',');             //number
      SQL.Add('"' + OtkazMas[i].DateBegin + '",');   //datebegin
      SQL.Add('"' + OtkazMas[i].DateEnd + '",');     //dateend
      SQL.Add('"' + OtkazMas[i].ExDateBegin + '",'); //exdatebegin
      SQL.Add('"' + OtkazMas[i].ExDateEnd + '",');   //exdateend
      SQL.Add(OtkazMas[i].Trivalist + ',');          //trivalist
      SQL.Add('"' + OtkazMas[i].SH + '",');          //SH
      SQL.Add('"' + OtkazMas[i].PH + '",');          //PH
      SQL.Add('"' + OtkazMas[i].Slujba + '",');      //slujba
      SQL.Add('"' + OtkazMas[i].Systema + '",');     //system
      SQL.Add('"' + OtkazMas[i].Station1 + '",');    //station1
      SQL.Add('"' + OtkazMas[i].Station2 + '",');    //station2
      SQL.Add('"' + OtkazMas[i].Proyava + '",');     //proyavlenie
      SQL.Add('"' + OtkazMas[i].Element + '",');     //element
      SQL.Add('"' + OtkazMas[i].Cause1 + '",');      //cause1
      SQL.Add('"' + OtkazMas[i].Cause2 + '",');      //cause2
      SQL.Add('"' + OtkazMas[i].Cause3 + '",');      //cause3
      SQL.Add('"' + OtkazMas[i].Cause4 + '",');      //cause4
      SQL.Add('"' + OtkazMas[i].Cause5 + '",');      //cause5
      SQL.Add('"' + OtkazMas[i].Cause6 + '",');      //cause6
      SQL.Add('"' + OtkazMas[i].Clas1 + '",');       //clas1
      SQL.Add('"' + OtkazMas[i].Clas2 + '",');       //clas2
      SQL.Add(OtkazMas[i].Proizd + ',');             //proizd
      SQL.Add(OtkazMas[i].WOProizd + ',');           //with out proizd
      SQL.Add(OtkazMas[i].Priglasit + ',');          //priglasit
      SQL.Add(OtkazMas[i].Closed + ',');             //closed
      SQL.Add(OtkazMas[i].Pasajir + ',');            //pasajir
      SQL.Add(OtkazMas[i].Primiskih + ',');          //primiskih
      SQL.Add(OtkazMas[i].Vantajnih + ',');          //vantajnih
      SQL.Add(OtkazMas[i].TimePas + ',');            //timepas
      SQL.Add(OtkazMas[i].TimePrim + ',');           //timeprim
      SQL.Add(OtkazMas[i].TimeVant + ',');           //timevant
      SQL.Add('"' + OtkazMas[i].Incident + '",');    //incident
      SQL.Add('"' + OtkazMas[i].PrimIncid + '",');   //primincid
      SQL.Add('"' + OtkazMas[i].PrimClosed + '",');  //primclosed
      SQL.Add(OtkazMas[i].NumberPrib + ',');         //numberprib
      SQL.Add(OtkazMas[i].Made + ',');               //made
      SQL.Add('"' + OtkazMas[i].PribChecked + '",'); //checked
      SQL.Add('"' + OtkazMas[i].NumberElem + '",');  //numberelem
      SQL.Add('"' + OtkazMas[i].Primitka + '",');   //primitka
      SQL.Add('"' + OtkazMas[i].Texts1 + '")');      //text
     try
      ExecSQL;
     except
      ShowMessage('Помилка при роботі з БД! (внесення даних)');
      SQL.SaveToFile('C:\SCB\Error.txt');
     end;
                                     end;
                           end; //with
end;

procedure TForm3.ToolBar2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 ToolBar2.SetFocus;
end;

procedure TForm3.Edit26KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then Edit27.SetFocus;
end;

procedure TForm3.Edit27KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then Edit28.SetFocus;
end;

procedure TForm3.Edit28KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then Edit29.SetFocus;
end;

procedure TForm3.Edit29KeyPress(Sender: TObject; var Key: Char);
begin
if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then Edit30.SetFocus;
end;

procedure TForm3.DateTimePicker1Exit(Sender: TObject);
begin
 if DateTimePicker1.Date > Date then DateTimePicker1.Date:=StrToDate('01.01.01');
end;

procedure TForm3.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then Edit3.SetFocus;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if (not (Key in ['0'..'9'])) and (ord(Key) <> VK_BACK)
   and (ord(Key) <> VK_RETURN) then
  begin
   Key:=#0;
   Beep;
  end;
if ord(Key) = VK_RETURN then DateTimePicker1.SetFocus;
end;

procedure TForm3.ComboBox8Change(Sender: TObject);
begin
 Memo3.Lines.Clear;
 ListBox1.Clear;
end;

end.
