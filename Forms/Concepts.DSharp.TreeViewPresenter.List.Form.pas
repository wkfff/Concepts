{
  Copyright (C) 2013-2015 Tim Sinaeve tim.sinaeve@gmail.com

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

unit Concepts.DSharp.TreeViewPresenter.List.Form;

{ Form demonstrating the usage of the DSharp TTreeViewPresenter which simplifies
  the process of representing data in a TVirtualStringTree control. }

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Actions,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls, Vcl.ActnList,

  VirtualTrees,

  DSharp.Windows.ColumnDefinitions, DSharp.Windows.TreeViewPresenter,
  DSharp.Bindings, DSharp.Windows.CustomPresenter,

  Spring.Collections,

  DDuce.Components.PropertyInspector, DDuce.Components.GridView,

  Concepts.Types.Contact;

type
  TfrmTreeViewPresenterList = class(TForm)
    pnlTop               : TPanel;
    pnlBottom            : TPanel;
    pnlLeft              : TPanel;
    aclMain              : TActionList;
    splVertical          : TSplitter;
    pnlTreeviewPresenter : TPanel;
    pnlLeftTop           : TPanel;
    pnlLeftBottom        : TPanel;
    splHorizontal        : TSplitter;

  private
    FList       : IList<TContact>;
    FPI         : TPropertyInspector;
    FVST        : TVirtualStringTree;
    FTVP        : TTreeViewPresenter;
    FVSTColumns : TVirtualStringTree;
    FTVPColumns : TTreeViewPresenter;

    procedure FTVPColumnsSelectionChanged(Sender: TObject);
    procedure FTVPSelectionChanged(Sender: TObject);

  public
    procedure AfterConstruction; override;

    procedure CreateColumnDefinitionsView;

  end;

implementation

{$R *.dfm}

uses
  DSharp.Windows.ColumnDefinitions.ControlTemplate,

  DDuce.RandomData, DDuce.Components.Factories,

  Concepts.Factories, Concepts.ComponentInspector;

{$REGION 'construction and destruction'}
procedure TfrmTreeViewPresenterList.AfterConstruction;
var
  C : TColumnDefinition;
  I : Integer;
begin
  inherited AfterConstruction;
  FList := TConceptFactories.CreateContactList(10000);
  FVST  := TConceptFactories.CreateVirtualStringTree(Self, pnlTop);
  FTVP  := TConceptFactories.CreateTreeViewPresenter(Self, FVST, FList as IObjectList);
  FPI   := TDDuceComponents.CreatePropertyInspector(Self, pnlLeftTop, FTVP);

  FTVP.View.ItemTemplate := TColumnDefinitionsControlTemplate.Create(FTVP.ColumnDefinitions);
  FTVP.OnSelectionChanged := FTVPSelectionChanged;

  CreateColumnDefinitionsView;
//  InspectComponent(FTVP);
end;
{$ENDREGION}

procedure TfrmTreeViewPresenterList.CreateColumnDefinitionsView;
var
  CDList : IList<TColumnDefinition>;
  C      : TColumnDefinition;
  I      : Integer;
begin
  CDList := TCollections.CreateObjectList<TColumnDefinition>;
  for I := 0 to FTVP.ColumnDefinitions.Count - 1 do
  begin
    C := FTVP.ColumnDefinitions[I];
    CDList.Add(C);
    //FPI.Add(C);
  end;
  FVSTColumns := TConceptFactories.CreateVirtualStringTree(Self, pnlLeftBottom);
  FTVPColumns := TConceptFactories.CreateTreeViewPresenter(Self, FVSTColumns, CDList as IObjectList);
  //FTVPColumns.ListMode := True;
  FTVPColumns.SelectionMode := smSingle;

  FTVPColumns.OnSelectionChanged := FTVPColumnsSelectionChanged;
end;

procedure TfrmTreeViewPresenterList.FTVPColumnsSelectionChanged(Sender: TObject);
begin
  if Assigned(FTVPColumns.SelectedItem) then
    FPI.Objects[0] := FTVPColumns.SelectedItem;
end;

procedure TfrmTreeViewPresenterList.FTVPSelectionChanged(Sender: TObject);
begin
  FPI.Objects[0] := FTVP;
end;

end.

