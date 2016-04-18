
import static spark.Spark.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

//import model.appUser;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import com.heroku.sdk.jdbc.DatabaseUrl;

public class userLog {
	Gson gson = new Gson();
	
	public userLog() {
		userLogRoute();
	}
	
	public void userLogRoute(){
		get("/loggedFoods", (request, response) -> { // Get req and send JSON
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("Food1","1 Chocolate Donut");
			attributes.put("Food2","2 Tangerines");
			attributes.put("Food3","1 slice of Cheese Pizza");
			attributes.put("Food4","8 oz. Mac and Cheese");
			return attributes;
		} , gson::toJson);
		
		post("/loggedExcercise", (request, response) -> { // Post req and send JSON
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("Exercise1","1 hour Body Combat");
			attributes.put("Exercise2","30 mins Running");
			attributes.put("Exercise3","1 hour Body Combat");
			attributes.put("Exercise4","50 mins Body Attack");
			return attributes;
		} , gson::toJson);
		

		get("/loggedSleep", (request,response) -> {
		String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
		xml += "<sleephours>" +"<sunday> 6 hours </sunday>\n "+
				"<monday> 6 hours 30 minutes </monday>\n"+
				"<tuesday> 4 hours </tuesday>\n "+
				"</sleephours>";
		return xml;
		 });
		
	}
}