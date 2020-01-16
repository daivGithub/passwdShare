package cn.daiv.share.common.exception;

import lombok.Data;

/**
 * @author Daiv
 */
@Data
public class XbootException extends RuntimeException {

    private String msg;

    public XbootException(String msg){
        super(msg);
        this.msg = msg;
    }
}
