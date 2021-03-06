package cn.daiv.share.modules.activiti.dao.mapper;

import org.apache.ibatis.annotations.Param;

/**
 * @author Daiv
 */
public interface ActMapper {

    /**
     * 删除关联业务表
     * @param table
     * @param id
     * @return
     */
    Integer deleteBusiness(@Param("table") String table, @Param("id") String id);
}
