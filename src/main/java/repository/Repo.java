package repository;


import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class Repo {
    @Autowired
    JdbcTemplate jdbcTemplate = new JdbcTemplate();

    public void save(News news){

    jdbcTemplate.update("insert into news values (?,?,?,?)",news.getId(),news.getNews(),news.getSum(),news.getHighlight());
        //System.out.println("sds");
    }
    public ArrayList show(){

        SqlRowSet sqlRowSet =jdbcTemplate.queryForRowSet("Select * from news");

        ArrayList<String> map = new ArrayList();

        do
        {
            sqlRowSet.next();
            String news = sqlRowSet.getString("news");
            int id = sqlRowSet.getInt("id");
            String Sum = sqlRowSet.getString("Sum");
            String Highlight = sqlRowSet.getString("Highlight");
            map.add(news);
            map.add(id+"");
            map.add(Sum);
            map.add(Highlight);
            //System.out.println(sqlRowSet.isLast());
        }while (!sqlRowSet.isLast());

        return map;
    }
    public ArrayList<News> generateNews (ArrayList<String> array)
    {

        News news = new News();
        ArrayList<News> newses = new ArrayList<>();
        for (int i =0 ; i<array.size();)
        {
            //System.out.println(products.get(i).toString());
            //System.out.print(array.get(i));
            news.setNews(array.get(i));
            i++;
            news.setId(Integer.parseInt(array.get(i)));

            i++;
            news.setSum(array.get(i));
            i++;
            //System.out.print(array.get(i));

            news.setHighlight(array.get(i));

            i++;
            newses.add(news);

         }
         for (int i =0 ;i<newses.size();i++)
             System.out.println(i+"  "+ newses.get(i).toString());

        return newses;
    }
}
