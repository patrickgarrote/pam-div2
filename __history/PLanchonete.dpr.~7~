program PLanchonete;

uses
  System.StartUpCopy,
  FMX.Forms,
  Uacesso in 'Uacesso.pas' {frmacesso},
  Umodulo in 'Umodulo.pas' {dm: TDataModule},
  Uiuusuario in 'Uiuusuario.pas' {frmiuusuario},
  Ulistausuarios in 'Ulistausuarios.pas' {frmlistausuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmiuusuario, frmiuusuario);
  Application.CreateForm(Tfrmacesso, frmacesso);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrmlistausuarios, frmlistausuarios);
  Application.Run;
end.
