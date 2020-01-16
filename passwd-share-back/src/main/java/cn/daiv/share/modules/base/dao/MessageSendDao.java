package cn.daiv.share.modules.base.dao;

import cn.daiv.share.modules.base.entity.MessageSend;
import cn.daiv.share.base.XbootBaseDao;

/**
 * 消息发送数据处理层
 * @author Exrick
 */
public interface MessageSendDao extends XbootBaseDao<MessageSend,String> {

    /**
     * 通过消息id删除
     * @param messageId
     */
    void deleteByMessageId(String messageId);
}
