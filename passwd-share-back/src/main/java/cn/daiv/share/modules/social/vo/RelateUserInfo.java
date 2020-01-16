package cn.daiv.share.modules.social.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Daiv
 */
@Data
public class RelateUserInfo implements Serializable{

    private String githubId;

    private Boolean github = false;

    private String githubUsername;

    private String qqId;

    private Boolean qq = false;

    private String qqUsername;

    private String weiboId;

    private Boolean weibo = false;

    private String weiboUsername;

    private String wechatId;

    private Boolean wechat = false;

    private String wechatUsername;
}
