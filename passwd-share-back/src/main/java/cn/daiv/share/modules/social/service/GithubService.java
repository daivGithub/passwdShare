package cn.daiv.share.modules.social.service;

import cn.daiv.share.base.XbootBaseService;
import cn.daiv.share.common.vo.SearchVo;
import cn.daiv.share.modules.social.entity.Github;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Github登录接口
 * @author Exrick
 */
public interface GithubService extends XbootBaseService<Github,String> {

    /**
     * 通过openId获取
     * @param openId
     * @return
     */
    Github findByOpenId(String openId);

    /**
     * 通过username获取
     * @param username
     * @return
     */
    Github findByRelateUsername(String username);

    /**
     * 分页多条件获取
     * @param username
     * @param relateUsername
     * @param searchVo
     * @param pageable
     * @return
     */
    Page<Github> findByCondition(String username, String relateUsername, SearchVo searchVo, Pageable pageable);

    /**
     * 通过username删除
     * @param username
     */
    void deleteByUsername(String username);
}
