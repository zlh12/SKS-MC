package com.more.mes.terminal.http.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.more.fw.http.service.HttpCoreService;
import com.more.fw.http.service.IhttpServiceJosn;
import com.more.fw.interf.InterfaceLog;
import com.more.mes.terminal.service.base.TerminalService;

public class GetCmdSpecialCode extends InterfaceLog implements IhttpServiceJosn {

	/**
	   * @param arg0
	   * @return
	   * @see com.more.fw.http.service.IhttpServiceJosn#exeFunc(com.more.fw.http.service.HttpCoreService)
	   */
	  @Override
	  public String exeFunc(HttpCoreService service)
	  {
	    // TODO Auto-generated method stub
		  Map map = new HashMap();
		  try
	      {
			  List dataList= TerminalService.GetCmdSpecialCode();
			  String jsonStr=TerminalService.MapToJson(dataList);
			  map.put("json", jsonStr);
			  service.setResult(map);
	    	  return null;
	      }
	      catch(Exception e)
	      {
	    	  map.put("json", "{\"Error\":\""+e.toString()+"\"}");
	    	  service.setResult(map);
	          return null;
	      }
	  }
}
