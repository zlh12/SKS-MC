package com.more.sap.comm;

import com.sap.conn.jco.JCoDestination;
import com.sap.conn.jco.JCoDestinationManager;
import com.sap.conn.jco.JCoException;
import com.sap.conn.jco.JCoFunction;
import com.sap.conn.jco.ext.Environment;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.util.Properties;

/**
 * JCO SAP连接测试
 *
 * @author:phantomsaber
 * @version:2019/7/11 14:31
 * @email:phantomsaber@foxmail.com
 **/
public class RfcManager {
    private final Log log = LogFactory.getLog(this.getClass());

    private static JCOProvider provider;
    private static JCoDestination destination;

/*
    private static final String ABAP_AS_POOLED = ReadProperties.getPorpertie("sapconfig.properties","ABAP_AS_POOLED");
    private static String host = ReadProperties.getPorpertie("sapconfig.properties","HOST");
    private static String user = ReadProperties.getPorpertie("sapconfig.properties","USER");
    private static String pwd = ReadProperties.getPorpertie("sapconfig.properties","PWD");
    private static String lang = ReadProperties.getPorpertie("sapconfig.properties","LANG");
    private static String client = ReadProperties.getPorpertie("sapconfig.properties","CLIENT");
    private static String sysnr = ReadProperties.getPorpertie("sapconfig.properties","SYSNR");
    private static String peakLimit = ReadProperties.getPorpertie("sapconfig.properties","PEAKLIMIT");
    private static String poolCapacity = ReadProperties.getPorpertie("sapconfig.properties","POOLCAPACITY");
*/

    private static final String ABAP_AS_POOLED = "ABAP_AS_POOL";

    private static String host = "10.10.80.23";
    private static String user = "sap_mes";
    private static String pwd = "mes@3456";
    private static String lang = "zh";
    private static String client = "800";
    private static String sysnr = "00";
    private static String peakLimit = "10";
    private static String poolCapacity = "3";

/*    private static String host = "10.10.79.112";
    private static String user = "moer";
    private static String pwd = "123456";
    private static String lang = "zh";
    private static String client = "800";
    private static String sysnr = "00";
    private static String peakLimit = "10";
    private static String poolCapacity = "3";*/

/*
    private static String host = "10.10.80.23";
    private static String user = "sap_oa";
    private static String pwd = "20150568";
    private static String lang = "zh";
    private static String client = "800";
    private static String sysnr = "00";
    private static String peakLimit = "10";
    private static String poolCapacity = "3";
*/

    static {
        Properties properties = loadProperties(host,user,pwd,lang,client,sysnr,peakLimit,poolCapacity);
        try {
            provider = new JCOProvider();
            Environment.registerDestinationDataProvider(provider);
            provider.changePropertiesForABAP_AS(ABAP_AS_POOLED, properties);
        } catch (IllegalStateException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * 初始化连接信息
     * @param host  服务器
     * @param user  用户名
     * @param pwd   用户密码
     * @param lang  登录语言
     * @param client    SAP集团
     * @param sysnr     系统编号
     * @param peakLimit 最大连接线程
     * @param poolCapacity 最大连接数
     * @return
     */
    public static Properties loadProperties(String host,String user,String pwd,String lang,String client,String sysnr,String peakLimit,String poolCapacity) {
        Properties props = new Properties();
        //服务器
        props.setProperty("jco.client.ashost", host);

        props.setProperty("jco.client.user", user);
        props.setProperty("jco.client.passwd", pwd);
        props.setProperty("jco.client.lang", lang);

        //SAP 集团
        props.setProperty("jco.client.client", client);

        //系统编号
        props.setProperty("jco.client.sysnr", sysnr);

        //最大连接线程
        props.setProperty("jco.destination.peak_limit", peakLimit);

        //最大连接数
        props.setProperty("jco.destination.pool_capacity", poolCapacity);
        return props;
    }

    public static JCoDestination getDestination() throws JCoException {
        if (destination == null) {
            destination = JCoDestinationManager.getDestination(ABAP_AS_POOLED);
        }
        return destination;
    }

    public static void execute(JCoFunction function) {
        System.out.println("SAP Function Name : " + function.getName());
        try {
            function.execute(getDestination());
        } catch (JCoException e) {
            e.printStackTrace();
        }
    }

    public static JCoFunction getFunction(String functionName) {
        JCoFunction function = null;
        try {
            function = getDestination().getRepository().getFunctionTemplate(functionName).getFunction();
        } catch (JCoException e) {
            e.printStackTrace();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return function;
    }
}