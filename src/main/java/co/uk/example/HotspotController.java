package co.uk.example;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HotspotController {
    
    @RequestMapping("/hotspot")
    public List<HotspotEntity> hotspot(
            @RequestParam(value="town", defaultValue = "london")String location,
            @RequestParam(value="limit", defaultValue = "5") int limit)
    {

        List results = new HotspotQuery().listHotspots(location, limit);

        if(results.isEmpty()){
            results.add("nill");
        }
        
        return results;
    }
}
