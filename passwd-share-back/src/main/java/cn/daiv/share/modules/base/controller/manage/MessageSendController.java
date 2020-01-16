package cn.daiv.share.modules.base.controller.manage;

import cn.daiv.share.base.XbootBaseController;
import cn.daiv.share.common.utils.PageUtil;
import cn.daiv.share.common.utils.ResultUtil;
import cn.daiv.share.common.vo.PageVo;
import cn.daiv.share.common.vo.Result;
import cn.daiv.share.modules.base.entity.Message;
import cn.daiv.share.modules.base.entity.MessageSend;
import cn.daiv.share.modules.base.entity.User;
import cn.daiv.share.modules.base.service.MessageSendService;
import cn.daiv.share.modules.base.service.MessageService;
import cn.daiv.share.modules.base.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author Exrick
 */
@Slf4j
@RestController
@Api(description = "消息发送管理接口")
@RequestMapping("/share/messageSend")
@Transactional
public class MessageSendController extends XbootBaseController<MessageSend, String> {

    @Autowired
    private UserService userService;

    @Autowired
    private MessageService messageService;

    @Autowired
    private MessageSendService messageSendService;

    @Override
    public MessageSendService getService() {
        return messageSendService;
    }

    @RequestMapping(value = "/getByCondition", method = RequestMethod.GET)
    @ApiOperation(value = "多条件分页获取")
    public Result<Page<MessageSend>> getByCondition(@ModelAttribute MessageSend ms,
                                                    @ModelAttribute PageVo pv){

        Page<MessageSend> page = messageSendService.findByCondition(ms, PageUtil.initPage(pv));
        // lambda
        page.getContent().forEach(item->{
            User u = userService.get(item.getUserId());
            if(u!=null){
                item.setUsername(u.getUsername());
            }
            Message m = messageService.get(item.getMessageId());
            item.setTitle(m.getTitle());
            item.setContent(m.getContent());
            item.setType(m.getType());
        });
        return new ResultUtil<Page<MessageSend>>().setData(page);
    }
}
