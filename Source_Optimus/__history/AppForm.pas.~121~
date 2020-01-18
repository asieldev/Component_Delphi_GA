unit AppForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  TGenetic.Algorithm, FMX.Controls.Presentation, FMX.StdCtrls, FMX.ScrollBox,
  FMX.Memo, FMXTee.Engine, FMXTee.Procs, FMXTee.Chart, FMXTee.Chart.Functions,
  FMXTee.Series, FMX.Objects, FMX.Layouts, System.ImageList, FMX.ImgList,
  FMX.Edit;

type

  TfrMain = class(TForm)
    Chart1: TChart;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Image1: TImage;
    Image2: TImage;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Line1: TLine;
    Rectangle3: TRectangle;
    Label1: TLabel;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Layout8: TLayout;
    Line2: TLine;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    Image3: TImage;
    lbStart: TText;
    Image4: TImage;
    Text1: TText;
    SpeedButton2: TSpeedButton;
    Image5: TImage;
    Text2: TText;
    SpeedButton3: TSpeedButton;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Rectangle9: TRectangle;
    Text8: TText;
    Rectangle10: TRectangle;
    Text9: TText;
    Rectangle11: TRectangle;
    Text10: TText;
    swOptimization: TSwitch;
    swSelection: TSwitch;
    lbOptimizationType: TText;
    lbSelectionType: TText;
    Layout7: TLayout;
    Chart2: TChart;
    Series1: TPieSeries;
    Label2: TLabel;
    lbGenerations: TEdit;
    StyleBook1: TStyleBook;
    lbChromoSize: TEdit;
    lbProbCrossover: TEdit;
    lbProbMutation: TEdit;
    lbPopulationSize: TEdit;
    lbElitismSize: TEdit;
    lbPointsCrossover: TEdit;
    Layout9: TLayout;
    Image6: TImage;
    Text11: TText;
    SpeedButton4: TSpeedButton;
    SaveDialog1: TSaveDialog;
    GA: TGAlgorithm;
    procedure GAFitness(NewChromosome: TChromosome; var FitnessValue: Real);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Image2MouseEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure swOptimizationMouseEnter(Sender: TObject);
    procedure swOptimizationMouseLeave(Sender: TObject);
    procedure swSelectionMouseEnter(Sender: TObject);
    procedure swSelectionMouseLeave(Sender: TObject);

    procedure swSelectionSwitch(Sender: TObject);
    procedure swOptimizationSwitch(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SaveAsImage(Sender:Tobject);
    procedure Layout3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Layout3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure Layout3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormCreate(Sender: TObject);
  private

    NSeries : Integer;
    NGenerations : Integer;


  public
    CurrentFile : String;
  end;

var
  frMain: TfrMain;
       dra : Boolean; //Esta nos sirve para saber cuándo el usuario da click (o toca la pantalla), y cuando lo suelta.
     poi : TPoint ;

implementation

{$R *.fmx}

uses StartForm;

procedure TfrMain.Button2Click(Sender: TObject);
begin
  GA.PopulationSize := 100;
end;

procedure TfrMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frStart.Close;
end;

procedure TfrMain.FormCreate(Sender: TObject);
begin
   dra := False;
end;

procedure TfrMain.FormShow(Sender: TObject);
begin


   lbGenerations.Text:= '20';
   lbChromoSize.Text:= '30';
   lbProbCrossover.Text:= '0,9';
   lbProbMutation.Text:= '0,01';
   lbPopulationSize.Text:= '20';
   lbElitismSize.Text:= '5';
   lbPointsCrossover.Text:= '0';

   SpeedButton1Click(Sender);
end;

procedure TfrMain.GAFitness(NewChromosome: TChromosome; var FitnessValue: Real);
var
i:integer;
//x1,x2:real;
Sum:real;
begin
  Sum:=0;
for i:=1 to GA.ChromosomeSize do
    if NewChromosome[i] then Sum:=Sum+1;
       FitnessValue:=Sum;
 {
x1:=GA.binarioParaInteiro(NewChromosome,1,15);
x2:=GA.binarioParaInteiro(NewChromosome,16,30);
FitnessValue:=abs(pi - x1/(x2+1));
  }
end;

procedure TfrMain.Image2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrMain.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
    TImage(Sender).Opacity:= 0.3;
end;

procedure TfrMain.Image2MouseEnter(Sender: TObject);
begin
   TImage(Sender).Opacity:= 0.3;
end;

procedure TfrMain.Image2MouseLeave(Sender: TObject);
begin
 TImage(Sender).Opacity:= 1;
end;

procedure TfrMain.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 TImage(Sender).Opacity:= 1;
end;

procedure TfrMain.Layout3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
     //En esta parte guardamos las coordenadas en las que el usuario hiso click*/
    dra := true;
    poi.x := round(X);
    poi.y := round(Y);
end;

procedure TfrMain.Layout3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
  var xx,yy: Integer;
begin
  //Si dra == true o sea si el usuario hiso click y no lo ha soltado,
  //calculamos el punto Y (o Top), que el formulario tendrá*/
    if ( dra = true ) then
    begin
        Self.Left := Self.Left + round(X) - round(poi.x);
        Self.Top := Self.Top + round(Y) - round(poi.y);

    end;




end;

procedure TfrMain.Layout3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
if(dra) then
       dra:=False;

end;

procedure TfrMain.SaveAsImage(Sender: Tobject);
begin
  if SaveDialog1.Execute then { get a file name }
  begin
    CurrentFile := SaveDialog1.FileName; { save the user-specified name }
    SpeedButton4Click(Sender); { then save normally }
    ShowMessage('Image Saved: '+ CurrentFile+'.bmp');
  end;


end;

procedure TfrMain.SpeedButton1Click(Sender: TObject);
var
   i,j : integer;

   TSeriesA : TLineSeries;    Str : String;
begin

  try
     NGenerations := StrToInt(lbGenerations.Text);
     GA.ChromosomeSize := StrToInt(lbChromoSize.Text);
     GA.pCrossover := StrToFloat(lbProbCrossover.Text);
     GA.pMutation := StrToFloat(lbProbMutation.Text);
     GA.PopulationSize := StrToInt(lbPopulationSize.Text);
     GA.ElitismSize := StrToInt(lbElitismSize.Text);
     GA.PointsCrossover := StrToInt(lbPointsCrossover.Text);

     if not swSelection.IsChecked then
     begin
       GA.SelectionType := TSelectionType.stRoulette;

     end
     else GA.SelectionType := TSelectionType.stRank;

     if not swOptimization.IsChecked then
     begin
      GA.OptimizationType := TOptimizationType.otMaximum

     end
     else GA.OptimizationType := TOptimizationType.otMinimum;

  except
   ShowMessage('Opps!! Check input parameters');

  end;

   Series1.Clear;
  TSeriesA := TLineSeries.Create(Chart1);
  TSeriesA.LinePen.Width := 1.7;
  TSeriesA.Transparency := 20;
  TSeriesA.ParentChart:=Chart1;
  TSeriesA.Name := 'Output' + IntToStr(NSeries) ;
  TSeriesA.Color := TAlphaColor(Random($FF000000));

  NSeries := NSeries+1;
    with(GA) do
     if(Initialized)then
        begin

             for j := 1 to NGenerations do
               begin

                  Start;
                  TSeriesA.AddXY(j,GetPopulation.MeanFitness);
               end;

         for i := 1 to GA.PopulationSize do
           begin


               Str := 'Ind' + IntToStr(i) ;
               Series1.Add(GetPopulation.Genotypes[i].FitnessValue,Str);

           end


       end

end;

procedure TfrMain.SpeedButton3Click(Sender: TObject);
var
 SList : TChartSeriesList;
  I: Integer;
begin
 SList:= Chart1.SeriesList;

   for I := SList.Count-1 downto 0 do
   begin

      SList[I].Free;

   end;
end;

procedure TfrMain.SpeedButton4Click(Sender: TObject);
var Timg: Timage;
begin
Timg:= TImage.Create(Self);
  if CurrentFile <> '' then
  begin
    Chart1.SaveToBitmapFile(CurrentFile + '.bmp')
  end
    else
      SaveAsImage(Sender);

end;

procedure TfrMain.swOptimizationMouseEnter(Sender: TObject);
begin
     TSwitch(Sender).ShowHint:= True;
end;

procedure TfrMain.swOptimizationMouseLeave(Sender: TObject);
begin
 TSwitch(Sender).ShowHint:= False;
end;

procedure TfrMain.swOptimizationSwitch(Sender: TObject);
begin
     if not swOptimization.IsChecked then
     begin
        GA.OptimizationType := TOptimizationType.otMaximum;
        lbOptimizationType.Text := 'Maximum';
     end
     else
     begin
        GA.OptimizationType := TOptimizationType.otMinimum;
        lbOptimizationType.Text := 'Minimum';
     end;
end;

procedure TfrMain.swSelectionMouseEnter(Sender: TObject);
begin
    TSwitch(Sender).ShowHint:= True;
end;

procedure TfrMain.swSelectionMouseLeave(Sender: TObject);
begin
  TSwitch(Sender).ShowHint:= False;
end;

procedure TfrMain.swSelectionSwitch(Sender: TObject);
begin
     if not swSelection.IsChecked then
     begin
       GA.SelectionType := TSelectionType.stRoulette;
        lbSelectionType.Text := 'Roulette';
     end
     else
     begin
      GA.SelectionType := TSelectionType.stRank;
      lbSelectionType.Text := 'Rank';
     end;

end;

end.


