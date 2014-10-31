import http.requests.*;

public void setup() 
{
	size(400,400);
	smooth();
	
  GetRequest get = new GetRequest("http://freemusicarchive.org/api/get/curators.json?api_key=4NN73CJRUFJNGECZ");
  get.send(); // program will wait untill the request is completed
  println("response: " + get.getContent());

  JSONObject response = parseJSONObject(get.getContent());
  println("status: " + response.getString("status"));
  JSONArray boxes = response.getJSONArray("data");
  println("boxes: ");
  for(int i=0;i<boxes.size();i++) {
    JSONObject box = boxes.getJSONObject(i);
    println("  wifiboxid: " + box.getString("wifiboxid"));
  }
}
