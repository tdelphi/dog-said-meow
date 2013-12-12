unit dog_said_meow.uAnimalsForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Memo, FMX.StdCtrls, FMX.Objects;

type
  TAnimalsForm = class(TForm)
    mmoLog: TMemo;
    pnlClient: TPanel;
    btnPrev: TSpeedButton;
    btnNext: TSpeedButton;
    imgPicture: TImage;
    procedure btnNextClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnimalsForm: TAnimalsForm;

implementation

{$R *.fmx}

uses
  dog_said_meow.uImageLoader;

var
  ImageLoader: TImageLoader;

procedure TAnimalsForm.btnNextClick(Sender: TObject);
begin
  ImageLoader.SetNextPic;
  ImageLoader.LoadPic(imgPicture.Bitmap);
end;

procedure TAnimalsForm.btnPrevClick(Sender: TObject);
begin
  ImageLoader.SetPrevPic;
  ImageLoader.LoadPic(imgPicture.Bitmap);
end;

procedure TAnimalsForm.FormCreate(Sender: TObject);
begin
  Assert(Assigned(ImageLoader));
  ImageLoader.LoadPic(imgPicture.Bitmap);
end;

initialization
  ImageLoader := TImageLoader.Create;

finalization
  FreeAndNil(ImageLoader);

end.
