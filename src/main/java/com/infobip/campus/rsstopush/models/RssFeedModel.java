package com.infobip.campus.rsstopush.models;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class RssFeedModel {

    /**
     */
    private String rssUrl;

    /**
     */
    private String description;

}