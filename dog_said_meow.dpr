program dog_said_meow;

uses
  System.StartUpCopy,
  FMX.Forms,
  uAnimalsForm in 'uAnimalsForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
