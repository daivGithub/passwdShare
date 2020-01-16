package cn.daiv.share.modules.base.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @author Daiv
 */
@Data
@AllArgsConstructor
public class RedisVo {

    private String key;

    private String value;
}
