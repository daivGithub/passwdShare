package cn.daiv.share.modules.activiti.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Daiv
 */
@Data
public class EmailMessage implements Serializable {

    private String username;

    private String content;

    private String fullUrl;
}
