/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;


import com.connection.connectionDB;
import static com.dao.ArticleDAO.ArticleListByCategories;
import com.model.Articles;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class PanierDAO {

    private Map<Articles, Integer> article;
    public static HashMap <Articles,Integer> hashmapArticles;

         public static HashMap<Articles,Integer> ArticlesByHashMap(Articles article,int qty) throws SQLException {
        
        PreparedStatement preparedStatement = null;
        Connection con = null;
        hashmapArticles = new HashMap<>();
      
        hashmapArticles.put(article, qty);
        
        return hashmapArticles;
    }

    public void ajouterArticle(Articles art, int qte) {
        Integer quantity = article.get(art);
        if (quantity == null) {
            quantity = Integer.valueOf(0);
        }
        quantity = Integer.valueOf(quantity.intValue() + 1);
        article.put(art, quantity);
    }
    
   

//    public void supprimerArticle(Articles article) {
//        article.remove(article);
//    }

    public int calculerPanier() {
        int total = 0;
        Iterator<Entry<Articles, Integer>> il = this.article.entrySet().iterator();
        while (il.hasNext()) {
            Entry<Articles, Integer> entry = il.next();
            total += entry.getKey().getPRICE() * entry.getValue().intValue();
        }
        return total;
    }
}
