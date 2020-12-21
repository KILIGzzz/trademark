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
     * @param authenticationToken
     * @return AuthenticationInfo
     * @createBy Enzo
     * @createTime 2020/12/19 21:34
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        //校验用户名和密码
        String username = usernamePasswordToken.getUsername();
        User user = userService.queryByUsername(username);
        if (null == user) {
            return null;
        }
        String password = user.getPassword();
        String salt = user.getSalt();
        ByteSource byteSource = ByteSource.Util.bytes(salt);
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(user, password, byteSource, getName());
        return simpleAuthenticationInfo;
    }
}
