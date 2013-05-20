using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
/// <summary>
/// Summary description for Dal
/// </summary>
public class Dal
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
    public Dal()
    {
        //
        // TODO: Add constructor logic here
        //
    }



    public DataSet gridbinddal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Projects where ID in(select ProjectId from dbo.UserProjectMapping where UserId=" + b._sessionid + ")", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
       
    }

    public DataSet bindbalinkinfodal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct [Project Name]  from Projects where ID in(select ProjectId from dbo.UserProjectMapping where UserId=" + b._sessionid + ")", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindblockdal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct b.Block,b.ID from Block b join dbo.Projects p on p.ID=b.Project where p.[Project Name]='" + b._projectid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindplotkdal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.PlotNo from dbo.Unit a join dbo.Block b on b.ID=a.Block join Projects p on p.ID=b.Project where p.[Project Name]='"+b._PPPname+"' and b.Block='" + b._blockid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindmilstonedal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct [Task details] from [Unit-Target-Linktable] a join dbo.Unit b on a.Unit=b.ID where b.PlotNo='" + b._milestonell + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindgriddal(Bal b)
    {

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.[Project Name],b.Block,c.PlotNo,d.ID,d.[Task details],d.[Actual-Date],d.[update date],d.[Target-Date] from Projects a join Block b on a.ID=b.Project join Unit c on b.ID=c.Block join [Unit-Target-Linktable] d on c.ID=d.UNIT where a.[Project Name]='" + b._p1 + "' and b.Block='" + b._P2 + "' and c.PlotNo='" + b._p3 + "' and d.[Task details]='" + b._p4 + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

  

    public int insertmilestonedal(Bal b)
    {
        try
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Actual-Date]='" + b._ActualDate + "', [update date]='" + b._Uargetdate + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + b._projectName + "' and [Task details] like  '" + b._MilestoneName + "' and PlotNo like '" + b._PlotName + "' and e.Block like '" + b._BlockName + "')", con);
           
           int a=cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindmilstonedal1(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Label from [Task Master] t join dbo.Projects p on p.ID=t.ProjectID where p.[Project Name]='" + b._milestone1 + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int insertmilestonedalnull(Bal b)
    {
        try
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Actual-Date]=" + b._actualDatenull + ", [update date]='" + b._Udate + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + b._PName + "' and [Task details] like  '" + b._MileName + "' and PlotNo like '" + b._PlName + "' and e.Block like '" + b._BName + "')", con);
           
            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public int linnkinfodal(Bal b)
    {
        try
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into  [Unit-Target-Linktable](Unit,[Task details],[Actual-Date],[update date]) values(" + b._linkplot + ",'" + b._linkMilestone + "','" + b._linkActualDate + "','" + b._linkUpdatedate + "')", con);

            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindmilestonedal(int projrctid)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct * from [Task Master] where ProjectID=" + projrctid + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int deletemilestone(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from [Task Master] where ID=" + p + "", con);
            int l = cmd.ExecuteNonQuery();
            con.Close();
            return l;
        }
        catch
        {
            throw;
        }
    }

    public int  updatemilestone(int p, string p_2)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update [Task Master] set Label='" + p_2 + "' where ID=" + p + "", con);
            int l = cmd.ExecuteNonQuery();
            con.Close();
            return l;
        }
        catch
        {
            throw;
        }
    }

    public int insertmilestone(string p, int p_2)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [Task Master] values('" + p + "'," + p_2 + ")", con);
            int c = cmd.ExecuteNonQuery();
            con.Close();
            return c;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindmilestongridview2(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Label from  [Task Master] where ID=" + p + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindgridblock(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select b.Block,b.ID,a.[Project Name] from Block b join dbo.Projects a on a.ID=b.Project where Project in(select ProjectId from UserProjectMapping where UserId=" + p + ")", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindgridplot(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select u.PlotNo,u.Floor,u.[Unit No],u.Type,u.Area,b.Block,a.[Project Name] from dbo.Unit u join dbo.Block b on u.Block=b.ID join dbo.Projects a on a.ID=b.Project where  Project in(select ProjectId from UserProjectMapping where UserId=" + p + ")", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindplotunitkdal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.PlotNo from dbo.Unit a join dbo.Block b on b.ID=a.Block where b.Block='" + b._blockid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindblockdaldel(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct b.Block from Block b join dbo.Projects p on p.ID=b.Project where p.[Project Name]='" + b._projectid + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindfloordal(Bal b)
    {
        try
            
        {
            string g="Ground floor";
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct cast(Floor as int) as Floor from dbo.Unit u join Block b on b.ID=u.Block join Projects p on p.ID=b.Project  where p.[Project Name]='" + b._projectN + "'and b.Block='" + b._BlockN + "' and u.PlotNo ='" + b._floor + "' and u.Floor!='" + g + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindunit(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct [Unit No]  from dbo.Unit u join Block b on u.Block=b.ID join Projects p on p.ID=b.Project where u.PlotNo='"+b._NPlotName+"' and p.[Project Name] ='"+b._NprojectName+"' and b.Block = '"+b._NBlockName+"' and u.Floor= '"+b._NfloorName+"'",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindmilestonedal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct [Task details] from [Unit-Target-Linktable] t join dbo.Unit u on u.ID=t.UNIT join Block b on b.ID=u.Block join Projects a on a.ID=b.Project where u.[Unit No]='" + b._newunit + "' and PlotNo='" + b._newplot + "' and a.[Project Name]='" + b._newProject + "' and b.Block='" + b._newblock + "' and u.Floor='" + b._newfloor + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet binddalgridal(string p, string p_2, string p_3, string p_4, string p_5, string p_6)
    {
       try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.[Project Name],b.Block,c.PlotNo,c.Floor,c.[Unit No],d.ID,d.[Task details],d.[Actual-Date],d.[update date],d.[Target-Date],d.Remarks from Projects a join Block b on a.ID=b.Project join Unit c on b.ID=c.Block join [Unit-Target-Linktable] d on c.ID=d.UNIT where a.[Project Name]='" + p + "' and b.Block='" + p_2 + "' and c.PlotNo='" + p_3 + "' and c.Floor='" + p_4 + "' and  c.[Unit No]='" + p_5 + "' and d.[Task details]='" + p_6 + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    
    }

    public int insertnewmilestonedalnull(Bal b)
    {
        try
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Actual-Date]=" + b._aactualDatenull + ", [update date]='" + b._UUpdateDate + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + b._pNName + "' and [Task details] like  '" + b._MMilestone + "'and d.[Unit No]='" + b._UUnit + "' and d.Floor='" + b._Fflore + "' and PlotNo like '" + b._PPlotName + "' and e.Block like '" + b._BBName + "')", con);

            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public int insertnewmilestonedal(Bal b)
    {
        try
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Actual-Date]='" + b._AActualeDate + "', [update date]='" + b._UupdateDate + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + b._PPojNName + "' and [Task details] like  '" + b._Mmilestone + "'and d.[Unit No]='" + b._Uunit + "' and d.Floor='" + b._FForeName + "' and PlotNo like '" + b._PPlName + "' and e.Block like '" + b._BbocName + "')", con);

            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }

    }

    public DataSet bindnewgridviewdal(string p, string p_2, string p_3, string p_4)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.[Project Name],b.Block,c.PlotNo,d.ID,d.[Task details],d.[Actual-Date],d.[update date],d.[Target-Date],d.Remarks from Projects a join Block b on a.ID=b.Project join Unit c on b.ID=c.Block join [Unit-Target-Linktable] d on c.ID=d.UNIT where a.[Project Name]='" + p + "' and b.Block='" + p_2 + "' and c.PlotNo='" + p_4 + "' and d.[Task details]='" + p_3 + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int insertproject(string p, string p_2, DateTime sdate, DateTime edate, string p_3, string p_4, Decimal p_5)
    {
        try
        {
            int Owner = 0;
            int budgetindays=0;
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Projects([Project Name],Owner,Category,[Start Date],[End Date],[Budget in Days],Status,Location,Budget) values('" + p + "'," + Owner + ",'" + p_2 + "','" + sdate + "','" + edate + "',"+budgetindays+",'" + p_3 + "','" + p_4 + "'," + p_5 + ")", con);
           int n= cmd.ExecuteNonQuery();
           con.Close();
           return n;
        }
        catch
        {
            throw;
        }
    }

    public DataSet projectid(string p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  ID from Projects where [Project Name]='"+p+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int  insetuserprojectinfo(int p, int p_2)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserProjectMapping values("+p+","+p_2+")", con);
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n;
        }
        catch
        {
            throw;
        }
    }



    public int editproject(string p, string p_2, DateTime sdate, DateTime edate, string p_3, string p_4, decimal p_5, int p_6)
    {
        try
        {
            //int Owner = 0;
            //int budgetindays = 0;
            con.Open();
            SqlCommand cmd = new SqlCommand("update  Projects set [Project Name]='"+p+"',Category='"+p_2+"',[Start Date]='"+sdate+"',[End Date]='"+edate+"',Status='"+p_3+"',Location='"+p_4+"',Budget='"+p_5+"' where ID="+p_6+"",con);
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindproject(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select p.[Project Name],p.ID from dbo.Projects p join dbo.UserProjectMapping u on p.ID=u.ProjectId where u.UserId =" + p + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int insertblockdal(int p, string p_2)
    {
        try
        {
            int Dus = 0;
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Block(Project,Block,[Block entity1],[Block entity2],[Block entity 3],Dus) values(" + p + ",'" + p_2 + "','" + 0 + "','" + 0 + "','" + 0 + "'," + Dus + ")", con);
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindgridtargetdal(Bal b)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.[Project Name],b.Block,c.PlotNo,d.ID,d.[Task details],d.[Target-Date],d.[update date],d.Remarks from Projects a join Block b on a.ID=b.Project join Unit c on b.ID=c.Block join [Unit-Target-Linktable] d on c.ID=d.UNIT where a.[Project Name]='" + b._p1 + "' and b.Block='" + b._P2 + "' and c.PlotNo='" + b._p3 + "' and d.[Task details]='" + b._p4 + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int insertmilestonTarget(string p, string p_2, string p_3, string p_4, string p_5, string p_6, string p_7)
    {
        try
        {

            DateTime _targetdate = DateTime.ParseExact(p_5, "dd/MM/yyyy", null);
           DateTime _updatedate = DateTime.ParseExact(p_6, "dd/MM/yyyy", null);

            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Target-Date]='" + _targetdate + "', [update date]='" + _updatedate + "',Remarks='" + p_7 + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + p + "' and [Task details] like  '" + p_4 + "' and PlotNo like '" + p_3 + "' and e.Block like '" + p_2 + "')", con);

            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }



    public int inserttargetdatenulldal(string p, string p_2, string p_3, string p_4, string p_5)
    {
        try
        {
            SqlDateTime t = SqlDateTime.Null;
            DateTime _update = DateTime.ParseExact(p_5, "dd/MM/yyyy", null);
            string remark = null;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Target-Date]=" + t + ", [update date]='" + _update + "',Remarks='"+remark+"' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + p + "' and [Task details] like  '" + p_4 + "' and PlotNo like '" + p_3 + "' and e.Block like '" + p_2 + "')", con);

            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public int inserttagetdatenull(string p, string p_2, string p_3, string p_4, string p_5, string p_6, string p_7)
    {
        try
        {
            SqlDateTime t1 = SqlDateTime.Null;
            DateTime _update = DateTime.ParseExact(p_7, "dd/MM/yyyy", null);
            string remark = null;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Target-Date]=" + t1 + ", [update date]='" + _update + "',Remarks='" + remark + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + p + "' and c.[Task details] like  '" + p_6 + "' and d.PlotNo like '" + p_3 + "' and d.Floor like '" + p_4 + "' and d.[Unit No] like '" + p_5 + "' and e.Block like '" + p_2 + "')", con);

            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public int inserttargetdatedal(string p, string p_2, string p_3, string p_4, string p_5, string p_6, string p_7, string p_8, string p_9)
    {
        try
        {
            DateTime targetdate = DateTime.ParseExact(p_7, "dd/MM/yyyy", null);
            DateTime _update = DateTime.ParseExact(p_8, "dd/MM/yyyy", null);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  [Unit-Target-Linktable] set [Target-Date]='" + targetdate + "', [update date]='" + _update + "',Remarks='" +p_9 + "' where [Unit-Target-Linktable].id in (select c.id from [Unit-Target-Linktable] c left  outer join dbo.Unit d on d.ID=c.UNIT left outer join dbo.Block e on e.ID=d.Block left outer join dbo.Projects s on s.ID=e.Project where s.[Project Name] like '" + p + "' and c.[Task details] like  '" + p_6 + "' and d.PlotNo like '" + p_3 + "' and d.Floor like '" + p_4 + "' and d.[Unit No] like '" + p_5 + "' and e.Block like '" + p_2 + "')", con);
            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindbtype()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct type from type", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int countblock(int p,string p_2)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(b.Block) from Block b join dbo.Projects p on p.ID=b.Project where b.Block='"+p_2+"' and p.ID="+p+"", con);
            int a = (int)cmd.ExecuteScalar();
            con.Close();
            return a;
        }
        catch
        {
            throw;
        }
    }

    public int insertunitdal(int p, string p_2, string p_3, string p_4, string p_5, string p_6)
    {
        try
        {
          
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Unit(Block,Type,[Unit No],Area,Floor,PlotNo) values(" + p + ",'" + p_2 + "','" + p_3 + "','" + p_6 + "','" + p_5 + "','" + p_4 + "')", con);
            int n = cmd.ExecuteNonQuery();
            con.Close();
            return n;
        }
        catch
        {
            throw;
        }
    }

    public DataSet selectunitIDDal(string p, string p_2, string p_3, string p_4, string p_5)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select u.ID from dbo.Unit u join Block b on b.ID=u.Block join Projects p on p.ID=b.Project where p.[Project Name]='"+p+"' and b.Block='"+p_2+"' and u.PlotNo='"+p_3+"' and u.Floor='"+p_4+"' and u.[Unit No]='"+p_5+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet bindnewunittargetDal(string p, string p_2, string p_3, string p_4, string p_5, string p_6, string p_7, string p_8)
    {
        try
        {
            DateTime _actualdate1 = DateTime.ParseExact(p_7, "dd/MM/yyyy", null);
            DateTime _updatedate1 = DateTime.ParseExact(p_8, "dd/MM/yyyy", null);
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct a.[Project Name],b.Block,c.PlotNo,c.Floor,c.[Unit No],d.ID,d.[Task details],d.[Actual-Date],d.[update date],d.[Target-Date],d.Remarks from Projects a join Block b on a.ID=b.Project join Unit c on b.ID=c.Block join [Unit-Target-Linktable] d on c.ID=d.UNIT where a.[Project Name]='" + p + "' and b.Block='" + p_2 + "' and c.PlotNo='" + p_3 + "' and c.Floor='" + p_4 + "' and  c.[Unit No]='" + p_5 + "' and d.[Task details]='" + p_6 + "' and d.[Actual-Date]='"+_actualdate1+"' and d.[update date]='"+_updatedate1+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int deleteunittargetmilestone(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from [Unit-Target-Linktable] where ID=" + p + "", con);
            int l = cmd.ExecuteNonQuery();
            con.Close();
            return l;
        }
        catch
        {
            throw;
        }
    }

    public DataSet projectsummary(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select p.[Project Name],b.Block,u.PlotNo,u.Floor,u.[Unit No],t.[Actual-Date],t.[Target-Date],t.[Task details],t.[update date],t.Remarks from Projects p join Block b on p.ID=b.Project join Unit u on b.ID=u.Block join [Unit-Target-Linktable]t on u.ID=t.UNIT  join UserProjectMapping m on p.ID=m.ProjectId where m.UserId="+p+"", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet binddetailprojects(string p, string p_2)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select p.[Project Name],b.Block,u.PlotNo,u.Floor,u.[Unit No],t.[Actual-Date],t.[Target-Date],t.[Task details],t.[update date],t.Remarks from Projects p join Block b on p.ID=b.Project join Unit u on b.ID=u.Block join [Unit-Target-Linktable]t on u.ID=t.UNIT  where p.[Project Name]='"+p+"' and b.Block='" +p_2+ "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public DataSet binonlyproject(string p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select p.[Project Name],b.Block,u.PlotNo,u.Floor,u.[Unit No],t.[Actual-Date],t.[Target-Date],t.[Task details],t.[update date],t.Remarks from Projects p join Block b on p.ID=b.Project join Unit u on b.ID=u.Block join [Unit-Target-Linktable]t on u.ID=t.UNIT  where p.[Project Name]='" + p + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    public int unittargetmilestone(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from [Unit-Target-Linktable] where ID=" + p + "", con);
            int l = cmd.ExecuteNonQuery();
            con.Close();
            return l;
        }
        catch
        {
            throw;
        }
    }

    public DataSet binddelete(int p)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select  distinct a.[Project Name],b.Block,c.PlotNo,c.Floor,c.[Unit No],d.ID,d.[Task details],d.[Actual-Date],d.[update date],d.[Target-Date],d.Remarks from Projects a join Block b on a.ID=b.Project join Unit c on b.ID=c.Block join [Unit-Target-Linktable] d on c.ID=d.UNIT where d.ID="+p+"", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        catch
        {
            throw;
        }
    }

    //public int deleteblockdal(int blockid)
    //{
    //    //try
    //    //{
    //    //    int l=0;
    //    //    con.Open();
    //    //   SqlCommand cmd2 = new SqlCommand("delete Block from Block b join Projects p on p.ID=b.Project  where b.ID=" + blockid + "", con);
    //    //   l= cmd2.ExecuteNonQuery();
    //    //   SqlCommand cmd1 = new SqlCommand("delete Block from Unit u join Block b on b.ID=u.Block  where u.Block=" + blockid + "", con);
    //    //   l = cmd1.ExecuteNonQuery();
    //    //    con.Close();
    //    //    return l;
    //    //}
    //    //catch
    //    //{
    //    //    throw;
    //    //}
    //}
}