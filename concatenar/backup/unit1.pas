unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Fechar: TButton;
    Concatenar: TButton;
    Limpar: TButton;
    Texto: TLabel;
    Nome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Sobrenome: TEdit;
    procedure ConcatenarClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ConcatenarClick(Sender: TObject);
  Var
   n1, n2: String;
begin
  if (Nome.Text = '') AND (Sobrenome.Text == '') then
     showmessage('Existem campos em branco');
  n1 := Nome.Text;
  n2 := Sobrenome.Text;
  Texto.Caption := n1 + ' ' + n2;
end;

procedure TForm1.FecharClick(Sender: TObject);
begin
  Application.Terminate
end;

procedure TForm1.LimparClick(Sender: TObject);
begin
     Nome.Text := '';

     Sobrenome.Text  := '';
end;

end.

