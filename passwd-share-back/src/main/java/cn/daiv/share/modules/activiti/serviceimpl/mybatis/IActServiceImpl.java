package cn.daiv.share.modules.activiti.serviceimpl.mybatis;

import cn.daiv.share.common.exception.XbootException;
import cn.daiv.share.modules.activiti.dao.mapper.ActMapper;
import cn.daiv.share.modules.activiti.service.mybatis.IActService;
import cn.hutool.core.util.StrUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Daiv
 */
@Service
public class IActServiceImpl implements IActService {

    @Autowired
    private ActMapper actMapper;

    @Override
    public Integer deleteBusiness(String table, String id) {

        if(StrUtil.isBlank(table)||StrUtil.isBlank(id)){
            throw new XbootException("关联业务表名或id为空");
        }
        return actMapper.deleteBusiness(table, id);
    }
}