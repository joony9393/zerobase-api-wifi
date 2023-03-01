package Controller.Wifi_History;

import lombok.*;

@Getter
@RequiredArgsConstructor
public class Wifi_History_Entity {
    private int id;
    @NonNull private double LAT ;
    @NonNull private double LNT;
    @NonNull private String DATE;


    public void setId(int id) {
        this.id = id;
    }

}
