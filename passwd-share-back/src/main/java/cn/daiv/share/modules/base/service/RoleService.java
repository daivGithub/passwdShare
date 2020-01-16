package cn.daiv.share.modules.base.service;


import cn.daiv.share.base.XbootBaseService;
import cn.daiv.share.modules.base.entity.Role;

import java.util.List;

/**
 * 角色接口
 * @author Daiv
 */
public interface RoleService extends XbootBaseService<Role,String> {

    /**
     * 获取默认角色
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);
}
