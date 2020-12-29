package com.cloudwise.trademark.shiro;

import com.cloudwise.trademark.util.MyConstants;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2020/12/19 21:19
 * @description shiro config
 * @modifiedBy
 */
@Configuration
public class ShiroConfig {
    /**
     * 实例化密码比较器
     *
     * @return CredentialsMatcher
     * @createBy Enzo
     * @createTime 2020/12/19 21:56
     */
    @Bean
    public CredentialsMatcher credentialsMatcher() {
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        //设置md5加密
        hashedCredentialsMatcher.setHashAlgorithmName(MyConstants.ALGORITHM_NAME);
        //加密1000次
        hashedCredentialsMatcher.setHashIterations(MyConstants.HASH_ITERATIONS);
        return hashedCredentialsMatcher;
    }

    /**
     * 使用重写的myRealm验证密码
     *
     * @return MyRealm
     * @createBy Enzo
     * @createTime 2020/12/29 23:28
     */
    @Bean
    public MyRealm myRealm() {
        MyRealm myRealm = new MyRealm();
        myRealm.setCredentialsMatcher(credentialsMatcher());
        return myRealm;
    }

    @Bean
    public DefaultWebSecurityManager defaultWebSecurityManager() {
        DefaultWebSecurityManager defaultWebSecurityManager = new DefaultWebSecurityManager();
        defaultWebSecurityManager.setRealm(myRealm());
        return defaultWebSecurityManager;
    }

    /**
     * shiro的安全过滤器，过滤所有的请求，对请求分类拦截
     *
     * @return ShiroFilterFactoryBean
     * @createBy Enzo
     * @createTime 2020/12/19 22:17
     */
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(defaultWebSecurityManager());
        //anon:无需认证 authc:必须认证才能到达
        Map<String, String> map = new LinkedHashMap<>();
        //放行login
        map.put("/toLogin", "anon");
        map.put("/login", "anon");
        map.put("/model/**", "anon");
        map.put("/layui/**", "anon");
        //过滤所有的请求
        map.put("/**", "authc");
        //登录成功去哪
        shiroFilterFactoryBean.setSuccessUrl("/toHome");
        //所有的未认证的请求都去登录页面
        shiroFilterFactoryBean.setLoginUrl("/toLogin");
        //授权页面
        shiroFilterFactoryBean.setFilterChainDefinitionMap(map);
        return shiroFilterFactoryBean;
    }
}
