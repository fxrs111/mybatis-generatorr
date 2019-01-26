/**
 * @filename:${entityName}Service ${createTime}
 * @project ${project}  ${version}
 * Copyright(c) 2018 ${author} Co. Ltd. 
 * All right reserved. 
 */
package ${serviceUrl};

import java.util.List;

import ${entityUrl}.${entityName};
import com.github.mybatis.entity.Query;

/**   
 *  
 * @Description:  ${entityComment}——SERVICE
 * @Author:       ${author}   
 * @CreateDate:   ${createTime}
 * @Version:      ${version}
 *    
 */
public interface ${entityName}Service {
	
	/**
	 * @explain 查询${entityComment}对象
	 * @param   id: 对象参数
	 * @return  ${entityName}
	 * @author  ${author}
	 */
	public ${entityName} selectByPrimaryKey(${idType} id);
	
	/**
	 * @explain 删除${entityComment}对象
	 * @param   id: 对象参数
	 * @return  int
	 * @author  ${author}
	 */
	public int deleteByPrimaryKey(${idType} id);
	
	/**
	 * @explain 添加${entityComment}对象
	 * @param   ${objectName}: 对象参数
	 * @return  int
	 * @author  ${author}
	 */
	public int insertSelective(${entityName} ${objectName});
	
	/**
	 * @explain 修改${entityComment}对象
	 * @param   ${objectName}: 对象参数
	 * @return  int
	 * @author  ${author}
	 */
	public int updateByPrimaryKeySelective(${entityName} ${objectName});
	
	/**
	 * @explain 查询${entityComment}集合
	 * @param   page: 对象参数
	 * @return  List<${entityName}>
	 * @author  ${author}
	 */
	public List<${entityName}> query${entityName}List(Query page);

	/**
	 * @explain 查询${entityComment}集合数量
	 * @param   page: 对象参数
	 * @return  List<${entityName}>
	 * @author  ${author}
	 */
	public int query${entityName}ListTotal(Query page);
	
}