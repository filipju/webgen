unit mainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TmainMenu_form = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    newSiteBtn: TButton;
    endBtn: TButton;
    aboutProgramBtn: TButton;
    procedure endBtnClick(Sender: TObject);
    procedure aboutProgramBtnClick(Sender: TObject);
    procedure newSiteBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainMenu_form: TmainMenu_form;

implementation
uses aboutProgram,webCreation;

{$R *.dfm}

procedure TmainMenu_form.aboutProgramBtnClick(Sender: TObject);
begin
  aboutProgram.aboutProgram_form.Visible:=true;
end;

procedure TmainMenu_form.endBtnClick(Sender: TObject);
begin
  close;
end;

procedure TmainMenu_form.newSiteBtnClick(Sender: TObject);
begin
  webCreation.webCreation_form.Visible:=true;
  mainMenu_form.Visible:=false;
end;

end.
