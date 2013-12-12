program dog_said_meow;

{$R 'animals.res' 'resources\animals.rc'}

uses
  System.StartUpCopy,
  FMX.Forms,
  dog_said_meow.uAnimalsForm in 'dog_said_meow.uAnimalsForm.pas' {AnimalsForm},
  dog_said_meow.uImageLoader in 'dog_said_meow.uImageLoader.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAnimalsForm, AnimalsForm);
  Application.Run;
end.
