unit aboutProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TaboutProgram_form = class(TForm)
    aboutMemo: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  aboutProgram_form: TaboutProgram_form;

implementation

{$R *.dfm}

end.
