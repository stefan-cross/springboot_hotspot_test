package co.uk.example;

import org.hibernate.*;

import java.util.ArrayList;
import java.util.List;

public class HotspotQuery {


    public List listHotspots(String location, int limit){

        SessionFactory session = HibernateUtil.getSessionFactory();
        Transaction tx = null;
        List<HotspotEntity> hotspots = new ArrayList<HotspotEntity>();
        
        try{
            tx = session.getCurrentSession().beginTransaction();

            hotspots = session.getCurrentSession()
                    .createQuery("From HotspotEntity WHERE town = :location")
                    .setParameter("location", location)
                    .setMaxResults(limit)
                    .list();
            
            tx.commit();
        } 
        catch(HibernateException e) {
          if(tx!=null) tx.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }
        
        return hotspots;
    }
    
}
