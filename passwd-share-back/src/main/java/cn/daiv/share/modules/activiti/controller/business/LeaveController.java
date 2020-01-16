package cn.daiv.share.modules.activiti.controller.business;

import cn.daiv.share.base.XbootBaseController;
import cn.daiv.share.common.utils.ResultUtil;
import cn.daiv.share.common.utils.SecurityUtil;
import cn.daiv.share.common.vo.Result;
import cn.daiv.share.modules.activiti.entity.ActBusiness;
import cn.daiv.share.modules.activiti.entity.business.Leave;
import cn.daiv.share.modules.activiti.service.ActBusinessService;
import cn.daiv.share.modules.activiti.service.business.LeaveService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

/**
 * @author Daiv
 */
@Slf4j
@RestController
@Api(description = "请假申请接口")
@Transactional
@RequestMapping(value = "/share/leave")
public class LeaveController extends XbootBaseController<Leave, String> {

    @Autowired
    private LeaveService leaveService;

    @Autowired
    private ActBusinessService actBusinessService;

    @Autowired
    private SecurityUtil securityUtil;

    @Override
    public LeaveService getService() {
        return leaveService;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ApiOperation(value = "添加申请草稿状态")
    public Result<Object> add(@ModelAttribute Leave leave,
                              @RequestParam String procDefId){

        Leave le = leaveService.save(leave);
        // 保存至我的申请业务
        String userId = securityUtil.getCurrUser().getId();
        ActBusiness actBusiness = new ActBusiness();
        actBusiness.setUserId(userId);
        actBusiness.setTableId(le.getId());
        actBusiness.setProcDefId(procDefId);
        actBusiness.setTitle(leave.getTitle());
        actBusinessService.save(actBusiness);
        return ResultUtil.data(null);
    }
}
