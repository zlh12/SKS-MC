package com.more.mes.pda.http.oracle;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.more.fw.core.common.method.StringUtils;
import com.more.fw.http.service.HttpCoreService;
import com.more.fw.http.service.IhttpServiceJosn;
import com.more.fw.interf.InterfaceLog;
import com.more.mes.pda.service.PdaBaseServiceUtils;
import com.more.mes.pda.service.oracle.PdaServiceUtils;

public class GetSplitLog extends InterfaceLog implements IhttpServiceJosn{
	@Override
	public String exeFunc(HttpCoreService service) {
		// TODO Auto-generated method stub
		Map map = new HashMap<>();
		try {
			String oldItem = StringUtils.toString(service.getParamTo().get("oldItem"));
			String itemSn = StringUtils.toString(service.getParamTo().get("itemSn"));
			String itemCode = StringUtils.toString(service.getParamTo().get("itemCode"));
			String strOrgCode = StringUtils.toString(service.getParamTo().get("strOrgCode"));
			PdaServiceUtils serviceUtils=new PdaServiceUtils();
			List<Map> list = serviceUtils.GetSplitLog(oldItem, itemSn, itemCode, strOrgCode);
			String jsonStr = "";
			if(null==list || list.size()<=0){
				  jsonStr=PdaBaseServiceUtils.foundNoData;
				  map.put("json", PdaBaseServiceUtils.createSendMessage(PdaBaseServiceUtils.getPdaFaildInfoTemp(), jsonStr));
			  }
			  else {
				  jsonStr=serviceUtils.MapListToJson(list);
				  map.put("json", PdaBaseServiceUtils.createSendMessage(PdaBaseServiceUtils.getPdaSuccessInfoTemp(), jsonStr));
			  }
			service.setResult(map);
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			map.put("json", PdaBaseServiceUtils.createSendMessage(PdaBaseServiceUtils.getPdaFaildInfoTemp(), e.toString()));
			service.setResult(map);
	          return null;
		}
	}
}
