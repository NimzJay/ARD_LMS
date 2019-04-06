package model;

public class Sesh 
{
	public static String user;
	public static int bId;
	public static String gId;
	public static int pkgId;
	public static String uid;
	public static String btitle;
	
	public Sesh() {}
	public static void setUsername(String username)
	{		
		user = username;
	}
	public static String getUsername() 
	{
		return user;
	}
	public static void setBookingId(int bid)
	{		
		bId = bid;
	}
	public static int getBookingId() 
	{
		return bId;
	}
	public static void setPackageId(int pid)
	{
		pkgId = pid;
	}
	public static int getPackageId()
	{
		return pkgId;
	}
	
	public static void setbTitle(String bt)
	{		
		btitle = bt;
	}
	public static String getbTitle() 
	{
		return btitle;
	}
}
