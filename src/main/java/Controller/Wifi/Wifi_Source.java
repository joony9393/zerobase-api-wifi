package Controller.Wifi;

import lombok.*;

@Getter
@RequiredArgsConstructor
public class Wifi_Source {
    @NonNull private String X_SWIFI_MGR_NO	;
    @NonNull private String X_SWIFI_WRDOFC	;
    @NonNull private String X_SWIFI_MAIN_NM	;
    @NonNull private String X_SWIFI_ADRES1	;
    @NonNull private String X_SWIFI_ADRES2	;
    @NonNull private String X_SWIFI_INSTL_FLOOR;
    @NonNull private String X_SWIFI_INSTL_TY	;
    @NonNull private String X_SWIFI_INSTL_MBY	;
    @NonNull private String X_SWIFI_SVC_SE	;
    @NonNull private String X_SWIFI_CMCWR	;
    @NonNull private String X_SWIFI_CNSTC_YEAR	;
    @NonNull private String X_SWIFI_INOUT_DOOR	;
    @NonNull private String X_SWIFI_REMARS3	;
    @NonNull private double LAT;
    @NonNull private double LNT;
    @NonNull private String WORK_DTTM	;
    private double distance;

    public void setDistance(double dis){
        this.distance = dis;
    }
}
