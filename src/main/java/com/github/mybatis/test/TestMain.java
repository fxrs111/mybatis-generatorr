package com.github.mybatis.test;

import java.sql.SQLException;
import java.util.Date;

import com.github.mybatis.entity.BasisInfo;
import com.github.mybatis.util.EntityInfoUtil;
import com.github.mybatis.util.Generator;
import com.github.mybatis.util.MySqlToJavaUtil;

public class TestMain {

	// TODO 要求必须有表注释，要求必须有主键为id,切为bigint，所有字段必须有注释（便于生成java注释）。
	//基础信息
	public static final String PROJECT="timerchan-show";
	public static final String AUTHOR="timerchan";
	public static final String VERSION="V1.0";
	//数据库连接信息
	public static final String URL="jdbc:mysql://127.0.0.1:3306/demo?useUnicode=true&characterEncoding=utf-8&autoReconnect=true&failOverReadOnly=false&useSSL=true";
	public static final String NAME="root";
	public static final String PASSWORD="123456";
	public static final String DATABASE="demo";
	//类信息
	public static final String TABLE="order";
	public static final String CLASSCOMMENT="订单管理";
	public static final String TIME="2019年1月9日";
	public static final String AGILE=new Date().getTime()+"";
	//路径信息
	public static final String ENTITY_URL="com.timerchan.show.entity";
	public static final String DAO_URL="com.timerchan.show.dao";
	public static final String XML_URL=TABLE;
	public static final String SERVICE_URL="com.timerchan.show.service";
	public static final String SERVICE_IMPL_URL="com.timerchan.show.service.impl";
	public static final String CONTROLLER_URL="com.timerchan.show.controller";
	
	
	public static void main(String[] args) {
		BasisInfo bi=new BasisInfo(PROJECT, AUTHOR, VERSION, URL, NAME, PASSWORD, DATABASE, TIME, AGILE, ENTITY_URL, DAO_URL, XML_URL, SERVICE_URL, SERVICE_IMPL_URL, CONTROLLER_URL);
		bi.setTable(TABLE);
		bi.setEntityName(MySqlToJavaUtil.getClassName(TABLE));
		bi.setObjectName(MySqlToJavaUtil.changeToJavaFiled(TABLE));
		bi.setEntityComment(CLASSCOMMENT);
		try {
			String url = "E:\\logs\\timerchan-show";
			bi=EntityInfoUtil.getInfo(bi);
			String aa1=Generator.createEntity(url + "\\src\\main\\java\\", bi).toString();
			String aa2=Generator.createDao(url + "\\src\\main\\java\\", bi).toString();
			String aa3=Generator.createMapper(url + "\\src\\main\\resources\\mapper\\", bi).toString();
			String aa4=Generator.createService(url + "\\src\\main\\java\\", bi).toString();
			String aa5=Generator.createServiceImpl(url + "\\src\\main\\java\\", bi).toString();
			String aa6=Generator.createController(url + "\\src\\main\\java\\", bi).toString();
			
			System.out.println(aa1);
			System.out.println(aa2);
			System.out.println(aa3);
			System.out.println(aa4);
			System.out.println(aa5);
			System.out.println(aa6);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
