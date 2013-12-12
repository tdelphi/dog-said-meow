unit dog_said_meow.uImageLoader;

interface

uses
  System.Types, System.Classes, System.SysUtils,
  FMX.Graphics;

type
  TImageLoader = class
  strict private
  const
    cMinPictureId = 1;
    cMaxPictureId = 4;

  var
    FCurrentImgIndex: Integer;
    function GetCurrentImageFileName: string; inline;
  public
    procedure LoadPic(const aBitmap: TBitmap);
    procedure SetNextPic;
    procedure SetPrevPic;
    constructor Create;
  end;

implementation

constructor TImageLoader.Create;
begin
  FCurrentImgIndex := cMinPictureId;
end;

function TImageLoader.GetCurrentImageFileName: string;
begin
  result := Format('MyImage_%d', [FCurrentImgIndex]);
end;

procedure TImageLoader.LoadPic(const aBitmap: TBitmap);
var
  tmpResName: string;
  tmpRS: TResourceStream;
begin
  tmpResName := GetCurrentImageFileName;
  tmpRS := TResourceStream.Create(HInstance, tmpResName, RT_RCDATA);
  try
    aBitmap.LoadFromStream(tmpRS);
  finally
    tmpRS.Free;
  end;
end;

procedure TImageLoader.SetNextPic;
begin
  inc(FCurrentImgIndex);
  if FCurrentImgIndex > cMaxPictureId then
    FCurrentImgIndex := cMinPictureId;
end;

procedure TImageLoader.SetPrevPic;
begin
  dec(FCurrentImgIndex);
  if FCurrentImgIndex < cMinPictureId then
    FCurrentImgIndex := cMaxPictureId;
end;

end.
