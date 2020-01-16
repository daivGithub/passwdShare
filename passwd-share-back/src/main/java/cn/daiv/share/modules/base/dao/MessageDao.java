package cn.daiv.share.modules.base.dao;

import cn.daiv.share.modules.base.entity.Message;
import cn.daiv.share.base.XbootBaseDao;

import java.util.List;

/**
 * 消息内容数据处理层
 * @author Exrick
 */
public interface MessageDao extends XbootBaseDao<Message,String> {

    /**
     * 通过创建发送标识获取
     * @param createSend
     * @return
     */
    List<Message> findByCreateSend(Boolean createSend);
}
