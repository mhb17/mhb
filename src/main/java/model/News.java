package model;

import org.springframework.stereotype.Component;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Component
public class News {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String news;
    private String sum;
    private String highlight;

    public News() {
    }

    public News( String news, String sum, String highlight) {
//        this.id = id;
        this.news = news;
        this.sum = sum;
        this.highlight = highlight;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getSum() {
        return sum;
    }

    public void setSum(String sum) {
        this.sum = sum;
    }

    public String getHighlight() {
        return highlight;
    }

    public void setHighlight(String highlight) {
        this.highlight = highlight;
    }

    @Override
    public String toString() {
        return "NEWS : "+news+"\n sum : "+sum+"\n highlighted : ";
    }
}
