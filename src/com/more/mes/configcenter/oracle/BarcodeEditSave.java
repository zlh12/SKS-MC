package com.more.mes.configcenter.oracle;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.more.fw.core.base.core.action.ModelAction;
import com.more.fw.core.common.exception.BussException;
import com.more.fw.core.common.exception.OperResult;
import com.more.fw.core.common.method.CommMethod;
import com.more.fw.core.common.method.Constants;
import com.more.fw.core.common.method.StringUtils;
import com.more.fw.core.dbo.model.dto.Smap;
import com.more.fw.core.dbo.model.dto.TableDataMapExt;
import com.more.fw.core.dbo.model.service.ModelService;
import com.more.fw.core.dbo.model.service.impl.base.FuncService;

/**
 * 条码规则-编辑保存
 * 
 * @author tpdg
 */
public class BarcodeEditSave implements FuncService {
	private final Log log = LogFactory.getLog(this.getClass());

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public String exeFunc(ModelAction modelAction, ModelService modelService) {
		HttpServletRequest request = modelAction.getRequest();
		String formIds = request.getParameter("formIds");
		String dataAuth = String.valueOf(modelAction.getRequest().getSession().getAttribute("mcDataAuth"));
		List<Smap<String, Object>> paramList = modelAction.getParamList();
		String formId = request.getParameter("formId");
		if (StringUtils.isBlank(formId)) {
			formId = request.getParameter("formIds");
		}
		String iframeId = request.getParameter("iframeId");

		String dataId = modelAction.getDataId();
		TableDataMapExt tdMapDel = new TableDataMapExt();
		Smap<String, Object> paraMapObj = modelAction.getParaMapObj();
		String tbrAnalyticType = request.getParameter("paraMapObj.TBR_ANALYTIC_TYPE");
		paraMapObj.initParam();

		if (paraMapObj.get("TBR_DEFAULT") == null) {
			paraMapObj.put("TBR_DEFAULT", "N");
		}
		if (!"2".equals(paraMapObj.get("TBR_ANALYTIC_TYPE"))) {
			paraMapObj.put("TBR_CHCEK_CHAR", "");
			paraMapObj.put("TBR_START_NUM", "");
			paraMapObj.put("TBR_LENGTH", "");
		}
		List list = new ArrayList<List>();
		String sql = "select ID from T_CO_BARCODE_ROUL t where t.TBR_NAME =? and t.DATA_AUTH = ? ";
		list = modelService.listDataSql(sql, new Object[] { paraMapObj.get("TBR_NAME"), dataAuth });
		if (list != null && list.size() > 0) {
			String id1 = (String) ((Map) list.get(0)).get("ID");
			if (!dataId.equals(id1)) {
				return modelAction.alertParentInfo(modelAction.getText("规则名称已经存在"));
			}
		}
		if ("Y".equals(request.getParameter("paraMapObj.TBR_DEFAULT"))) {
			// String sqlCount = "select t.id from T_CO_BARCODE_ROUL t where t.TBR_TYPE = ?
			// and t.TBR_DEFAULT = 'Y' and t.id != ?";
			// int count = modelService.execSql(sqlCount, new Object[] {
			// paraMapObj.get("TBR_TYPE") ,dataId });
			// if (count > 0) {
			// return modelAction.alertParentInfo(modelAction.getText("该条码类型下已经存在默认标识"));
			String sqlCount = "select t.id from T_CO_BARCODE_ROUL t where t.TBR_TYPE = ? and t.TBR_DEFAULT =? and t.DATA_AUTH =? and t.id != ?";
			String typeString = (String) paraMapObj.get("TBR_TYPE");
			int count = modelService.countSql(sqlCount,
					new Object[] { paraMapObj.get("TBR_TYPE"), "Y", dataAuth, dataId });
			if (count > 0) {
				return modelAction.alertParentInfo(modelAction.getText("该条码类型下已经存在默认标识"));
			}
		}
		/*
		 * if ("Y".equals(paraMapObj.get("TBR_STATUS")) &&
		 * "Y".equals(paraMapObj.get("TBR_DEFAULT"))) { sql =
		 * "select ID from T_CO_BARCODE_ROUL t where t.tbr_status='Y' and t.tbr_default='Y' and t.data_auth=? "
		 * ; list = modelService.listDataSql(sql,new Object[] {dataAuth}); if (list !=
		 * null && list.size() > 1) { String id1 = (String) ((Map)
		 * list.get(0)).get("ID"); if (!dataId.equals(id1)) { return
		 * modelAction.alertParentInfo(modelAction.getText("默认标识有效的记录只允许一条存在"));
		 * 
		 * }
		 * 
		 * } }
		 */
		OperResult operResult = modelService.editComm(request, modelAction.getUser(), paraMapObj, modelAction);
		if (!operResult.isSuccess()) {
			throw new BussException(modelAction.getText("修改失败"));
		}

		tdMapDel = new TableDataMapExt();
		tdMapDel.setTableName("T_CO_BARCODE_EXPLAIN");
		tdMapDel.setSqlWhere("and TBR_ID = ? and DATA_AUTH = ? ");
		tdMapDel.getSqlWhereArgs().add(dataId);
		tdMapDel.getSqlWhereArgs().add(dataAuth);
		modelService.del(tdMapDel);

		Object beType = request.getParameter("paraMapObj.TBR_ANALYTIC_TYPE");

		TableDataMapExt tdmapTop = new TableDataMapExt();

		int detaiNum = 0;
		if (!"2".equals(tbrAnalyticType)) {

			for (int i = 0; i < paramList.size(); i++) {
				Smap<String, Object> smap = paramList.get(i);
				Object source = smap.get("BE_SOURCE");
				if (source == null || "".equals(source)) {
					detaiNum++;
					// continue;
				} else if ("1".equals(beType)) {// 解析类型是数据库
					int hang = i + 1;
					if (smap.get("BE_VALUE") == null || "".equals(smap.get("BE_VALUE"))) {
						throw new BussException(CommMethod.getText("第%s行对应列名数据请填写完整", hang));
					}
					if (smap.get("BE_SELECT") == null || "".equals(smap.get("BE_SELECT"))) {
						throw new BussException(CommMethod.getText("第%s行对应过滤字段请填写完整", hang));
					}
					/*
					 * if (smap.get("BE_PRO") == null || "".equals(smap.get("BE_PRO"))) { throw new
					 * BussException(modelAction.getText("第" + hang + "行对应解析方法名请填写完整")); }
					 */
					sql = "select s.table_name from user_all_tables s where table_name=?  ";
					List subList = modelService.listDataSql(sql,
							new Object[] { source.toString().toUpperCase() });
					if (subList == null || subList.size() == 0) {
						throw new BussException(CommMethod.getText("第%s行数据源对象不存在", hang));
					}
					sql = "select * from user_tab_columns a where a.TABLE_NAME=? and a.COLUMN_NAME= ? ";
					subList = modelService.listDataSql(sql, new Object[] { source.toString().toUpperCase(),
							smap.get("BE_VALUE").toString().toUpperCase() });
					if (subList == null || subList.size() == 0) {
						throw new BussException(CommMethod.getText("第%s行对应列名字段不存在", hang));
					}
					subList = modelService.listDataSql(sql, new Object[] { source.toString().toUpperCase(),
							smap.get("BE_SELECT").toString().toUpperCase() });
					if (subList == null || subList.size() == 0) {
						throw new BussException(CommMethod.getText("第%s行对应过滤字段不存在", hang));
					}

				} else if ("0".equals(beType)) {
					int hang = i + 1;

					/*
					 * if (smap.get("BE_PRO") == null || "".equals(smap.get("BE_PRO"))) { throw new
					 * BussException(modelAction.getText("第" + hang + "行对应解析方法名请填写完整")); }
					 */

				}
				TableDataMapExt detail = new TableDataMapExt();
				String wtid = StringUtils.getUUID();
				detail.setTableName("T_CO_BARCODE_EXPLAIN");
				CommMethod.addSysDefCol(smap, modelAction.getUser());

				detail.getColMap().put("ID", wtid);
				detail.getColMap().put("TBR_ID", dataId);
				if ("0".equals(beType)) {
					if (StringUtils.isNotBlank(smap.get("BE_BEG"))) {
						detail.getColMap().put("BE_BEG", Integer.parseInt(String.valueOf(smap.get("BE_BEG"))));
					}
					if (StringUtils.isNotBlank(smap.get("BE_LEN"))) {
						detail.getColMap().put("BE_LEN", Integer.parseInt(String.valueOf(smap.get("BE_LEN"))));
					}

					smap.remove("BE_BEG");
					smap.remove("BE_LEN");
				}
				detail.getColMap().putAll(smap);
				modelService.save(detail);
			}
		}
		if (("0".equals(beType) || "1".equals(beType)) && paramList.size() == detaiNum) {
			throw new BussException(modelAction.getText("请填写条码规则解析内容"));
		}
		return modelAction.commAjaxFunClassLoadParent(formId, iframeId, Constants.SUCCESS, Constants.OPERATE_TYPE_EDIT);
		// return modelAction.reloadParent(modelAction.getText("修改成功"));
	}
}