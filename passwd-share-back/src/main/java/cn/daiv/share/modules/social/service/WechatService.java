package cn.daiv.share.modules.social.service;

import cn.daiv.share.base.XbootBaseService;
import cn.daiv.share.common.vo.SearchVo;
import cn.daiv.share.modules.social.entity.Wechat;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Github登录接口
 * @author Exrick
 */
public interface WechatService extends XbootBaseService<Wechat,String> {

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
     * 分页多条件获取
     * @param username
     * @param relateUsername
     * @param searchVo
     * @param pageable
     * @return
     */
    Page<Wechat> findByCondition(String username, String relateUsername, SearchVo searchVo, Pageable pageable);

    /**
     * 通过username删除
     * @param username
     */
    void deleteByUsername(String username);
}
