package com.aaa.biz;

import com.aaa.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: 陈建
 * @Date: 2020/5/29 0029 16:36
 * @Version 1.0
 */
public interface  RoleBiz {
   int deleteByPrimaryKey(Integer roleId);

   int insertSelective(Role record);

   Role selectByPrimaryKey(Integer roleId);

   int updateByPrimaryKeySelective(Role record);

   int delRoleByID( @Param("ids") List<String> ids);

   List<Role> selectAllRole();
}
