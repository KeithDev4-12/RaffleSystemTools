unit UpdateDatabase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, VirtualTable, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP,System.JSON, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  System.Net.HttpClient,  System.Generics.Collections, StrUtils,EncdDecd,
  Vcl.ExtCtrls;

type
  TUpdateDatabaseU = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    VirtualTable1: TVirtualTable;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    VirtualTable1AccountNumber: TStringField;
    VirtualTable1Name: TStringField;
    IdHTTP1: TIdHTTP;
    BitBtn2: TBitBtn;
    imgApplicant: TImage;
    imgSignature: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure FetchAndPopulateVirtualTable(VirtualTable: TVirtualTable);
    procedure FetchAndPopulateImage(Const AccountNumber:String);
    function GetFirstLetterOfLastWord(const S: string): Char;
    function GetAllWordsExceptLast(const S: string): string;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdateDatabaseU: TUpdateDatabaseU;

implementation

{$R *.dfm}
Uses MainModuleU;


procedure TUpdateDatabaseU.BitBtn2Click(Sender: TObject);
begin
  FetchAndPopulateImage('08380154');
end;

procedure TUpdateDatabaseU.FetchAndPopulateImage(Const AccountNumber:String);
var
  httpClient: THttpClient;
  url: string;
  response: IHTTPResponse;
  jsonObj: TJSONObject;
  JSONArray: TJSONArray;
  I:Integer;
begin
  httpClient := THttpClient.Create;
  try
    //url := 'https://api.genderize.io/?name=' + firstName ;
    url := 'https://soreco1.org/api/getPicture?AccountNumber='+AccountNumber;
    // + '&apikey=' + apiKey;
    //Example: https://gender-api.com/get?name=elizabeth&key=zFCT2mhYdQKSBQuWj4gdW7awqvHpXeA6n5VU
    response := httpClient.Get(url);
  finally
    httpClient.Free;
  end;
  //VirtualTable.Clear;
  JSONArray := TJSONObject.ParseJSONValue(response.ContentAsString) as TJSONArray;
  try
    // Iterate through JSON array and populate VirtualTable
    if JSONArray.Count = 1 then
    begin
      jsonObj := JSONArray.Items[0] as TJSONObject;
      with UMainModule do begin
        if tblMemberConsumerPicture.Locate('AccountNumber',jsonObj.GetValue('AccountNumber').Value,[]) then begin
          tblMemberConsumerPicture.Edit;
        end else begin
          tblMemberConsumerPicture.Append;
        end;
        //ShowMessage(jsonObj.GetValue('AccountNumber').Value);
        tblMemberConsumerPictureAccountNumber.AsString := jsonObj.GetValue('AccountNumber').Value;
        tblMemberConsumerPictureApplicantSignature.AsBytes := DecodeBase64(jsonObj.GetValue('ApplicantSignature').Value);
        //tblMemberConsumerPictureApplicantPicture.AsString := DecodeBase64(jsonObj.GetValue('ApplicantPicture').Value);
        //tblMemberConsumerPictureApplicantSpouse.AsString := DecodeBase64(jsonObj.GetValue('ApplicantSpouse').Value);
        tblMemberConsumerPicture.Post;
      end;
    end else begin

    end;
  finally
    JSONArray.Free;
  end;
end;

procedure TUpdateDatabaseU.FetchAndPopulateVirtualTable(VirtualTable: TVirtualTable);
var
  httpClient: THttpClient;
  url: string;
  response: IHTTPResponse;
  jsonObj: TJSONObject;
  JSONArray: TJSONArray;
  I:Integer;
