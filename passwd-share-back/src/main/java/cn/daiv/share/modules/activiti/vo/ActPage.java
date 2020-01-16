package cn.daiv.share.modules.activiti.vo;

import lombok.Data;

import java.util.List;

/**
 * @author Daiv
 */
@Data
public class ActPage<T> {

    List<T> content;

    Long totalElements;
}
