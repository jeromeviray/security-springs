package com.example.jsp.service;

import com.example.jsp.model.Product;
import com.example.jsp.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    private static String rootDir = System.getProperty("user.dir")+"/src/main/webapp/static/images/product";

    public void createProduct(Product product, MultipartFile[] files) throws IOException {

        for (MultipartFile file : files){

            Path path = Paths.get(rootDir, file.getOriginalFilename());

            try{

                Files.write(path, file.getBytes());

            }catch (IOException e) {

                e.printStackTrace();

                throw new MultipartException("You got an Error men");

            }

            product.setImage(file.getBytes());

        }
        productRepository.save(product);

    }
}
