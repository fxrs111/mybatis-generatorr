package com.github.mybatis.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @Author jtl
 * @Email 1321008859@qq.com
 * @Date 2018/11/22 0022 18:51
 * 返回结果工具类
 */
@Data
public class Result<T> implements Serializable {
    /**
     * 错误码
     */
    private Integer code;
    /**
     * 提示信息
     */
    private String message;
    /**
     * 具体内容
     */
    private T data;

    public Result() {
    }

    public Result(Integer code, String msg, T data) {
        this.code = code;
        this.message = msg;
        this.data = data;
    }
}