package com.github.mybatis.entity;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 查询参数
 *
 * @author czx
 * @email object_czx@163.com
 * @date 2017-03-14 23:15
 */
public class Query extends LinkedHashMap<String, Object> {
	private static final long serialVersionUID = 1L;
	//当前页码
	private int pageNum;
	//每页条数
	private int pageSize;
	//总条数
	private int total;

	private int offset;

	public Query(Map<String, Object> params) {
		this.putAll(params);

		//分页参数
		if (!StrUtils.isEmpty(params.get("page"))) {
			this.pageNum = Integer.parseInt(params.get("page").toString());
		}
		if (!StrUtils.isEmpty(params.get("limit"))) {
			this.pageSize = Integer.parseInt(params.get("limit").toString());
		}
		this.offset = (pageNum - 1) * pageSize;
	}


	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}
}
