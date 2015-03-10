package co.uk.example;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistryBuilder;

import javax.imageio.spi.ServiceRegistry;

/**
 * Created with IntelliJ IDEA.
 * User: stefancross
 * Date: 10/03/2015
 * Time: 17:09
 */
public class HibernateUtil {

    private static SessionFactory sessionFactory;
    private static StandardServiceRegistry serviceRegistry;

    private static SessionFactory configureSessionFactory() throws HibernateException {
        Configuration configuration = new Configuration();
        configuration.configure();
        
        serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();

        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        return sessionFactory;

    }

    public static SessionFactory getSessionFactory() {
        return configureSessionFactory();

    }

}
