String convert24To12Hour(int hour, int minute, int second) {
 String result;

 if (hour == 0) {
    result = '12:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')} AM';
 } else if (hour == 12) {
    result = '12:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')} PM';
 } else if (hour > 12) {
    result = '${hour - 12}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')} PM';
 } else {
    result = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')} AM';
 }

 return result;
}

void main() {
 int hour = 12;
 int minute = 05;
 int second = 45;
 String convertedTime = convert24To12Hour(hour, minute, second);
 print('The converted time is $convertedTime');
}
