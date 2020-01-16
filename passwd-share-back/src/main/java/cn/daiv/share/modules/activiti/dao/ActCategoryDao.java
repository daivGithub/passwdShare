package cn.daiv.share.modules.activiti.dao;

import cn.daiv.share.modules.activiti.entity.ActCategory;
import cn.daiv.share.base.XbootBaseDao;

import java.util.List;

/**
 * 流程分类数据处理层
 * @author Exrick
 */
public interface ActCategoryDao extends XbootBaseDao<ActCategory,String> {

    /**
     * 通过父id获取
     * @param parentId
     * @return
     */
    List<ActCategory> findByParentIdOrderBySortOrder(String parentId);

    /**
     * 通过名称模糊搜索
     * @param title
     * @return
     */
    List<ActCategory> findByTitleLikeOrderBySortOrder(String title);
}
