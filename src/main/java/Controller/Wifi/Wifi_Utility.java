package Controller.Wifi;

import lombok.experimental.UtilityClass;

@UtilityClass
public class Wifi_Utility {
    public static final String CREATE_WIFI = "insert or replace into wifi(" +
            "X_SWIFI_MGR_NO," +
            " X_SWIFI_WRDOFC, " +
            "X_SWIFI_MAIN_NM, " +
            "X_SWIFI_ADRES1, " +
            "X_SWIFI_ADRES2, " +
            "X_SWIFI_INSTL_FLOOR, " +
            "X_SWIFI_INSTL_TY, " +
            "X_SWIFI_INSTL_MBY, " +
            "X_SWIFI_SVC_SE, " +
            "X_SWIFI_CMCWR, " +
            "X_SWIFI_CNSTC_YEAR, " +
            "X_SWIFI_INOUT_DOOR, " +
            "X_SWIFI_REMARS3," +
            "LAT, " +
            "LNT, " +
            "WORK_DTTM )" +
            " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    public static final String wifiTable = "CREATE TABLE IF NOT EXISTS WIFI ("+
            "X_SWIFI_MGR_NO text primary key,\n" +
            "X_SWIFI_WRDOFC text NULL,\n" +
            "X_SWIFI_MAIN_NM text NULL,\n" +
            "X_SWIFI_ADRES1 text NULL,\n" +
            "X_SWIFI_ADRES2 text NULL,\n" +
            "X_SWIFI_INSTL_FLOOR text NULL,\n" +
            "X_SWIFI_INSTL_TY text NULL,\n" +
            "X_SWIFI_INSTL_MBY text NULL,\n" +
            "X_SWIFI_SVC_SE text NULL,\n" +
            "X_SWIFI_CMCWR text NULL,\n" +
            "X_SWIFI_CNSTC_YEAR VARCHAR(13) NULL,\n" +
            "X_SWIFI_INOUT_DOOR VARCHAR(10) NULL,\n" +
            "X_SWIFI_REMARS3 text NULL,\n" +
            "LAT real NULL,\n" +
            "LNT real NULL,\n" +
            "WORK_DTTM text NULL" +
            ");";
}