begin
  httpClient := THttpClient.Create;
  try
    //url := 'https://api.genderize.io/?name=' + firstName ;
    url := 'https://soreco1.org/api/fetchUpdated';
    // + '&apikey=' + apiKey;
    //Example: https://gender-api.com/get?name=elizabeth&key=zFCT2mhYdQKSBQuWj4gdW7awqvHpXeA6n5VU
    response := httpClient.Get(url);
  finally
    httpClient.Free;
  end;
  VirtualTable.Clear;
  JSONArray := TJSONObject.ParseJSONValue(response.ContentAsString) as TJSONArray;
  try
    // Iterate through JSON array and populate VirtualTable
    for I := 0 to JSONArray.Count - 1 do
    begin
      jsonObj := JSONArray.Items[I] as TJSONObject;

      // Assuming the JSON structure contains 'AccountNumber' and 'Name' fields
      VirtualTable.Append;
      VirtualTable.FieldByName('AccountNumber').AsString := jsonObj.GetValue('AccountNumber').Value;
      VirtualTable.FieldByName('Name').AsString := jsonObj.GetValue('Name').Value;
      VirtualTable.Post;

    end;
  finally
    JSONArray.Free;
  end;
end;

function TUpdateDatabaseU.GetFirstLetterOfLastWord(const S: string): Char;
var
  LastSpacePos: Integer;
begin
  // Find the position of the last space
  LastSpacePos := LastDelimiter(' ', S);

  // If no space is found, consider the whole string as the last word
  if LastSpacePos = 0 then
    Result := S[1]
  else
  begin
    // Extract the last word and return its first letter
    Result := S[LastSpacePos + 1];
  end;
end;

function TUpdateDatabaseU.GetAllWordsExceptLast(const S: string): string;
var
  LastSpacePos: Integer;
begin
  // Find the position of the last space
  LastSpacePos := LastDelimiter(' ', S);

  // If no space is found or if the string has only one word, return an empty string
  if (LastSpacePos = 0) or (LastSpacePos = Length(S)) then
    Exit('');

  // Extract all words except the last one
  Result := Copy(S, 1, LastSpacePos - 1);
end;

procedure TUpdateDatabaseU.BitBtn1Click(Sender: TObject);
Var
  SplitName:String;
  SplitFirst:String;
  SplitLastName:String;
  SplitCount:Integer;
begin
  FetchAndPopulateVirtualTable(VirtualTable1);
  UMainModule.qryMemberConsumers.Close;
  UMainModule.qryMemberConsumers.ParamByName('AYear').AsInteger := CurrentYear;
  UMainModule.qryMemberConsumers.Open;
  UMainModule.qryMemberConsumers.First;

  VirtualTable1.First;
  while not VirtualTable1.EOF do begin
    with UMainModule do begin

      if VirtualTable1AccountNumber.AsString <> EmptyStr then begin
        if qryMemberConsumers.Locate('AccountNumber',VirtualTable1AccountNumber.AsString,[]) then begin
          FetchAndPopulateImage(VirtualTable1AccountNumber.AsString);
          qryMemberConsumers.Edit;
          qryMemberConsumersIsSignatureAvailable.AsInteger := 1;
          qryMemberConsumers.Post;
        end;

      end else begin
        SplitName := StringReplace(VirtualTable1Name.AsString,',','',[rfReplaceAll, rfIgnoreCase]);
        SplitLastName := GetFirstLetterOfLastWord(SplitName) + '.';
        SplitFirst := GetAllWordsExceptLast(SplitName);

        qryMemberConsumers.Filtered := False;
        qryMemberConsumers.Filter := 'Name Like ' + QuotedStr(SplitName);
        qryMemberConsumers.Filtered := True;

          if qryMemberConsumers.IsEmpty then begin
            qryMemberConsumers.Filtered := False;
            qryMemberConsumers.Filter := 'Name Like ' + QuotedStr(SplitFirst + ' ' + SplitLastName);
            qryMemberConsumers.Filtered := True;
            if not qryMemberConsumers.IsEmpty then begin
              FetchAndPopulateImage(qryMemberConsumersName.AsString);
              qryMemberConsumers.Edit;
              qryMemberConsumersIsSignatureAvailable.AsInteger := 1;
              qryMemberConsumers.Post;
            end;
          end else begin
            FetchAndPopulateImage(qryMemberConsumersName.AsString);
            qryMemberConsumers.Edit;
            qryMemberConsumersIsSignatureAvailable.AsInteger := 0;
            qryMemberConsumers.Post;
          end;
        end;
      VirtualTable1.Next;
    end;

  end;
end;

end.