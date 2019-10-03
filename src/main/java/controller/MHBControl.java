package controller;

import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repository.Repo;

import java.util.ArrayList;

@Controller
public class MHBControl {
    @Autowired
    News news;
    @Autowired
    Repo repo;

    @GetMapping("/")
    String first (Model model)
    {
        ArrayList<String> array = repo.show();
        ArrayList<News> newses = repo.generateNews(array);
        model.addAttribute("newses", newses);
        return "index";
    }
    @GetMapping("/addNews")
    String addNews(Model model)
    {
        model.addAttribute(news);
        return "addNews";
    }
    @PostMapping("/ConfirmAddNews")
    String confirmAddNews(Model model , @RequestParam(name = "News")String news1 ,@RequestParam(name = "Sum")String sum,@RequestParam(name = "Highlight")String Highlight)
    {
        news = new News(news1,sum,Highlight);
        news.setId(0);
        repo.save(news);
        model.addAttribute(news);
        return "ConfirmAddNews";
    }
}
