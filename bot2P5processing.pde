//
import http.requests.*;
String post;
//token
String accessToken = "2020";
 void setup() {
  size(400,400);
  smooth();
  //token-idcaht-textmsg
  sendblebot(accessToken , "111" ,"hi");
  
}

void sendblebot(String aTkn,String chatid ,String txt){
   PostRequest post = new PostRequest("https://tapi.bale.ai/bot" +  aTkn +"/sendMessage" );
  post.addData("chat_id", chatid);
post.addData("text", txt);
  post.send();
  System.out.println("Reponse Content: " + post.getContent());
  System.out.println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
  
}

void getsendmsg(String aTkn){
   PostRequest post = new PostRequest("https://tapi.bale.ai/bot" +  aTkn +"/getUpdates" );
  post.send();
 // System.out.println("Reponse Content: " + post.getContent());
 // System.out.println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
 //JSONObject animal  = post.getContent();

}
