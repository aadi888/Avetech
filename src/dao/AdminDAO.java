package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.AdminBean;
import bean.NewsBean;
import util.DBConnection;

public class AdminDAO {

	
	  Connection conn=null;
	  
	  public List<AdminBean> getData()
	  {
		  
		   List<AdminBean> list=new ArrayList<AdminBean>();
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="select * from admin";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {
				AdminBean bean=new AdminBean();
				bean.setAdminid(rs.getString("adminid"));
				bean.setEventdate(rs.getString("eventdate"));
				bean.setEventheadline(rs.getString("eventheadline"));
				bean.setEventdescription(rs.getString("eventdescription"));
				
				
				list.add(bean);
				
			}
			return list;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return list;
		  
	  }
	  
	  
	  
	  public boolean updateData(AdminBean bean)
	  {
		  
       boolean flag=false;
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="update admin set eventdate=?,eventheadline=?,eventdescription=? where adminid=?";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			pstmt.setString(1,bean.getEventdate());
			pstmt.setString(2,bean.getEventheadline());
			pstmt.setString(3,bean.getEventdescription());
			pstmt.setString(4,bean.getAdminid());
			
			int a=pstmt.executeUpdate();
			if(a!=0)
			{
				flag=true;
			}
			
			return flag;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return flag;
		  
	  }
	  
	  
	  
	  
	  public static List<AdminBean> getAllEventData() throws SQLException {
	    	
	    	
	    	List<AdminBean> list=new ArrayList<AdminBean>();
	    	Connection conn=DBConnection.getconnection();
	    	if(conn!=null)
	    	{
	    	 
	    		java.sql.Statement stmt = null;
				java.sql.ResultSet rs = null;

				try {
					stmt = conn.createStatement();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				String listSQL = "select * from admin";

				try {
					rs = stmt.executeQuery(listSQL);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				AdminBean bean = null;
				while (rs.next()) {
					bean = new AdminBean();
					bean.setEventdate(rs.getString("eventdate"));
					bean.setEventheadline(rs.getString("eventheadline"));
					bean.setEventdescription(rs.getString("eventdescription"));

					list.add(bean);
					
	    	
	    	}
	    	
	    	return list;
	    }
	    	return list;
}
	  
	  
	  public List<NewsBean> getNews()
	  {
		  
		   List<NewsBean> list=new ArrayList<NewsBean>();
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="select * from news";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {
				NewsBean bean=new NewsBean();
			    bean.setNewsid(rs.getString("newsid"));
				bean.setNews(rs.getString("news"));
				
				list.add(bean);
				
			}
			return list;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return list;
		  
	  }
	  
	  public boolean updateNews(String newsid,String news)
	  {
		  
       boolean flag=false;
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="update news set news=? where newsid=?";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			pstmt.setString(1,news);
			pstmt.setString(2,newsid);
			
			int a=pstmt.executeUpdate();
			if(a!=0)
			{
				flag=true;
			}
			
			return flag;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return flag;
		  
	  }
	  
	  
	  
	  public boolean updateNew(String newsid,String news)
	  {
		  
       boolean flag=false;
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="update new set new=? where newid=?";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			pstmt.setString(1,news);
			pstmt.setString(2,newsid);
			
			int a=pstmt.executeUpdate();
			if(a!=0)
			{
				flag=true;
			}
			
			return flag;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return flag;
		  
	  }
	  
	  public List<NewsBean> getNew()
	  {
		  
		   List<NewsBean> list=new ArrayList<NewsBean>();
		  conn=DBConnection.getconnection();
		  if(conn!=null)
		  {
		  String query="select * from new";
		  try {
			PreparedStatement pstmt=conn.prepareStatement(query);
			
			ResultSet rs=pstmt.executeQuery();
			while (rs.next()) {
				NewsBean bean=new NewsBean();
			    bean.setNewsid(rs.getString("newid"));
				bean.setNews(rs.getString("new"));
				
				list.add(bean);
				
			}
			return list;
		  		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  return list;
		  
	  }
}
