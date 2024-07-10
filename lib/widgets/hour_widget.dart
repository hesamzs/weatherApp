class CreateHour{
  String hour(int num,int isDay){
    String hour = "00 : 00 AM";
    String day = isDay == 0 ? "AM" : "PM";
    if (num < 10){
        hour = "0$num:00 $day";
    }else{
      hour = "$num:00 $day";
    }
    return hour;
  }
}