unit webCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TwebCode_form = class(TForm)
    codeMemo: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  webCode_form: TwebCode_form;

implementation

{$R *.dfm}

end.
