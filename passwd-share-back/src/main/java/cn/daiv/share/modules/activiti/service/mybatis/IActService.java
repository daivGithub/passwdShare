package cn.daiv.share.modules.activiti.service.mybatis;

/**
 * @author Daiv
 */
public interface IActService {

    /**
     * 删除关联业务表
     * @param table
     * @param id
     * @return
     */
    Integer deleteBusiness(String table, String id);
}
