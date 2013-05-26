using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlTypes;
/// <summary>
/// Summary description for Bal
/// </summary>
public class Bal
{
	public Bal()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void bindgridviewbal(string sessionid)
    {
        _sessionid = Convert.ToInt32(sessionid);
    }

    public int _sessionid { get; set; }

    public void bindblockbal(string p)
    {
        _projectid = p;
    }

    public string _projectid { get; set; }

    public void bindplotbal(string p2,string p)
    {
        _blockid = p;
        _PPPname = p2;
    }

    public string _blockid { get; set; }

    public string _PPPname { get; set; }
    public void bindmilstonebal(string p)
    {
        _milestone = Convert.ToInt32(p);
    }

    public int _milestone { get; set; }

    public void bindgridbal(string p, string p_2, string p_3, string p_4)
    {
        _p1 = p;
        _P2 = p_2;
        _p3 = p_3;
        _p4 = p_4;
    }

    public string _p1 { get; set; }

    public string _P2 { get; set; }

    public string _p3 { get; set; }

    public string _p4 { get; set; }

    public void bindmilestoneblockbal(string p)
    {
        _milestones = Convert.ToInt32(p);
    }

    public int _milestones { get; set; }

  
    public string _projectname { get; set; }

    public string _milestoneName { get; set; }

    public string _blockName { get; set; }



    public void bindmilstoneball(string p)
    {
        _milestonell = p;
    }


    public string _milestonell { get; set; }
  
    //public void convertdatebal(int p)
    //{

    //    _linkID = p;
    //}

    //public int _linkID { get; set; }
   

    public void bindmilestoneblockbal1(string p)
    {
        _milestone1 = p;
    }

    public string _milestone1 { get; set; }

    public int _plot { get; set; }

    public void linkinsertbal(string p, string p_2, string p_3, string p_4)
    {
        _linkplot = Convert.ToInt32(p);
        _linkMilestone = p_2;
        _linkActualDate = DateTime.ParseExact(p_3, "dd/MM/yyyy", null);
        _linkUpdatedate = DateTime.ParseExact(p_4, "dd/MM/yyyy", null);
    }

    public int _linkplot { get; set; }

    public string _linkMilestone { get; set; }

    public DateTime _linkActualDate { get; set; }

    public DateTime _linkUpdatedate { get; set; }



    public void insertbal(string p, string p_2, string p_3, string p_4, string p_5, string p_6)
    {
        _projectName = p;
        _BlockName = p_2;
        _PlotName = p_3;
        _MilestoneName = p_4;
        _ActualDate = DateTime.ParseExact(p_5, "dd/MM/yyyy", null);
        _Uargetdate = DateTime.ParseExact(p_6, "dd/MM/yyyy", null);
       
    }

    public string _projectName { get; set; }

    public string _BlockName { get; set; }

    public string _PlotName { get; set; }

    public string _MilestoneName { get; set; }

    public DateTime _ActualDate { get; set; }

    public DateTime _Uargetdate { get; set; }

    public void insertbalnull(string p, string p_2, string p_3, string p_4, string p_5)
    {
        _actualDatenull = SqlDateTime.Null;
        
        _PName = p;
        _BName = p_2;
        _PlName = p_3;
        _MileName = p_4;
        _Udate = DateTime.ParseExact(p_5, "dd/MM/yyyy", null);
       
    }

    public string _PName { get; set; }

    public string _BName { get; set; }

    public string _PlName { get; set; }

    public string _MileName { get; set; }

    public DateTime _Udate { get; set; }

    public SqlDateTime _actualDatenull { get; set; }

    public void bindfloor(string p2,string p3,string p)
    {
        _projectN = p2;
        _BlockN = p3;
        _floor = p;
    }
    public string _projectN { get; set; }

    public string _BlockN { get; set; }
    public string _floor { get; set; }


    public string _Unit { get; set; }



    public void bindmilestone(string p, string p_2, string p_3, string p_4, string p_5)
    {
        _newProject = p;
        _newblock = p_2;
        _newplot = p_3;
        _newfloor = p_4;
        _newunit = p_5;

    }

    public string _newProject { get; set; }

    public string _newblock { get; set; }

    public string _newplot { get; set; }

    public string _newfloor { get; set; }

    public string _newunit { get; set; }

    public void bindunit(string p, string p_2, string p_3, string p_4)
    {
        _NprojectName = p;
        _NBlockName = p_2;
        _NPlotName = p_3;
        _NfloorName = p_4;
    }

    public string _NprojectName { get; set; }

    public string _NBlockName { get; set; }

    public string _NPlotName { get; set; }

    public string _NfloorName { get; set; }

    public void insertnewbalnull(string p, string p_2, string p_3, string p_4, string p_5, string p_6, string p_7)
    {
        _pNName = p;
        _BBName = p_2;
        _PPlotName = p_3;
        _Fflore = p_4;
        _UUnit = p_5;
        _MMilestone = p_6;
        _aactualDatenull = SqlDateTime.Null;
        _UUpdateDate = DateTime.ParseExact(p_7, "dd/MM/yyyy", null);
    }

    public string _pNName { get; set; }

    public string _BBName { get; set; }

    public string _PPlotName { get; set; }

    public string _Fflore { get; set; }

    public string _UUnit { get; set; }

    public string _MMilestone { get; set; }
    public SqlDateTime _aactualDatenull { get; set; }
    public DateTime _UUpdateDate { get; set; }

    public void insertnewbal(string p, string p_2, string p_3, string p_4, string p_5, string p_6, string p_7, string p_8)
    {
        _PPojNName = p;
        _BbocName = p_2;
        _PPlName = p_3;
        _FForeName = p_4;
        _Uunit = p_5;
        _Mmilestone = p_6;
        _AActualeDate = DateTime.ParseExact(p_7, "dd/MM/yyyy", null);
        _UupdateDate = DateTime.ParseExact(p_8, "dd/MM/yyyy", null);
    }

    public string _PPojNName { get; set; }

    public string _BbocName { get; set; }

    public string _PPlName { get; set; }

    public string _FForeName { get; set; }

    public string _Uunit { get; set; }

    public string _Mmilestone { get; set; }

    public DateTime _AActualeDate { get; set; }

    public DateTime _UupdateDate { get; set; }


  
}