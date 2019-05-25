program webgen;

uses
  Vcl.Forms,
  mainMenu in 'mainMenu.pas' {mainMenu_form},
  aboutProgram in 'aboutProgram.pas' {aboutProgram_form},
  webCreation in 'webCreation.pas' {webCreation_form},
  webCode in 'webCode.pas' {webCode_form},
  addContent in 'addContent.pas' {addContent_form},
  summary in 'summary.pas' {summary_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmainMenu_form, mainMenu_form);
  Application.CreateForm(TaboutProgram_form, aboutProgram_form);
  Application.CreateForm(TwebCreation_form, webCreation_form);
  Application.CreateForm(TwebCode_form, webCode_form);
  Application.CreateForm(TaddContent_form, addContent_form);
  Application.CreateForm(Tsummary_form, summary_form);
  Application.Run;
end.
