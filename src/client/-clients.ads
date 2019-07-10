--  DaDaPush Public API
--  DaDaPush: Real_time Notifications App Send real_time notifications through our API without coding and maintaining your own app for iOS or Android devices.
--
--  The version of the OpenAPI document: v1
--  Contact: contacts@dadapush.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 4.0.2.
--  https://openapi-generator.tech
--  Do not edit the class manually.

with .Models;
with Swagger.Clients;
package .Clients is

   type Client_Type is new Swagger.Clients.Client_Type with null record;

   --  push Message to a Channel
   --  <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>30 request per 1m</li><li>500 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
   procedure Create_Message
      (Client : in out Client_Type;
       P_Body : in .Models.MessagePushRequestType;
       X_Channel_Token : in Swagger.Nullable_UString;
       Result : out .Models.ResultOfMessagePushResponseType);

   --  delete a Channel Message
   --  <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
   procedure Delete_Message
      (Client : in out Client_Type;
       Message_Id : in Swagger.Long;
       X_Channel_Token : in Swagger.Nullable_UString;
       Result : out .Models.ResultType);

   --  get a Channel Message
   --  <h2>Rate Limit:</h2><ul><li>10 request per 1s</li><li>100 request per 1m</li><li>1000 request per 1h</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
   procedure Get_Message
      (Client : in out Client_Type;
       Message_Id : in Swagger.Long;
       X_Channel_Token : in Swagger.Nullable_UString;
       Result : out .Models.ResultOfMessageObjectType);

   --  get Message List
   --  <h2>Rate Limit:</h2><ul><li>1 request per 1s</li><li>45 request per 1m</li></ul><h2>Result code/errmsg List:</h2><ul><li>0: ok</li><li>1: server error</li><li>101: channel is exists</li><li>102: channel is not exists</li><li>103: channel token error</li><li>104: channel is not exists</li><li>105: message is not exists</li><li>204: bad request</li><li>205: permission deny</li><li>206: too many request, please after 5 minutes to try!</li><li>301: duplicate username/email</li><li>302: user is not exists</li><li>303: user password is error</li><li>304: client push token is error</li><li>305: user is disabled</li><li>306: your subscription is expired</li><li>307: user not subscribe channel</li></ul>
   procedure Get_Messages
      (Client : in out Client_Type;
       Page : in Integer;
       Page_Size : in Integer;
       X_Channel_Token : in Swagger.Nullable_UString;
       Result : out .Models.ResultOfPageResponseOfMessageObjectType);

end .Clients;
