package biz;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.dao.ly.DBHelper;

import bean.Columns;

public class ColumnsBiz {
	public List<Columns> findAll(HttpServletRequest request, HttpServletResponse response) {
		String sql = "select * from columns";
		return DBHelper.select(sql, Columns.class);
	}

	public void add(Columns column) throws BizException {
		
		if(column.getColumnName().trim() == null || column.getColumnName().trim().isEmpty()){
			throw new BizException("栏目名不能为空!");
		}
		String sql = "insert into columns(columnName,aliasName,parentid,keywords,description) values(?,?,?,?,?)";
		DBHelper.update(sql, column.getColumnName(),column.getAliasName(),column.getParentid(),
				column.getKeyWords(),column.getDescription());
	}

	

}
