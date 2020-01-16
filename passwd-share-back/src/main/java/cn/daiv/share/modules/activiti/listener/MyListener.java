package cn.daiv.share.modules.activiti.listener;

import cn.daiv.share.common.utils.SpringContextUtil;
import cn.daiv.share.modules.activiti.entity.business.Leave;
import cn.daiv.share.modules.activiti.service.business.LeaveService;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.ExecutionListener;

/**
 * @author Daiv
 */
@Slf4j
public class MyListener implements ExecutionListener {

    @Override
    public void notify(DelegateExecution delegateExecution) throws Exception {

        // 获取关联业务表ID变量(启动流程代码里已存入tableId，此处直接获取即可)
        String tableId = (String) delegateExecution.getVariable("tableId");
        log.info(tableId);
        LeaveService leaveService = SpringContextUtil.getBean(LeaveService.class);
        Leave leave = leaveService.get(tableId);
    }
}
