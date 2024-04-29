unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxLabel, Math;

type
  TuSorteador = class(TForm)
    lblNumeroInicial: TcxLabel;
    lblNumeroFinal: TcxLabel;
    edNumeroInicial: TcxMaskEdit;
    edNumeroFinal: TcxMaskEdit;
    btSortear: TcxButton;
    lblSorteado: TcxLabel;
    procedure btSortearClick(Sender: TObject);
  private
    function temErros(): Boolean;
  public
    { Public declarations }
  end;

var
  uSorteador: TuSorteador;

implementation

{$R *.dfm}

procedure TuSorteador.btSortearClick(Sender: TObject);
var
  numeroSorteado: Integer;
begin
  if temErros then
    Exit;

  lblSorteado.Visible := true;
  numeroSorteado := RandomRange(StrToInt(edNumeroInicial.EditValue),
                                StrToInt(edNumeroFinal.EditValue) + 1);
  Randomize;
  lblSorteado.EditValue := 'O n�mero sorteado foi: ' + IntToStr(numeroSorteado);
end;

function TuSorteador.temErros: Boolean;
var
  mensagem : TStringList;
begin
  mensagem := TStringList.Create;
  if (edNumeroInicial.EditText = '') OR (edNumeroFinal.EditText = '') then
     mensagem.Add('N�mero inicial ou final n�o informado.')
  else if StrToInt(edNumeroInicial.EditValue) >= StrToInt(edNumeroFinal.EditValue) then
    mensagem.Add('O n�mero inicial deve ser menor que o n�mero final.');

  if mensagem.Count > 0 then
  begin
    ShowMessage('Erro: ' + Mensagem.CommaText);
    result := true;
  end
  else
    result := false;
end;

end.
