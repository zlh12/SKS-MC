package com.more.mes.smt.linemonitor.http.oracle;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.more.fw.http.service.HttpCoreService;
import com.more.fw.http.service.IhttpServiceJosn;
import com.more.fw.interf.InterfaceLog;
import com.more.mes.smt.linemonitor.service.oracle.LineMonitorService;

/**
 * @Title 获取设备状态
 * @Description 〈功能详细描述〉
 * @ClassName GetFeedStation
 * @author csj
 * @version 1.0 developer 2017-8-15 created
 * @see GetFeedStation
 * @since 2017-8-15
 * @Copyright: Copyright (c) 2017
 * @Company: morelean
 */

public class GetDeviceList extends InterfaceLog implements IhttpServiceJosn
{
  //
  /**
   * @param arg0
   * @param arg1
   * @return
   * @see com.more.fw.core.dbo.model.dao.BaseDao#find(java.lang.String, java.lang.Object[])
   */
  public List find(String arg0, Object... arg1)
  {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * @param arg0
   * @param arg1
   * @param arg2
   * @return
   * @see com.more.fw.core.dbo.model.dao.BaseDao#find
   *      (org.springframework.orm.hibernate3.HibernateTemplate, java.lang.String,
   *      java.lang.Object[])
   */
  public List find(HibernateTemplate arg0, String arg1, Object... arg2)
  {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * @param arg0
   * @return
   * @see com.more.fw.http.service.IhttpServiceJosn#exeFunc
   *      (com.more.fw.http.service.HttpCoreService)
   */
  @Override
  public String exeFunc(HttpCoreService service)
  {
    String caId = String.valueOf(service.getDit().get("caId")); // 线别

    LineMonitorService lms = new LineMonitorService();

    service.getDit().put("dataList", lms.getDeviceList(caId));

    return null;
  }

}
