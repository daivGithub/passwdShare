package cn.exrick.xboot.modules.social.service;

import cn.exrick.xboot.base.XbootBaseService;
import cn.exrick.xboot.common.vo.SearchVo;
import cn.exrick.xboot.modules.social.entity.Wechat;
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