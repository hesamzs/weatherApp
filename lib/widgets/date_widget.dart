
class GetDate {

  final now = DateTime.now();

  final months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  final days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  final dayShort = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];


  String getDayShort (int num){
    int setDay;
    if (now.weekday -1 + num < 7){
      setDay = now.weekday -1 + num;
      return dayShort[setDay];
    }else{
      setDay = now.weekday -8 + num;
      return dayShort[setDay];
    }
  }
  String getDayNumWeek (int num){
    var tomorrow = DateTime(now.year, now.month, now.day + num);
    return tomorrow.day.toString();
  }
  String getDay (){
    return days[now.weekday - 1];
  }
  String getDayForeCast (int index){
    var day = "";
    if(now.weekday + index < 7){
      day = days[now.weekday + index];
    }else{
      day = days[now.weekday - 7 + index];
    }
    return day;

  }
  String getMonth (){
    return months[now.month - 1];
  }
  String getDayNum (){
    return now.day.toString();
  }

}