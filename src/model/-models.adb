--  DaDaPush Public API
--  DaDaPush: Real_time Notifications App Send real_time notifications through our API without coding and maintaining your own app for iOS or Android devices.
--
--  The version of the OpenAPI document: v1
--  Contact: contacts@dadapush.com
--
--  NOTE: This package is auto generated by OpenAPI-Generator 4.0.2.
--  https://openapi-generator.tech
--  Do not edit the class manually.


package body .Models is

   use Swagger.Streams;



   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ActionType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("name", Value.Name);
      Into.Write_Entity ("type", Value.P_Type);
      Into.Write_Entity ("url", Value.Url);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ActionType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ActionType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "name", Value.Name);
      Swagger.Streams.Deserialize (Object, "type", Value.P_Type);
      Swagger.Streams.Deserialize (Object, "url", Value.Url);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ActionType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ActionType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessagePushRequestType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "actions", Value.Actions);
      Into.Write_Entity ("content", Value.Content);
      Into.Write_Entity ("needPush", Value.Need_Push);
      Into.Write_Entity ("title", Value.Title);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessagePushRequestType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessagePushRequestType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "actions", Value.Actions);
      Swagger.Streams.Deserialize (Object, "content", Value.Content);
      Swagger.Streams.Deserialize (Object, "needPush", Value.Need_Push);
      Swagger.Streams.Deserialize (Object, "title", Value.Title);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessagePushRequestType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : MessagePushRequestType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageObjectType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "actions", Value.Actions);
      Into.Write_Entity ("channelName", Value.Channel_Name);
      Into.Write_Entity ("content", Value.Content);
      Into.Write_Entity ("createdAt", Value.Created_At);
      Serialize (Into, "id", Value.Id);
      Into.Write_Entity ("title", Value.Title);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageObjectType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageObjectType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "actions", Value.Actions);
      Swagger.Streams.Deserialize (Object, "channelName", Value.Channel_Name);
      Swagger.Streams.Deserialize (Object, "content", Value.Content);
      Swagger.Streams.Deserialize (Object, "createdAt", Value.Created_At);
      Swagger.Streams.Deserialize (Object, "id", Value.Id);
      Swagger.Streams.Deserialize (Object, "title", Value.Title);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageObjectType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : MessageObjectType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultOfMessageObjectType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("code", Value.Code);
      Serialize (Into, "data", Value.Data);
      Into.Write_Entity ("errmsg", Value.Errmsg);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultOfMessageObjectType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultOfMessageObjectType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "code", Value.Code);
      Swagger.Streams.Deserialize (Object, "data", Value.Data);
      Swagger.Streams.Deserialize (Object, "errmsg", Value.Errmsg);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultOfMessageObjectType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ResultOfMessageObjectType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PageResponseOfMessageObjectType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "content", Value.Content);
      Serialize (Into, "totalElements", Value.Total_Elements);
      Serialize (Into, "totalPages", Value.Total_Pages);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PageResponseOfMessageObjectType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PageResponseOfMessageObjectType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "content", Value.Content);
      Swagger.Streams.Deserialize (Object, "totalElements", Value.Total_Elements);
      Swagger.Streams.Deserialize (Object, "totalPages", Value.Total_Pages);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PageResponseOfMessageObjectType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : PageResponseOfMessageObjectType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultOfPageResponseOfMessageObjectType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("code", Value.Code);
      Serialize (Into, "data", Value.Data);
      Into.Write_Entity ("errmsg", Value.Errmsg);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultOfPageResponseOfMessageObjectType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultOfPageResponseOfMessageObjectType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "code", Value.Code);
      Swagger.Streams.Deserialize (Object, "data", Value.Data);
      Swagger.Streams.Deserialize (Object, "errmsg", Value.Errmsg);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultOfPageResponseOfMessageObjectType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ResultOfPageResponseOfMessageObjectType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessagePushResponseType) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "messageId", Value.Message_Id);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessagePushResponseType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessagePushResponseType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "messageId", Value.Message_Id);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessagePushResponseType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : MessagePushResponseType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultOfMessagePushResponseType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("code", Value.Code);
      Serialize (Into, "data", Value.Data);
      Into.Write_Entity ("errmsg", Value.Errmsg);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultOfMessagePushResponseType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultOfMessagePushResponseType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "code", Value.Code);
      Swagger.Streams.Deserialize (Object, "data", Value.Data);
      Swagger.Streams.Deserialize (Object, "errmsg", Value.Errmsg);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultOfMessagePushResponseType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ResultOfMessagePushResponseType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultType) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("code", Value.Code);
      Serialize (Into, "data", Value.Data);
      Into.Write_Entity ("errmsg", Value.Errmsg);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ResultType_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultType) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "code", Value.Code);
      Swagger.Streams.Deserialize (Object, "data", Value.Data);
      Swagger.Streams.Deserialize (Object, "errmsg", Value.Errmsg);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ResultType_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ResultType;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;



end .Models;
