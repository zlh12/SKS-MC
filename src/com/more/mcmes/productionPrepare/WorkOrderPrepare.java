package com.more.mcmes.productionPrepare;

import com.more.fw.core.base.core.action.BaseActionSupport;
import com.more.fw.core.base.core.action.ModelAction;
import com.more.fw.core.common.exception.BussException;
import com.more.fw.core.common.method.CommMethod;
import com.more.fw.core.common.method.StringUtils;
import com.more.fw.core.dbo.model.service.ModelService;
import com.more.fw.core.dbo.model.service.impl.base.FuncService;
import com.more.fw.core.sysfa.usermessage.model.ProFuncDto;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 工单关联
 *
 * @author:phantomsaber
 * @version:2019/7/3 4:38
 * @email:phantomsaber@foxmail.com
 **/
public class WorkOrderPrepare implements FuncService {
    private final Log log = LogFactory.getLog(this.getClass());
    private String ok = "OK";

    @SuppressWarnings("unchecked")
    @Override
    public String exeFunc(ModelAction modelAction, ModelService modelService) {
        // 获取封装的数据
        HttpServletRequest request = modelAction.getRequest();
        String workOrders = request.getParameter("workOrderSn");
        String[] split = workOrders.split("\\|");
        String ajaxRes = null;

        Boolean splitFlag = null;

        if(workOrders.length() > 0){
            try {
                splitFlag = !StringUtils.isEmpty(split[1]);
            } catch (Exception e) {
                split = workOrders.split(",| ");
            }
            try {
                splitFlag = !StringUtils.isEmpty(split[1]);
            } catch (Exception e) {
                splitFlag = !StringUtils.isEmpty(split[0]);
            }
        }else{
            modelAction.setAjaxString("请选择至少一条数据");
            return BaseActionSupport.AJAX;
        }




        if(!splitFlag){
//            throw new BussException(modelAction.getText("备料失败,工单分隔符格式错误,请使用'|' ','与空格"));
            modelAction.setAjaxString("备料失败");
            return BaseActionSupport.AJAX;
        }

        String dataAuth = modelAction.getCurrUser().getData_auth();
        String userId = modelAction.getCurrUser().getId();

        for (int i = 0; i < split.length; i++) {
            String res = "";
            String curWorkOrder = StringUtils.toString(split[i]);
            if (!StringUtils.isEmpty(curWorkOrder)) {
                res = callProjectPrepare(modelService, dataAuth, curWorkOrder,userId);
            }
            if (!ok.equals(res)) {
                modelAction.setAjaxString(curWorkOrder+"生产备料失败," + res);
                return BaseActionSupport.AJAX;
//                throw new BussException(modelAction.getText(curWorkOrder+"生产备料失败," + res), res);
            }
        }

        String iframeId = modelAction.getRequest().getParameter("iframeId");
        if (iframeId == null) {
            iframeId = "iframe9";
        }
        String isCloseWin = modelAction.getRequest().getParameter("isCloseWin");

        modelAction.setAjaxString("备料成功");
        return BaseActionSupport.AJAX;
//        return modelAction.reloadIframeByIds(iframeId, modelAction.getText("备料成功"), "0");
    }

    /**
     * 调用工单关联存储过程
     *
     * @param modelService
     * @param dataAuth
     * @param relWorkerOrder
     * @return
     */
    public String callProjectPrepare(ModelService modelService, String dataAuth, String relWorkerOrder,String userId) {
        ProFuncDto pf = new ProFuncDto();
        int[] inPlace = {1, 2, 3};
        int[] outplace = {4};
        List<Object> list = new ArrayList<Object>();
        List<Object> outType = new ArrayList<Object>();
        list.add(dataAuth);
        list.add(relWorkerOrder);
        list.add(userId);
        outType.add("String");
        pf.setClassName("P_C_VOID_PREPARE_PROJECT_SN");
        pf.setInPlace(inPlace);
        pf.setOutPlace(outplace);
        pf.setTotalLen(list.size() + outType.size());
        pf.setValArgs(list);
        pf.setOutValType(outType);
        List<Object> relist = modelService.procComm(pf);
        String res = (String) relist.get(0);
        return res;
    }
}
