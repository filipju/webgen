unit summary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tsummary_form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    aboutProgramBtn: TButton;
    closeBtn: TButton;
    backBtn: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    languageLbl: TLabel;
    colorSchemeLbl: TLabel;
    clankyMemo: TMemo;
    saveBtn: TButton;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    procedure backBtnClick(Sender: TObject);
    procedure closeBtnClick(Sender: TObject);
    procedure aboutProgramBtnClick(Sender: TObject);
    procedure saveBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  summary_form: Tsummary_form;
  filename:string;

implementation
uses addContent,aboutProgram,webCode,webCreation,mainMenu;

{$R *.dfm}

procedure Tsummary_form.aboutProgramBtnClick(Sender: TObject);
begin
  aboutProgram.aboutProgram_form.Show;
end;

procedure Tsummary_form.backBtnClick(Sender: TObject);
begin
  addContent.addContent_form.Show;
  close;
end;

procedure Tsummary_form.Button1Click(Sender: TObject);
begin
  webCode.webCode_form.Show;
end;

procedure Tsummary_form.closeBtnClick(Sender: TObject);
begin
  mainMenu.mainMenu_form.Close;
end;

procedure Tsummary_form.FormCreate(Sender: TObject);
begin
  languageLbl.caption:=webCreation.webCreation_form.languageCmb.Text;
  colorSchemeLbl.caption:=webCreation.webCreation_form.colorSchemeCmb.Text;
end;

procedure Tsummary_form.saveBtnClick(Sender: TObject);
begin
  if saveDialog1.Execute then
  begin
    filename:=savedialog1.FileName;
    webCode.webCode_form.codeMemo.Lines.SaveToFile(filename);
  end;
end;

end.
