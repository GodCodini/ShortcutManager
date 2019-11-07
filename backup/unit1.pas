unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus, Process;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PopupMenu1: TPopupMenu;
    TrayIcon1: TTrayIcon;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure openProgram(Path: String);
  private

  public

  end;

var
  Form1: TForm1;
  RunProgram: TProcess;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
      0:
        begin
          openProgram('C:\Program Files\JetBrains\PhpStorm 2018.3.5\bin\phpstorm64.exe');
        end;
      1:
        begin
          openProgram('C:\Program Files\NetBeans 8.2\bin\netbeans64.exe');
        end;
      2:
        begin
          openProgram('C:\lazarus\lazarus.exe');
        end;
      3:
        begin
          openProgram('C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe');
        end;
      4:
        begin
          openProgram('C:\Users\pamperin\Desktop\Krams\Notepad++\notepad++.exe');
        end;
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
      0:
        begin
          openProgram('C:\xampp_7\xampp-control.exe');
        end;
      1:
        begin
          openProgram('C:\xampp_5\xampp-control.exe');
        end;
      end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  case ComboBox3.ItemIndex of
      0:
        begin
          openProgram('G:\g\grd\program\grd_intern\konvertierungen\zentrale.exe');
        end;
      1:
        begin
          openProgram('C:\portable\foxe\foxe.exe');
        end;
      2:
        begin
          openProgram('C:\Program Files (x86)\epcEdit\bin\epcEdit.exe');
        end;
      3:
        begin
          openProgram('C:\Program Files (x86)\Ovidius\TreeVision\TreeVision.exe');
        end;
      end;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  openProgram('C:\Program Files\JetBrains\PhpStorm 2018.3.5\bin\phpstorm64.exe');
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  openProgram('C:\xampp_7\xampp-control.exe');
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  openProgram('C:\Users\pamperin\Desktop\Krams\Notepad++\notepad++.exe');
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.openProgram(Path: String);
begin
  RunProgram := TProcess.Create(nil);
  RunProgram.Executable := Path;
  RunProgram.Execute;
  RunProgram.Free;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
   if WindowState = wsMinimized then begin
    WindowState:=wsNormal;
    Show;
  end;
end;

procedure TForm1.FormWindowStateChange(Sender: TObject);
begin
  if Form1.WindowState = wsMinimized then
    Hide;
end;


end.
