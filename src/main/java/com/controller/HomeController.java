package com.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ToDoDao;
import com.entities.ToDo;

@Controller
public class HomeController {
	
	@Autowired
	ToDoDao todoDao;
	@RequestMapping("/home")
	public String home(Model model)
	{
		String str  ="home";
		List<ToDo> list = this.todoDao.getAll();
		System.out.println("list  "+ list);
		model.addAttribute("page", str);
		model.addAttribute("list", list);
		return "home";
	}
	
	@RequestMapping("/add")
	public String add(Model model)
	{
		String str  ="add";
		ToDo todo = new ToDo();
		model.addAttribute("page", str);
		model.addAttribute("todo", todo);
		
		return "home";
	}
	@RequestMapping(value="/saveToDo", method=RequestMethod.POST)
	public String saveToDo(@ModelAttribute("todo") ToDo t, Model model)
	{
		t.setId(5);
		t.setTodoDate(new Date().toString());
		int i = this.todoDao.save(t);
		System.out.println("I "+ i);
		String str  ="saved";
		model.addAttribute("page", str);
		System.out.println(t);
		return "home";
	}
}
