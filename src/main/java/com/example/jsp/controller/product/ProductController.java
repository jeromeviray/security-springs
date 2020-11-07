package com.example.jsp.controller.product;

import com.example.jsp.model.Product;
import com.example.jsp.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
public class ProductController {
    private ProductService productService;

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView getProductPage(Model model){
        model.addAttribute("product", new Product());
        ModelAndView view = new ModelAndView("product/product");
        return view;
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public ModelAndView createProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile[] file) throws IOException {
        productService.createProduct(product, file);
        ModelAndView model = new ModelAndView("product/product");
        return model;
    }
}
