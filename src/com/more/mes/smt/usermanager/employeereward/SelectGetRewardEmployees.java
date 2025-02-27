
package com.more.mes.smt.usermanager.employeereward;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.more.fw.core.base.core.action.BaseActionSupport;

import com.more.fw.core.dbo.model.service.impl.base.FuncService;
import javax.servlet.http.HttpServletRequest;

import com.more.fw.core.common.method.CommMethod;
import com.more.fw.core.common.method.StringUtils;
import com.more.fw.core.base.core.action.ModelAction;
import com.more.fw.core.dbo.model.service.ModelService;

  /**
 * @Description 获取当前奖惩绑定的员工
 * @ClassName ShowEmployeeList
 * @author qm
 * @Company: morelean
 */
public class SelectGetRewardEmployees implements FuncService
{

  @Override
  public String exeFunc(ModelAction modelAction, ModelService modelService)
  {
    HttpServletRequest request = modelAction.getRequest();
    Map<String, Object> map = new HashMap<String, Object>();
    String rewardId = request.getParameter("rewardId");
    String dataAuth = request.getParameter("dataAuth");//组织机构   
    
    String sqlList ="SELECT DATA_AUTH FROM T_USER_REWARD WHERE ID=? ";
    List<Map> zjList1 = modelService.listDataSql(sqlList, new Object[]{rewardId});
    
    if(null!=zjList1 && zjList1.size()>0) {
    	dataAuth=(String) zjList1.get(0).get("DATA_AUTH");
    }
    
     sqlList = "select usr.ID, usr.LOGIN_NAME, usr.NAME, dept.NAME DEPT_NAME from SY_USER usr "
                    + " left join T_USER_REWARD_USER rew on rew.USER_ID = usr.ID left join  SY_DEPT dept on usr.DEPT_ID = dept.ID  "
                    + "where rew.REWARD_ID = ? and usr.DATA_AUTH = ? ";
     List zjList = modelService.listDataSql(sqlList, new Object[]{rewardId,dataAuth});
    map.put("zjList", zjList);

    modelAction.setAjaxMap(map);
    CommMethod.listMapToEscapeJs(zjList);
    return BaseActionSupport.AJAX;
  }

}
