class getIcons {
  String getImageID(int num,int isday){
    var url = "";
    if (isday == 1){
      url = "assets/images/day/113.png";
      if(num == 1003 ){
        url = "assets/images/day/116.png";
      }
      if(num == 1009 || num == 1006){
        url = "assets/images/day/119.png";
      }
      if(num == 1030 ){
        url = "assets/images/day/143.png";
      }
      if(num == 1243 || num == 1246 || num == 1240 || num == 1192 || num == 1180 || num == 1186 || num == 1063 ){
        url = "assets/images/day/176.png";
      }
      if(num == 1255 || num == 1258 || num == 1222 || num == 1216 || num == 1210 || num == 1066){
        url = "assets/images/day/179.png";
      }
      if(num == 1252 || num == 1249 || num == 1207 || num == 1069){
        url = "assets/images/day/182.png";
      }
      if(num == 1087 ){
        url = "assets/images/day/200.png";
      }
      if(num == 1264 || num == 1135){
        url = "assets/images/day/248.png";
      }
      if(num == 1261 || num == 1147){
        url = "assets/images/day/260.png";
      }
      if(num == 1195 || num == 1189 || num == 1183 || num == 1153 || num == 1150){
        url = "assets/images/day/263.png";
      }
      if(num == 1072 || num == 1171 || num == 1201 || num == 1198 || num == 1168){
        url = "assets/images/day/281.png";
      }
      if(num == 1114 || num == 1117 || num == 1204){
        url = "assets/images/day/317.png";
      }
      if(num == 1219 || num == 1213 || num == 1225){
        url = "assets/images/day/338.png";
      }
      if(num == 1237 ){
        url = "assets/images/day/350.png";
      }
      if(num == 1273 || num == 1276){
        url = "assets/images/day/389.png";
      }
      if(num == 1279 ){
        url = "assets/images/day/392.png";
      }
      if(num == 1282 ){
        url = "assets/images/day/395.png";
      }
    }else{
      url = "assets/images/night/113.png";
      if(num == 1003 ){
        url = "assets/images/night/116.png";
      }
      if(num == 1009 || num == 1006){
        url = "assets/images/night/119.png";
      }
      if(num == 1030 ){
        url = "assets/images/night/143.png";
      }
      if(num == 1243 || num == 1246 || num == 1240 || num == 1192 || num == 1180 || num == 1186 || num == 1063 ){
        url = "assets/images/night/176.png";
      }
      if(num == 1255 || num == 1258 || num == 1222 || num == 1216 || num == 1210 || num == 1066){
        url = "assets/images/night/179.png";
      }
      if(num == 1252 || num == 1249 || num == 1207 || num == 1069){
        url = "assets/images/night/182.png";
      }
      if(num == 1087 ){
        url = "assets/images/night/200.png";
      }
      if(num == 1264 || num == 1135){
        url = "assets/images/night/248.png";
      }
      if(num == 1261 || num == 1147){
        url = "assets/images/night/260.png";
      }
      if(num == 1195 || num == 1189 || num == 1183 || num == 1153 || num == 1150){
        url = "assets/images/night/263.png";
      }
      if(num == 1072 || num == 1171 || num == 1201 || num == 1198 || num == 1168){
        url = "assets/images/night/281.png";
      }
      if(num == 1114 || num == 1117 || num == 1204){
        url = "assets/images/night/317.png";
      }
      if(num == 1219 || num == 1213 || num == 1225){
        url = "assets/images/night/338.png";
      }
      if(num == 1237 ){
        url = "assets/images/night/350.png";
      }
      if(num == 1273 || num == 1276){
        url = "assets/images/night/389.png";
      }
      if(num == 1279 ){
        url = "assets/images/night/392.png";
      }
      if(num == 1282 ){
        url = "assets/images/night/395.png";
      }
    }
    return url;
  }

}