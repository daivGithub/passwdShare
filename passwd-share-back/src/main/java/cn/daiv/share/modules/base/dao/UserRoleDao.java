package cn.daiv.share.modules.base.dao;

import cn.daiv.share.modules.base.entity.UserRole;
import cn.daiv.share.base.XbootBaseDao;

import java.util.List;

/**
 * 用户角色数据处理层
 * @author Daiv
 */
public interface UserRoleDao extends XbootBaseDao<UserRole,String> {

    /**
     * 通过roleId查找
     * @param roleId
     * @return
     */
    List<UserRole> findByRoleId(String roleId);

    /**
     * 删除用户角色
     * @param userId
     */
    void deleteByUserId(String userId);
}
