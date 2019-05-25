unit webCreation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TwebCreation_form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    websiteNameEdit: TEdit;
    Label4: TLabel;
    authorNameEdit: TEdit;
    Label5: TLabel;
    languageCmb: TComboBox;
    Label6: TLabel;
    colorSchemeCmb: TComboBox;
    addContentBtn: TButton;
    backBtn: TButton;
    aboutProgramBtn: TButton;
    closeBtn: TButton;
    procedure backBtnClick(Sender: TObject);
    procedure closeBtnClick(Sender: TObject);
    procedure aboutProgramBtnClick(Sender: TObject);
    procedure addContentBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  webCreation_form: TwebCreation_form;
  //promenne
  websiteName:string;
  authorName:string;
  colorScheme:string;
  webColor:string;
  language:string;

implementation
  uses mainMenu,aboutProgram,webCode,addContent;

{$R *.dfm}

procedure TwebCreation_form.aboutProgramBtnClick(Sender: TObject);
begin
  aboutProgram.aboutProgram_form.Visible:=true;
end;

procedure TwebCreation_form.addContentBtnClick(Sender: TObject);//create web function
begin
  //vytažení vstupù
  websiteName:=websiteNameEdit.Text;
  authorName:=authorNameEdit.Text;

  //vyhodnocení barvy
  if colorSchemeCmb.Text = 'Modré' then webColor:='#2980b9';
  if colorSchemeCmb.Text = 'Žluté' then webcolor:='#f39c12';
  if colorSchemeCmb.Text = 'Zelené' then webColor:='#27ae60';
  if colorSchemeCmb.Text = 'Èervené' then webColor:='#c0392b';

  //vyhodnocení jazyku
  if languageCmb.Text = 'Èeský' then language:='cs';
  if languageCmb.Text = 'Anglický' then language:='en';
  addContent.addContent_form.Show;
  //vypisování kódu
  webCode.webCode_form.codeMemo.Lines.Add('<!doctype html>');
  webCode.webCode_form.codeMemo.Lines.Add('<html lang="'+language+'">');
  webCode.webCode_form.codeMemo.Lines.Add('<head>');
  webCode.webCode_form.codeMemo.Lines.Add('<title>'+websiteName+'</title>');
  webCode.webCode_form.codeMemo.Lines.Add('<meta name="author" content="'+authorName+'">');
  webCode.webCode_form.codeMemo.Lines.Add('<style>');
  webCode.webCode_form.codeMemo.Lines.Add('body { margin:0;padding:0;font-family:sans-serif;background-color:#ecf0f1;width:100%;}');
  webCode.webCode_form.codeMemo.Lines.Add('h1{font-size:5rem;color:white;text-align:center;position:absolute;top:35.5%;left:50%;transform:translate(-50%,-50%);}');
  webCode.webCode_form.codeMemo.Lines.Add('p{max-width:75vw;}');
  webCode.webCode_form.codeMemo.Lines.Add('article{background-color:white;padding:2vh;width:75vw;margin:1%;justify-self:center;}');
  webCode.webCode_form.codeMemo.Lines.Add('main{width:100%;display:grid;align-content:center;}');
  webCode.webCode_form.codeMemo.Lines.Add('header{background-color:'+webColor+';width:100%;height:75vh;}');
  webCode.webCode_form.codeMemo.Lines.Add('h2{color:'+webColor+';}');
  webCode.webCode_form.codeMemo.Lines.Add('footer{text-align:center;padding:3vh;}');
  webCode.webCode_form.codeMemo.Lines.Add('</style>');
  webCode.webCode_form.codeMemo.Lines.Add('</head>');
  webCode.webCode_form.codeMemo.Lines.Add('<body>');
  webCode.webCode_form.codeMemo.Lines.Add('<header><h1>'+websiteName+'</h1></header>');
  webCode.webCode_form.codeMemo.Lines.Add('<main>');
  close;
end;

procedure TwebCreation_form.backBtnClick(Sender: TObject);
begin
  mainMenu.mainMenu_form.Visible:=true;
  webCreation_form.Close;
end;

procedure TwebCreation_form.closeBtnClick(Sender: TObject);
begin
  mainMenu.mainMenu_form.Close;
end;

procedure TwebCreation_form.FormShow(Sender: TObject);
begin
  colorSchemeCmb.ItemIndex:=0;
  languageCmb.ItemIndex:=0;
  websiteNameEdit.text:='';
  authorNameEdit.Text:='';
end;

end.
