package cn.daiv.share.modules.base.utils;

import cn.daiv.share.modules.base.entity.Permission;
import cn.daiv.share.modules.base.vo.MenuVo;
import cn.hutool.core.bean.BeanUtil;

/**
 * @author Exrick
 */
public class VoUtil {

    public static MenuVo permissionToMenuVo(Permission p){

        MenuVo menuVo = new MenuVo();
        BeanUtil.copyProperties(p, menuVo);
        return menuVo;
    }
}
