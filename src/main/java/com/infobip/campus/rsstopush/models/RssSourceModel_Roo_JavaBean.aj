// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.infobip.campus.rsstopush.models;

import com.infobip.campus.rsstopush.models.RssFeedModel;
import com.infobip.campus.rsstopush.models.RssSourceModel;
import java.util.List;

privileged aspect RssSourceModel_Roo_JavaBean {
    
    public String RssSourceModel.getSourceName() {
        return this.sourceName;
    }
    
    public void RssSourceModel.setSourceName(String sourceName) {
        this.sourceName = sourceName;
    }
    
    public List<RssFeedModel> RssSourceModel.getRssFeeds() {
        return this.rssFeeds;
    }
    
    public void RssSourceModel.setRssFeeds(List<RssFeedModel> rssFeeds) {
        this.rssFeeds = rssFeeds;
    }
    
}
