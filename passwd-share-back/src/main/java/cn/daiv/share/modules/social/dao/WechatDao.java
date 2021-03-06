package cn.daiv.share.modules.social.dao;

import cn.daiv.share.base.XbootBaseDao;
import cn.daiv.share.modules.social.entity.Wechat;

/**
 * Github登录数据处理层
 * @author Exrick
 */
public interface WechatDao extends XbootBaseDao<Wechat,String> {

    /**
     * 通过openId获取
     * @param openId
     * @return
     */
    Wechat findByOpenId(String openId);

    /**
     * 通过username获取
     * @param username
     * @return
     */
    Wechat findByRelateUsername(String username);

    /**
     * 通过username删除
     * @param username
     */
    void deleteByUsername(String username);
}
