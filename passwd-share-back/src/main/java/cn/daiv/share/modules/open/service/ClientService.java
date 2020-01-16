package cn.daiv.share.modules.open.service;

import cn.daiv.share.modules.open.entity.Client;
import cn.daiv.share.base.XbootBaseService;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import cn.daiv.share.common.vo.SearchVo;

/**
 * 客户端接口
 * @author Exrick
 */
public interface ClientService extends XbootBaseService<Client,String> {

    /**
    * 多条件分页获取
    * @param client
    * @param searchVo
    * @param pageable
    * @return
    */
    Page<Client> findByCondition(Client client, SearchVo searchVo, Pageable pageable);

}
