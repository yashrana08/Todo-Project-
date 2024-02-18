package com.example.todo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class TodoController {
    @Autowired
    private TodoRepo todorepo;
    
    
    @GetMapping
    public String displayIndex() 
    {
    	return "index";
    }
    //@Getmapping @RequestMapping()
    
    @GetMapping("/welcome")
    public String displayWelcome() 
    {
    	return "welcome";
    }
    
    
    @GetMapping("/add")
    public String displayAddForm() 
    {
    	return "addtodo";
    }
    
    
    @GetMapping("/todos")
    public String getAllTodos(Model model) {
        
        // Retrieve all todos from the repository
        List<Todo> todos = todorepo.findAll();
        
        // Add the list of todos to the model
        model.addAttribute("todos", todos);
        
       return "welcome";
    }
    
    
    @GetMapping("/delete")
	public ModelAndView deleteTodo(@RequestParam Integer id, RedirectAttributes redirectAttributes) {

		todorepo.deleteById(id);
		ModelAndView mv = new ModelAndView();
		//mv.addObject("message", "Todo deleted successfully");
		redirectAttributes.addFlashAttribute("deleteTodoMessage", true);
		mv.setViewName("redirect:/todos");
		return mv;
	}
    
    
    
    
    @PostMapping("/add")
    public ModelAndView addtodo(Todo todo) {
    	
    	ModelAndView mv = new ModelAndView();
    	
    	Todo savedTodo = todorepo.save(todo);
    	mv.addObject("todos",savedTodo);
    	mv.setViewName("redirect:/todos");
    	return mv;
    }
    
    @PostMapping("/login")
	public String login(String uname, String pwd)
	{
    	
		String res;
		if(uname.equals(pwd))
		{
			res="welcome";
		}
		else
		{
			res="login";
		}
		return res;
	
	}
   
    
   
    
    
}
