package com.bookproject.dao.base;


import com.bookproject.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by zmzy on 2017/2/17.
 */
public class BaseDaoImpl<T> implements IBaseDao<T> {
    private SessionFactory sessionFactory;

    @Resource(name = "sessionFactory")
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public Session getSession(){
        return  sessionFactory.getCurrentSession();
    }
    private Class<T> getCla(){
        return (Class<T>)(((ParameterizedType) (this.getClass().getGenericSuperclass())).getActualTypeArguments()[0]);
    }


    public void add(T t) {
        Session session=getSession();
        session.save(t);
    }

    @Override
    public T select(int id) {
        Session session=getSession();
        return session.get(getCla(),id);
    }

    @Override
    public List<T> selectList(String hql, Object[] params) {
        Session session=getSession();
        Query query=session.createQuery(hql);
        if(params!=null && params.length>0){
            for (int i=0;i<params.length;i++){
                query.setParameter(i,params[i]);
            }
        }
        return query.list();
    }

}
