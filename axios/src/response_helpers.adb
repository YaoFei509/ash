
package body Response_Helpers is 

  -- @note don't use this directly
  function Headers
  return String is 
  begin
    return 
      "Http/1.1 200 OK"                             & CRLF &
      Response_Date                                 & CRLF &
      "Server: axios"                               & CRLF &
      "Content-Type: text/html; charset=iso-8859-1" & CRLF &
      "Content-Length: ";
  end Headers;

  function Response_Date
  return String is
  begin
    return "asd";
  end Response_Date;

  function Make_Response(S : String)
  return String is
    Test : String := 
      "<html><body><h1>Hello World</h1>" & 
      "<p>If you are reading this, then everything" &
      " is going according as planned.</p>";
     
  begin
    return
      Headers &
      Positive'Image(Test'Length) & CRLF & CRLF &
      Test;
  end Make_Response;


end Response_Helpers;
