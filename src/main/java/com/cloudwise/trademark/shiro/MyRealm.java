package com.cloudwise.trademark.shiro;

import com.cloudwise.trademark.entity.User;
import com.cloudwise.trademark.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author Enzo
 * @version 1.0
 * @data Created at 2020/12/19 21:21
 * @description shiro realm
 * @modifiedBy
 */
public class MyRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;

    /**
     * shiro框架授权认证
     *
     * @param principalCollection
     * @return AuthorizationInfo
     * @createBy Enzo
     * @createTime 2020/12/19 21:30
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    /**
     * shiro框架登录验证
     *
     * @param authenticationToken 含有用户名和密码的token
     * @return AuthenticationInfo 实体类
     * @createBy Enzo
     * @createTime 2020/12/19 21:34
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        //通过token获取对应数据库用户
        User user = userService.queryByUsername(token.getUsername());
        if (user == null) {
            return null;
        }
        ShiroUtil shiroUtil = new ShiroUtil();
        //获取数据库用户盐值
        String salt = user.getSalt();
        String password = String.valueOf(token.getPassword());
        //将当前用户的密码与数据库用户盐值拼接加盐加密生成相应密文
        String cipher = shiroUtil.encryptionBySalt(salt, password);
        //将当前密文与数据库密文作比较，相同登录成功，不同密码错误
        if (!user.getPassword().equals(cipher)) {
            return null;
        }
        ByteSource byteSource = ByteSource.Util.bytes(salt);
        return new SimpleAuthenticationInfo(user, cipher, byteSource, getName());
    }

}
