// ************************************************************************ //
// 在文件中的类声明从 WSDL 文件中读取数据生成, 描述如下:
// WSDL     : http://localhost:11031/WService.asmx?wsdl
// 编码     : utf-8
// 版本     : 1.0
// (2016/6/22 16:15:16 - 1.33.2.5)
// ************************************************************************ //

unit WService;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // 下列类型, 提交至 WSDL 文件没有表现在文件中.
  // 它们是其他类型表示或归类的任何一个别名[@]
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // 指示错误的 WSDL 文件声明失败或或导入概要类.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"

  HeaderType           = class;                 { "http://tempuri.org/" }
  BodyType             = class;                 { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HeaderType = class(TRemotable)
  private
    FCallerId: WideString;
    FUserId: WideString;
    FTransId: WideString;
    FReferenceId: WideString;
    FReferenceTime: WideString;
    FSignType: WideString;
    FReserve: WideString;
    FReturnCode: WideString;
    FErrorCode: WideString;
    FErrorMsg: WideString;
  published
    property CallerId: WideString read FCallerId write FCallerId;
    property UserId: WideString read FUserId write FUserId;
    property TransId: WideString read FTransId write FTransId;
    property ReferenceId: WideString read FReferenceId write FReferenceId;
    property ReferenceTime: WideString read FReferenceTime write FReferenceTime;
    property SignType: WideString read FSignType write FSignType;
    property Reserve: WideString read FReserve write FReserve;
    property ReturnCode: WideString read FReturnCode write FReturnCode;
    property ErrorCode: WideString read FErrorCode write FErrorCode;
    property ErrorMsg: WideString read FErrorMsg write FErrorMsg;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  BodyType = class(TRemotable)
  private
    FRecord_: WideString;
  published
    property Record_: WideString read FRecord_ write FRecord_;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/Execute
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : WServiceSoap
  // service   : WService
  // port      : WServiceSoap
  // URL       : http://localhost:11031/WService.asmx
  // ************************************************************************ //
  WServiceSoap = interface(IInvokable)
  ['{654F3235-5DBC-1BCC-BB70-4F96E0D655AC}']
    procedure Execute(const routeId: WideString; const header: HeaderType; const body: BodyType; const signData: WideString; out outrouteId: WideString; out outheader: HeaderType; out outbody: BodyType; out outsignData: WideString); stdcall;
  end;

function GetWServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WServiceSoap;


implementation

function GetWServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WServiceSoap;
const
  defWSDL = 'http://localhost:34720/MedicalServiceXml.asmx?wsdl';
  defURL  = 'http://localhost:34720/MedicalServiceXml.asmx';
  defSvc  = 'WService';
  defPrt  = 'WServiceSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(WServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WServiceSoap), 'http://tempuri.org/Execute');
  RemClassRegistry.RegisterXSClass(HeaderType, 'http://tempuri.org/', 'HeaderType');
  RemClassRegistry.RegisterXSClass(BodyType, 'http://tempuri.org/', 'BodyType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(BodyType), 'Record_', 'Record');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WServiceSoap), ioDocument);     //  解决传递参数为null的问题

end. 