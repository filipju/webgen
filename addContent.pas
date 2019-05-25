unit addContent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TaddContent_form = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    nadpisEdit: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    backBtn: TButton;
    closeBtn: TButton;
    aboutProgramBtn: TButton;
    doneBtn: TButton;
    addContentBtn: TButton;
    odstavecMemo: TMemo;
    procedure backBtnClick(Sender: TObject);
    procedure closeBtnClick(Sender: TObject);
    procedure aboutProgramBtnClick(Sender: TObject);
    procedure addContentBtnClick(Sender: TObject);
    procedure doneBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addContent_form: TaddContent_form;
  nadpis:string;

implementation
uses webCreation, aboutProgram, mainMenu, webCode,summary;

{$R *.dfm}

procedure TaddContent_form.aboutProgramBtnClick(Sender: TObject);
begin
  aboutProgram.aboutProgram_form.Show;
end;

procedure TaddContent_form.addContentBtnClick(Sender: TObject);
var
  i: Integer;
begin
  //naètení promìnných
  summary.summary_form.clankyMemo.Lines.Add(nadpisEdit.Text);
  webCode.webCode_form.codeMemo.lines.Add('<article>');
  webCode.webCode_form.codeMemo.lines.Add('<h2>'+nadpisEdit.text+'</h2>');
  webCode.webCode_form.codeMemo.lines.Add('<p>');
  for i := 0 to odstavecMemo.Lines.Count do
  begin
    webCode.webCode_form.codeMemo.lines.Add(odstavecMemo.Lines[i]+'<br>');
  end;
  webCode.webCode_form.codeMemo.lines.Add('</p>');
  webCode.webCode_form.codeMemo.lines.Add('</article>');

  odstavecMemo.Clear;
  nadpisEdit.Text:='';
end;

procedure TaddContent_form.backBtnClick(Sender: TObject);
begin
  close;
  webCreation.webCreation_form.visible:=true;
end;

procedure TaddContent_form.closeBtnClick(Sender: TObject);
begin
  mainMenu.mainMenu_form.Close;
end;

procedure TaddContent_form.doneBtnClick(Sender: TObject);
var i:integer;
begin
  summary.summary_form.clankyMemo.Lines.Add(nadpisEdit.Text);

  webCode.webCode_form.codeMemo.lines.Add('<article>');
  webCode.webCode_form.codeMemo.lines.Add('<h2>'+nadpisEdit.Text+'</h2>');
  webCode.webCode_form.codeMemo.lines.Add('<p>');
  for i := 0 to odstavecMemo.Lines.Count do
  begin
    webCode.webCode_form.codeMemo.lines.Add(odstavecMemo.Lines[i]+'<br>');
  end;
  webCode.webCode_form.codeMemo.lines.Add('</p>');
  webCode.webCode_form.codeMemo.lines.Add('</article>');
  webCode.webCode_form.codeMemo.Lines.Add('</main>');
  webCode.webCode_form.codeMemo.Lines.Add('<footer>');
  if webCreation.language = 'cs' then webCode.webCode_form.codeMemo.Lines.Add('Vytvoøil: '+webCreation.authorName+' v programu Webgen');
  if webCreation.language = 'en' then webCode.webCode_form.codeMemo.Lines.Add('Created by: '+webCreation.authorName+' with Webgen');
  webCode.webCode_form.codeMemo.Lines.Add('</footer>');
  webCode.webCode_form.codeMemo.Lines.Add('</body>');
  webCode.webCode_form.codeMemo.Lines.Add('</html>');
  summary.summary_form.Show;
  close;
end;

end.
