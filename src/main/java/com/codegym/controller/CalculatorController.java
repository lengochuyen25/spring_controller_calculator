package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {
    @GetMapping("/")
    public String home() {
        return "index";
    }

    @PostMapping("/calculator")
    public String result(@RequestParam String first, @RequestParam String second, @RequestParam String operator, Model model) {
        float result = 0;
        float number1 = Float.parseFloat(first);
        float number2 = Float.parseFloat(second);

        switch (operator) {
            case "+":
                result = number1 + number2;
                break;
            case "-":
                result = number1 - number2;
                break;
            case "*":
                result = number1 * number2;
                break;
            case "/":
                result = number1 / number2;
                break;
        }
        model.addAttribute("first", first);
        model.addAttribute("second", second);
        model.addAttribute("operator", operator);
        model.addAttribute("result", result);
        return "result";
    }
}
