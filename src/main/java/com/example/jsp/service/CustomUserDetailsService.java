package com.example.jsp.service;



import com.example.jsp.model.Role;
import com.example.jsp.model.User;
import com.example.jsp.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);

        if(user == null ){
            throw new UsernameNotFoundException("Account not Found");
        }
        List<GrantedAuthority> authority = new ArrayList<>();
          for(Role role : user.getRole()) {
               authority.add(new SimpleGrantedAuthority("ROLE_"+role.getAuthority()));
           }

        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), authority);
    }
}
