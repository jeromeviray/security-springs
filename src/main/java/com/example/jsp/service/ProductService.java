package com.example.jsp.service;

import com.example.jsp.model.Product;
import com.example.jsp.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    Logger logger = LoggerFactory.getLogger(ProductService.class);

    private static final String rootDir = System.getProperty("user.dir")+"/src/main/webapp/static/images/items";

    public void createProduct(Product product, MultipartFile[] files) {

        for (MultipartFile file : files){

            Path path = Paths.get(rootDir, file.getOriginalFilename());
            String filename = file.getOriginalFilename();

            try{
                Files.write(path, file.getBytes());
            }catch (IOException e) {
                e.printStackTrace();
                throw new MultipartException("You got an Error men");
            }
            product.setImage(filename);
        }
        productRepository.save(product);
    }
    public List<Product> getAllItems(){
        List<Product> items = new ArrayList<>();
        items.addAll(productRepository.findAll());
        return items;
    }
    public void deleteItem(int id){
         Product product = (Product) productRepository.findById(id);
         String getName = product.getName();
         File file = new File("/home/jerome/Documents/spring-security/security/src/main/webapp/static/images/items/"+getName);
             try{
                 if(file.delete()){
                     logger.info("Image file has been deleted " + getName);
                 }else{
                     logger.info("Image has been already deleted " + getName);
                 }
             } catch (Exception e){
                 e.printStackTrace();    //prints exception if any
             }
             productRepository.delete(product);
     }
}
