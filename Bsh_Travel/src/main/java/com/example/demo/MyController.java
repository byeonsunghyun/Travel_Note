package com.example.demo;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.data.domain.Sort;


@Controller
public class MyController {

    @Autowired
    private TravelRepository TravelRep;

    @Autowired
    private TagRepository TagRep;

    @GetMapping("/")
    public String main(
        @RequestParam(name = "keyword", required = false) String keyword,
        @RequestParam(name = "tag", required = false) String tag,
        Model mo
    ) {
        List<Travel> list;
        Sort sortByIdDesc = Sort.by(Sort.Order.desc("id"));

        if (keyword != null && !keyword.isEmpty()) {
            list = TravelRep.findByNameContaining(keyword, sortByIdDesc);
        } else if (tag != null && !tag.isEmpty()) {
            List<Tag> matchingTags = TagRep.findByName(tag);
            List<Integer> travelIds = matchingTags.stream()
                                                  .map(t -> t.number)
                                                  .collect(Collectors.toList());
            list = TravelRep.findByIdIn(travelIds, sortByIdDesc);
        } else {
            list = TravelRep.findAll(sortByIdDesc);
        }

        List<Tag> list2 = TagRep.findAll();
        Set<String> uniqueTagNames = list2.stream()
                                          .map(t -> t.name)
                                          .collect(Collectors.toSet());

        mo.addAttribute("list", list);
        mo.addAttribute("list2", list2);
        mo.addAttribute("uniqueTagNames", uniqueTagNames);

        return "main";
    }

    
    @GetMapping("/detail/{id}")
    public String VC2025(@PathVariable("id") int id, Model mo) {
        Travel travel = TravelRep.findById(id).orElse(null);

        if (travel == null) {
            mo.addAttribute("msg", "Not Page");
            mo.addAttribute("url", "/");
            return "popups"; // 
        }

        List<Tag> tags = TagRep.findByNumber(id); // 여행 ID에 해당하는 태그 목록

        // 사이드바에 필요한 정보들을 detail 페이지로 추가
        
        List<Tag> list2 = TagRep.findAll();
        Set<String> uniqueTagNames = list2.stream()
                                          .map(t -> t.name)
                                          .collect(Collectors.toSet());

        // 모델에 여행 정보와 태그 및 사이드바 정보 추가
        mo.addAttribute("travel", travel);
        mo.addAttribute("tags", tags);
        mo.addAttribute("list2", list2); // 사이드바에 필요한 전체 태그 목록
        mo.addAttribute("uniqueTagNames", uniqueTagNames); // 고유 태그 이름 목록

        return "Country" + id; // 특정 여행 ID에 해당하는 Country 페이지 반환
    }
    
    @GetMapping("/frame")
    public String frame() {
    	return "aframe";
    }
    
    @GetMapping("/addCountry")
    public String addCountry() {
    	return "addCountry";
    }
}
