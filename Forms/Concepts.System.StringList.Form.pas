{
  Copyright (C) 2013-2017 Tim Sinaeve tim.sinaeve@gmail.com

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
}

{$I Concepts.inc}

unit Concepts.System.StringList.Form;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.ValEdit, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmStringList = class(TForm)
    aclMain             : TActionList;
    actClear            : TAction;
    actLoadFromFile     : TAction;
    actSaveToFile       : TAction;
    actSetDelimitedText : TAction;
    actSetNameValues    : TAction;
    actSetText          : TAction;
    actUpdate           : TAction;
    btnClear            : TButton;
    btnLoadFromFile     : TButton;
    btnSetDelimitedText : TButton;
    btnSetNameValues    : TButton;
    btnSetText          : TButton;
    chkCaseSensitive    : TCheckBox;
    chkSorted           : TCheckBox;
    chkStrictDelimiter  : TCheckBox;
    lstValueList        : TValueListEditor;
    mmoDelimitedText    : TMemo;
    mmoText             : TMemo;
    pnlDelimitedText    : TPanel;
    pnlGrid             : TGridPanel;
    pnlNameValues       : TPanel;
    pnlText             : TPanel;

    procedure actClearExecute(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure actSetTextExecute(Sender: TObject);
    procedure actSetDelimitedTextExecute(Sender: TObject);
    procedure actSetNameValuesExecute(Sender: TObject);
    procedure actSaveToFileExecute(Sender: TObject);

    procedure chkCaseSensitiveClick(Sender: TObject);
    procedure chkSortedClick(Sender: TObject);
    procedure chkStrictDelimiterClick(Sender: TObject);

  private
    FStringList : TStringList;
    FUpdate     : Boolean;

  protected
    procedure Modified;

    procedure UpdateActions; override;

  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

  end;

implementation

{$R *.dfm}

{$REGION 'construction and destruction'}

procedure TfrmStringList.AfterConstruction;
begin
  inherited AfterConstruction;
  FStringList := TStringList.Create;
end;

procedure TfrmStringList.BeforeDestruction;
begin
  FStringList.Free;
  inherited BeforeDestruction;
end;

procedure TfrmStringList.chkCaseSensitiveClick(Sender: TObject);
begin
  FStringList.CaseSensitive := (Sender as TCheckBox).Checked;
  Modified;
end;

procedure TfrmStringList.chkSortedClick(Sender: TObject);
begin
  FStringList.Sorted := (Sender as TCheckBox).Checked;
  Modified;
end;

procedure TfrmStringList.chkStrictDelimiterClick(Sender: TObject);
begin
  FStringList.StrictDelimiter := (Sender as TCheckBox).Checked;
  Modified;
end;
{$ENDREGION}

{$REGION 'action handlers'}
procedure TfrmStringList.actSaveToFileExecute(Sender: TObject);
begin
//
end;

procedure TfrmStringList.actSetDelimitedTextExecute(Sender: TObject);
begin
  FStringList.DelimitedText := mmoDelimitedText.Text;
  Modified;
end;

procedure TfrmStringList.actSetNameValuesExecute(Sender: TObject);
begin
  FStringList.Assign(lstValueList.Strings);
  Modified;
end;

procedure TfrmStringList.actSetTextExecute(Sender: TObject);
begin
  FStringList.Text := mmoText.Text;
  Modified;
end;

procedure TfrmStringList.actUpdateExecute(Sender: TObject);
begin
  //Modified;
end;

procedure TfrmStringList.actClearExecute(Sender: TObject);
begin
  FStringList.Clear;
  Modified;
end;
{$ENDREGION}

{$REGION 'protected methods'}
procedure TfrmStringList.Modified;
begin
  FUpdate := True;
end;

procedure TfrmStringList.UpdateActions;
begin
  inherited UpdateActions;
  if FUpdate then
  begin
    mmoDelimitedText.Text := FStringList.DelimitedText;
    lstValueList.Strings.Assign(FStringList);
    mmoText.Lines.Assign(FStringList);
    FUpdate := False;
  end;
end;
{$ENDREGION}

end.