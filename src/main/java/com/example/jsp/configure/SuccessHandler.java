package com.example.jsp.configure;

import com.example.jsp.BeanUtils;
import com.example.jsp.model.User;
import com.example.jsp.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collection;

public class SuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    UserRepository userRepository = BeanUtils.getBean( UserRepository.class );
    Logger logger = LoggerFactory.getLogger(SuccessHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        Collection<? extends GrantedAuthority> collection = authentication.getAuthorities();
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername( name );
        HttpSession session = httpServletRequest.getSession();
        session.setAttribute("userId", user.getId() );
        logger.info( String.valueOf( session.getAttribute("userId") ) );

        for(GrantedAuthority authority : collection){
            if( authority.getAuthority().equals( "ROLE_ADMIN" ) || authority.getAuthority().equals( "ROLE_USER" ) ){
                httpServletResponse.sendRedirect("/home" );
            }
        }
    }
}
