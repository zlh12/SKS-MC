package com.more.mes.smt.wmsinventorymanage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.more.fw.core.base.core.action.ModelAction;
import com.more.fw.core.common.exception.BussException;
import com.more.fw.core.common.method.CommMethod;
import com.more.fw.core.dbo.model.service.ModelService;
import com.more.fw.core.dbo.model.service.impl.base.FuncService;
import com.more.fw.core.sysfa.usermessage.model.ProFuncDto;
import com.more.led.executor.Shelfexecutor;

/**
 * 盘点单-单据灭灯
 * 
 * @author development
 *
 */
public class InventoryDocLigthOff implements FuncService {

	private final Log log = LogFactory.getLog(this.getClass());

	@SuppressWarnings("unchecked")
	@Override
	public String exeFunc(ModelAction modelAction, ModelService modelService) {
		HttpServletRequest request = modelAction.getRequest();
		try {
			String docNum = request.getParameter("docNum");
			String dataAuth = request.getParameter("dataAuth");
			String res = light(docNum, dataAuth, modelService);
			if (!res.equals("OK")) {
				return modelAction.alertParentInfo(res);
			}
			String sql = "select T.CMD from T_WMS_BACKUP_MAT_CMD t WHERE T.DOC_NUM=? and t.data_auth=?";
			List<Map> cmdList = modelService.listDataSql(sql, new Object[] { docNum, dataAuth });
			String cmd = null;
			if (cmdList != null && cmdList.size() > 0) {
				int num = cmdList.size();
				String offCmd = "";// 灭灯
				for (int i = 0; i < num; i++) {
					cmd = (String) cmdList.get(i).get("CMD");
					if (cmd.indexOf("@@OFF") != -1) { // 有灭灯指令
						String[] cmdStr = cmd.split("@@OFF");
						offCmd += cmdStr[1].substring(cmdStr[1].indexOf("[") + 1, cmdStr[1].indexOf("]"));
					}
				}
				Shelfexecutor shel = new Shelfexecutor();
				shel.Execute(offCmd);
			}
		} catch (Exception e) {
			log.error(e);
			throw new BussException(modelAction.getText("单据灭灯失败"), e);
		}
		return modelAction.reloadParent(modelAction.getText("单据灭灯成功"));
	}

	@SuppressWarnings("unchecked")
	public String light(String docNum, String dataAuth, ModelService modelService) {
		ProFuncDto pf = new ProFuncDto();
		int[] inPlace = { 1, 2, 3, 4, 5, 6, 7 };
		int[] outplace = { 8 };
		List<Object> list2 = new ArrayList<Object>();
		List<Object> outType = new ArrayList<Object>();
		list2.add(dataAuth);
		list2.add(docNum);
		list2.add(null);
		list2.add(null);
		list2.add(null);
		list2.add("13");
		list2.add(CommMethod.getSessionUser().getLoginName());
		outType.add("String");
		pf.setClassName("P_W_STOCK_LIGHT");// 货架亮灯
		pf.setInPlace(inPlace);// 存储过程中in
		pf.setOutPlace(outplace); // 存储过程中out
		pf.setValArgs(list2);// 存储过程中输入的参数
		pf.setTotalLen(list2.size() + outType.size());// 总个数
		pf.setOutValType(outType);// 输出的参数
		List<Object> relist = modelService.procComm(pf);// 接收返回值
		String res = (String) relist.get(0); // 结果
		return res;
	}

}
