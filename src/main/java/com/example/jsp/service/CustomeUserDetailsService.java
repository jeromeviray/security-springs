package com.example.jsp.service;



import com.example.jsp.model.Role;
import com.example.jsp.model.User;
import com.example.jsp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
public class CustomeUserDetailsService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;


    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if(user == null ){
            throw new UsernameNotFoundException("Error: Account" +username+ "not found");
        }

        List<GrantedAuthority> authority = new ArrayList<>();
//           for(Role role : user.getRole()) {
//               System.out.println(role.getAuthority());
        authority.add(new SimpleGrantedAuthority("USER"));
//
//           }
        System.out.println("username "+user.getUsername()+" password "+user.getPassword()+" role "+authority);

        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), authority);
    }
}
