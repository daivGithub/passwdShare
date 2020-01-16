package cn.daiv.share.modules.base.dao;

import cn.daiv.share.modules.base.entity.Role;
import cn.daiv.share.base.XbootBaseDao;

import java.util.List;

/**
 * 角色数据处理层
 * @author Daiv
 */
public interface RoleDao extends XbootBaseDao<Role,String> {

    /**
     * 获取默认角色
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);
}
