package com.mofish.service.Impl;

import com.mofish.bean.UserInfo;
import com.mofish.dao.ILoginDao;
import com.mofish.dao.IUserCollectDao;
import com.mofish.dao.IUserInfoDao;
import com.mofish.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserInfoServiceImp implements UserInfoService {
    @Autowired
    private IUserInfoDao userInfoDao;

    @Autowired
    private ILoginDao loginDao;

    @Autowired
    private IUserCollectDao userCollectDao;

    //用户登录
    @Override
    public boolean doLogin(UserInfo userInfo) {
        userInfo=loginDao.findUserByTelAndPwd(userInfo);
        if(userInfo!=null)
            return true;
        else return false;

    }

    //用户注册
    @Override
    public int doRegister(UserInfo userInfo) {

        try{
            userInfo.setUrgtime(new Date(System.currentTimeMillis()));
            userInfoDao.addUser(userInfo);
            return 1;
        }catch (Exception e){
            return 0;
        }

        /*UserInfo userInfo1 = userInfoDao.findUserByUid(userInfo.getUid());
        //检查是否存在用户数据,若存在，错误类型记为0
        if (userInfo1 == null) {   //检查两次输入密码是否一致，若不一致错误类型为1
            if (userInfo.getUpwd().equals(cpassword)) {

               userInfo.setUrgtime(new Date(System.currentTimeMillis()));

                userInfoDao.addUser(userInfo);
                return 2;
            } else return 1;
        } else return 0;*/
    }

    //用户密码修改
    @Override
    public boolean doUpdataPwd(UserInfo userInfo, String cpassword) {
        if (userInfo.getUpwd().equals(cpassword)) {
            userInfoDao.updateUser(userInfo);
            return true;
        }
        else  return false;
    }

    //用户信息修改
    @Override
    public boolean doUpdataUser(UserInfo userInfo) {
        userInfoDao.updateUser(userInfo);
        return true;
    }

    @Override
    public UserInfo dofindOneUser(UserInfo userInfo) {
        return userInfoDao.findUserByTel(userInfo.getUtel());
    }
}
