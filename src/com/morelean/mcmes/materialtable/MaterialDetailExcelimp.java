package com.morelean.mcmes.materialtable;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.more.fw.core.base.core.action.ModelAction;
import com.more.fw.core.dbo.model.service.ModelService;
import com.more.fw.core.dbo.model.service.impl.base.FuncService;

/**
 * @Title 〈一句话功能简述〉
 * @description 导入料站表明细自定义类
 * @ClassName MaterialDetailExcelimp 
 * @author msad013
 * @version 1.0 developer 2017-6-16 created
 * @see MaterialDetailExcelimp 
 * @since 2017-6-16
 * @Copyright: Copyright (c) 2017
 * @Company: morelean
 */
public class MaterialDetailExcelimp implements FuncService
{
  private final Log log = LogFactory.getLog(this.getClass());

  @Override
  public String exeFunc(ModelAction modelAction, ModelService modelService)
  {
    HttpServletRequest request = modelAction.getRequest();
    String areaSn = request.getParameter("areaSn");
    String[] areaSnArr=areaSn.split(",");
    String dataAuth = String.valueOf(modelAction.getRequest().getSession().getAttribute("mcDataAuth"));
    String querySql = "select CD.CD_DEVICE_SN, CD.CD_DEVICE_NAME, CA.CA_PARENTAREAID CA_ID,CAD.CAD_DEVICE_SEQUENCE from t_co_area_device cad " +
    		"join t_co_device cd on cd.id=cad.cad_device_id join t_co_area ca on ca.ca_id=cad.ca_id  where ca.ca_parentareaid=? and cad.data_auth=? and cd.data_auth=? and ca.data_auth=? ";
    List list = modelService.listDataSql(querySql, new Object[] {areaSnArr[0],dataAuth,dataAuth,dataAuth});
    modelAction.setDataList(list);
  
    return modelAction.ActionForwardExeid(modelAction.getExeid());// 转向原来视图页面

    //return modelAction.ActionForward("/buss/msbg/materialTable/materialDetailExcelimp.jsp");
  }
}