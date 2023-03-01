const getCurrentMyPosition = document.querySelector(".get_current_position");
const getAroundWifi = document.querySelector(".get_around_wifi");
const coordinateBox = document.querySelectorAll(".coordinate_box");
const latitudeBox = document.querySelector(".crd_latitude");
const longitudeBox = document.querySelector(".crd_longitude");

const options = {
    enableHighAccuracy: true,
};

const error =  (err) => {
    console.warn(`ERROR(${err.code}): ${err.message}`);
    getCurrentMyPosition.disabled = false;
    getCurrentMyPosition.classList.remove("noHover");
}

const sucess = async (pos)=>{
    const crd = await pos.coords;
    latitudeBox.value = crd.latitude;
    longitudeBox.value = crd.longitude;
    coordinateBox.forEach(e=>e.style.color = "#00a587");
}

const getCurrentLocation = (e)=>{
    navigator.geolocation.getCurrentPosition(sucess,error,options);
}

const handleClick =(e)=>{
    e.preventDefault();
    e.target.disabled = true;
    getCurrentLocation();
    e.target.classList.add("noHover");
}
// Handle GetWifiData


const handleGetAroundWifi =(e)=>{
    e.preventDefault();
    if(latitudeBox.value.length <=0 || longitudeBox.value.length <= 0){
        return null;
    }
    window.location.href = "index.jsp?lat="+latitudeBox.value+"&lng="+longitudeBox.value;
}

const main = ()=>{
    const params = new URLSearchParams(window.location.search);
    for(const param of params){
        param[0] == 'lat' ?latitudeBox.value = param[1] :null;
        param[0] == 'lng' ? longitudeBox.value = param[1]:null;
    }
    getCurrentMyPosition.addEventListener("click",handleClick);
    getAroundWifi.addEventListener("click",handleGetAroundWifi);
}

main();
