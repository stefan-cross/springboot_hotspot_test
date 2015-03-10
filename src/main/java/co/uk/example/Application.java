package co.uk.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;

@Configuration
@EnableAutoConfiguration
@SpringBootApplication
public class Application implements ErrorController{

    private static final String PATH = "/error";

    @RequestMapping(value = PATH)
    public String error(){
        return "Error handling";
    }

    @Override
    public String getErrorPath() {
        return PATH;
    }

    public static void main(String[] args){
        SpringApplication.run(Application.class, args);
    }

}
