unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,InvokeRegistry, SOAPHTTPClient,WService, ComCtrls,IdHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,md5;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    MemoResult: TMemo;
    IdHTTP1: TIdHTTP;
    ckMethod: TCheckBox;
    GroupBox1: TGroupBox;
    rbJson: TRadioButton;
    rbXml: TRadioButton;
    edUrl: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edUserId: TEdit;
    Label4: TLabel;
    edToken: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RichEdit5001: TRichEdit;
    TabSheet2: TTabSheet;
    RichEdit5002: TRichEdit;
    TabSheet3: TTabSheet;
    RichEdit5003: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbXmlClick(Sender: TObject);
    procedure rbJsonClick(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
//  service:TargetServiceInterface;
  htype:headerType;
  bType:bodyType;
  routeId:WideString;
  singDta:WideString;

  outhtype:headerType;
  outbType:bodyType;
  outrouteId:WideString;
  outsingDta:WideString;

  serviceId :WideString;
  siginMethod :WideString;
  userId :WideString;
  nonce :WideString;
  token :WideString;
  signData :WideString;
  AGuid: TGUID;
  sGUID: WideString;

implementation

{$R *.dfm}
function GetGUID: string;
var
  Guid: TGUID;
begin
  CreateGUID(Guid);
  Result := GUIDToString(Guid);

end;

procedure TForm1.Button1Click(Sender: TObject);
var
 // stm: TMemoryStream;
 // strList: TStringList;
  ResponseStream : TStringStream; //返回信息
  RequestStream : TStringStream;
  str:WideString;
  Param:TStringList;

begin

    MemoResult.Lines.Clear();

    case (PageControl1.TabIndex) of
    0:begin
        str:=RichEdit5001.Lines.GetText();
        serviceId:='5001';
      end;
    1: begin
        str:=RichEdit5002.Lines.GetText();
        serviceId:='5002';
      end;
    2: begin
        str:=RichEdit5003.Lines.GetText();
        serviceId:='5003';
      end;
    end;
    userId:=edUserId.Text;
    token:=edToken.Text;
    
    //只保留换行符，回车符去掉，影响MD5校验结果
    str := StringReplace(str, #13,'', [rfReplaceAll]);
    
    // 复杂的安全校验
    if  ckMethod.Checked then
    begin
      siginMethod:='2';
      nonce:=GetGUID();
      signData:=UpperCase(md5.StrToMD5Str(AnsiToUTF8(str)+nonce+token+userId));
    end

    // 简单的安全校验
    else
    begin
      siginMethod:='1';
      nonce:='';
      signData:=UpperCase(md5.StrToMD5Str(token+userId));

    end;


    //json和xml判断
    if rbXml.Checked then
    begin

      MemoResult.Lines.Add('xml接口调用中，请稍候......');

      ResponseStream := TStringStream.Create('');
      RequestStream := TStringStream.Create('');
      RequestStream.WriteString('<?xml version="1.0" encoding="utf-8"?>');
	    RequestStream.WriteString('<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">');
      RequestStream.WriteString('<soap:Body>');
      RequestStream.WriteString('<MedicalServiceXml xmlns="http://tempuri.org/">');
      RequestStream.WriteString('<serviceId>'+serviceId+'</serviceId>');
      RequestStream.WriteString('<userId>'+userId+'</userId>');
      RequestStream.WriteString('<nonce>'+nonce+'</nonce>');
      RequestStream.WriteString('<data><![CDATA['+AnsiToUTF8(str)+']]></data>');
      //RequestStream.WriteString('<data>'+AnsiToUTF8(str)+'</data>');
      RequestStream.WriteString('<siginMethod>'+siginMethod+'</siginMethod>');
      RequestStream.WriteString('<signData>'+signData+'</signData>');
      RequestStream.WriteString('</MedicalServiceXml>');
      RequestStream.WriteString('</soap:Body>');
      RequestStream.WriteString('</soap:Envelope>');

  try

      IdHTTP1.Request.ContentType :='text/xml;charset=utf-8';
    //  IdHTTP1.Request.ContentLength:=   ByteLength(   RequestStream.DataString);
      IdHTTP1.Post(edurl.Text, RequestStream,ResponseStream);
      //MemoResult.Lines.Clear();
      MemoResult.Lines.Add(UTF8Decode(ResponseStream.DataString));
      MemoResult.Lines.Add('调用成功');
    finally
      RequestStream.Free;
      ResponseStream.Free;
  end;
    end
    else
    begin
    MemoResult.Lines.Add('json接口调用中，请稍候......');
    ResponseStream := TStringStream.Create('');
    Param:=  TStringList.Create;
    Param.Add('serviceId='+serviceId);
    Param.Add('userId='+userId);
    Param.Add('nonce='+nonce);
    Param.Add('data='+AnsiToUTF8(str));
    Param.Add('siginMethod='+siginMethod);
    Param.Add('signData='+signData);
  try

    IdHTTP1.Request.ContentType :='application/x-www-form-urlencoded;charset=utf-8';
    IdHTTP1.Post(edurl.Text, Param,ResponseStream);
    //MemoResult.Lines.Clear();
    MemoResult.Lines.Add(UTF8Decode(ResponseStream.DataString));
    MemoResult.Lines.Add('调用成功');
  finally
      ResponseStream.Free;
  end;                          
    end;

end;


procedure TForm1.FormShow(Sender: TObject);
begin
  edurl.Text:='http://localhost:34720/MedicalServiceXml.asmx?wsdl';
  rbXml.Checked:=true;
  edUserId.Text:='AB4799E030D3B0FF0726951B112D59F9';
  edToken.Text:='113CBAA194F83FCEEA1E6870CED148D0';
  PageControl1.ActivePageIndex:=0;


end;
procedure TForm1.rbJsonClick(Sender: TObject);
begin

if rbJson.Checked then
begin
    
  edurl.Text:='http://localhost:34720/MedicalServiceJson';
end else
        
  edurl.Text:='';

end;

procedure TForm1.rbXmlClick(Sender: TObject);
begin
if rbXml.Checked then
       begin
  edurl.Text:='http://localhost:34720/MedicalServiceXml.asmx?wsdl';
end
else
  edurl.Text:='';
end ;

end.
