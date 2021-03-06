// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.infobip.campus.rsstopush.models;

import com.infobip.campus.rsstopush.models.RssSourceModel;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RssSourceModel_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager RssSourceModel.entityManager;
    
    public static final EntityManager RssSourceModel.entityManager() {
        EntityManager em = new RssSourceModel().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    @Transactional
    public static long RssSourceModel.countRssSourceModels() {
        return findAllRssSourceModels().size();
    }
    
    @Transactional
    public static List<RssSourceModel> RssSourceModel.findAllRssSourceModels() {
        return entityManager().createQuery("SELECT o FROM RssSourceModel o", RssSourceModel.class).getResultList();
    }
    
    @Transactional
    public static RssSourceModel RssSourceModel.findRssSourceModel(Long id) {
        if (id == null) return null;
        return entityManager().find(RssSourceModel.class, id);
    }
    
    @Transactional
    public static List<RssSourceModel> RssSourceModel.findRssSourceModelEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RssSourceModel o", RssSourceModel.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void RssSourceModel.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void RssSourceModel.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            RssSourceModel attached = RssSourceModel.findRssSourceModel(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void RssSourceModel.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void RssSourceModel.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public RssSourceModel RssSourceModel.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        RssSourceModel merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
