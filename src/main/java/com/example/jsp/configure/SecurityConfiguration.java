package com.example.jsp.configure;

import com.example.jsp.service.CustomeUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    @Autowired
    private CustomeUserDetailsService customeUserDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(customeUserDetailsService);
//        auth.inMemoryAuthentication()
//                .withUser("jerome1")
//                .password("jerome12")
//                .roles("admin")
//                .and()
//                .withUser("jeromeviray")
//                .password("password1")
//                .roles("user");
    }
    @Bean
    public PasswordEncoder getPasswordEncoder(){
        return NoOpPasswordEncoder.getInstance();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                 .antMatchers("/login").permitAll()
                .antMatchers("/register/**").hasRole("user")
                .antMatchers("/home").permitAll()
                .and()
                .formLogin()
                 .loginPage("/login")
                 .successForwardUrl("/home")
                 .permitAll();
    }
}
