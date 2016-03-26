import java.sql.*;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;

import java.io.*;
import java.util.*;
import freemarker.template.*;

import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;

import static javax.measure.unit.SI.KILOGRAM;
import javax.measure.quantity.Mass;
import org.jscience.physics.model.RelativisticModel;
import org.jscience.physics.amount.Amount;

public class Main {

  public static void main(String[] args) {

    port(Integer.valueOf(System.getenv("PORT")));
    staticFileLocation("/public");

    //get("/hello", (req, res) -> "Hello World");
    get("/hello", (req, res) -> {
          RelativisticModel.select();
          Amount<Mass> m = Amount.valueOf("12 GeV").to(KILOGRAM);
          return "E=mc^2: 12 GeV = " + m.toString();
        });

    try{
          Configuration cfg = new Configuration(); 
          cfg.setDefaultEncoding("UTF-8");
            cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
            Map<String, Object> map = new HashMap<>();
            map.put("blogTitle", "FitBuddy");
            map.put("message", "FitBuddy is a personalized web application, in which users are going to be able to create account and interact with on a daily basis. Each day, the user is going to enter his/hers calorie intake, activities, the type and time, and their sleep into the system. Therefore, they can keep track of their health status. This information is specifically useful for the trainers. They can keep track of their clients and based on these information, the trainers can give the clients a personalized excercise and diet plan");
            cfg.setDirectoryForTemplateLoading(new File("/Users/setaresarachi/full-stack-web-project-SetarehSarachi/src/main/resources/public"));
            Template template = cfg.getTemplate("test.ftl");
            Writer out = new OutputStreamWriter(System.out);
            template.process(map, out);
    }
  
    catch (IOException e){
      e.printStackTrace();
        }catch (TemplateException e) {
            e.printStackTrace();
    }
    
 
   /*get("/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("message", "Hello World!");

            return new ModelAndView(attributes, "index.ftl");
        }, new FreeMarkerEngine());*/

    get("/db", (req, res) -> {
      Connection connection = null;
      Map<String, Object> attributes = new HashMap<>();
      try {
        connection = DatabaseUrl.extract().getConnection();

        Statement stmt = connection.createStatement();
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
        stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
        ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

        ArrayList<String> output = new ArrayList<String>();
        while (rs.next()) {
          output.add( "Read from DB: " + rs.getTimestamp("tick"));
        }

        attributes.put("results", output);
        return new ModelAndView(attributes, "db.ftl");
      } catch (Exception e) {
        attributes.put("message", "There was an error: " + e);
        return new ModelAndView(attributes, "error.ftl");
      } finally {
        if (connection != null) try{connection.close();} catch(SQLException e){}
      }
    }, new FreeMarkerEngine());

  }

}
