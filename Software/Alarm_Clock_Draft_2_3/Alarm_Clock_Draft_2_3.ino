//Digital Alarm Clock Kit
//Cyber City Circuits LLC
//By Timothy Moody - 7 July 2021

#include "RTClib.h"  //clock library
#include <TM1637Display.h>
#include "Arduino.h"
#include "SoftwareSerial.h"
#include "DFRobotDFPlayerMini.h"
#include <EEPROM.h>
SoftwareSerial mySoftwareSerial(12, 11); // RX, TX
DFRobotDFPlayerMini myDFPlayer;


//Assign Pin Names
int disp_di      =  2;
int disp_clk     =  3;
int snooze       =  4;
int set_alarm    =  6;
int alarmEnable =  7;
int minutes       =  8;
int hours         =  9;
int rtc_sqw      = 10;
int df_play_rx   = 11;
int df_play_tx   = 12;
int led          = 13;
int volume       = 14;

//variables to hold most for most recenty updated clock time values 
int previousHour;
int previousMinute;

//Set Variables For AlarmTime and play flag

int alarmHour = EEPROM.read(2);
int alarmMinute = EEPROM.read(0);

int alarmTime;
int alarmFlag = 0;

//set variables for snooze timer
int snoozeTimer;

//set variable to hold volume
float volumeValue;

//set variables for saving alarm to eeprom
int alarmSwitchState = 0;
int lastAlarmSwitchState = 0;

//eeprom addresses
int alarmMinutesEeprom = 0;
int alarmHoursEeprom = 2;




//Set up real time clock
RTC_DS3231 rtc;
//Set up the Display
TM1637Display display = TM1637Display(disp_clk, disp_di);

int wait = 100;

void setup() {
  mySoftwareSerial.begin(9600);
  Serial.begin(115200);
  pinMode(led,          OUTPUT);
  pinMode(minutes,       INPUT_PULLUP);
  pinMode(hours,         INPUT_PULLUP);
  pinMode(set_alarm,    INPUT_PULLUP);
  pinMode(alarmEnable, INPUT_PULLUP);
  pinMode(snooze,      INPUT_PULLUP);
//set up the dfplayer
if (!myDFPlayer.begin(mySoftwareSerial)) {  //Use softwareSerial to communicate with mp3.
    Serial.println(F("Unable to begin:"));
    Serial.println(F("1.Please recheck the connection!"));
    Serial.println(F("2.Please insert the SD card!"));
    while(true){
      delay(0); // Code to compatible with ESP8266 watch dog.
    }
  }
  Serial.println(F("DFPlayer Mini online."));
  
  myDFPlayer.volume(30);  //Set volume value. From 0 to 30

  
//set up the real time clock
  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    while (1);
  }
  // Check if the RTC lost power and if so, set the time
  if (rtc.lostPower()) {
    Serial.println("RTC lost power, lets set the time!");
    // The following line sets the RTC to the date & time this sketch was compiled:
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    //rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0)); adjust these when buttons are pressed 
  }

  // Set the display brightness (0-7)
  display.setBrightness(5);
  
  // Clear the display
  display.clear();
 

}

void loop() {
  


//read the real time clock and store the values into varibles
  DateTime now = rtc.now();
  previousMinute = now.hour();
  previousHour = now.minute();

  // Create time format to display
  int displaytime = (now.hour() * 100) + now.minute();
 
  //code to execute while set alarm switch is set to alarm 
  while(digitalRead(set_alarm) == HIGH){
   
    alarmTime = (alarmHour * 100) + alarmMinute;
  //display alarm time   
    display.showNumberDecEx(alarmTime, 0b11100000, true);
    delay(wait);

  //adjust alarm hours and minutes
    adjustAlarmMinutes(minutes);
    adjustAlarmHours(hours);
    alarmFlag = 0;
   
   //monitor switch alarm/time switch change and store alarm time to eprom
    alarmSwitchState = digitalRead(set_alarm);
    if(alarmSwitchState != lastAlarmSwitchState){
      Serial.println("switch changed a");
      EEPROM.write(alarmMinutesEeprom, alarmMinute);
      EEPROM.write(alarmHoursEeprom, alarmHour);

      
      }
     lastAlarmSwitchState = alarmSwitchState;
    
  
  
     delay(wait);
  }

 //code to execute while set alarm switch is set to time 
  while(digitalRead(set_alarm) == LOW){ 
    //pull current time from real time clock
    DateTime now = rtc.now();
    //calculate display time the *100 is used for hours because the number is technically a 4 digit number
    displaytime = (now.hour() * 100) + now.minute();
    //display clock time on screen
    display.showNumberDecEx(displaytime, 0b11100000, true);
    delay(wait);
    
    
       
        
        //check to see if time has Changed if so update the display
    if(previousHour != now.hour() || previousMinute != now.minute()){
        display.clear();
        delay(wait);
        display.showNumberDecEx(displaytime, 0b11100000, true);
        previousHour = now.hour();
        previousMinute = now.minute();
        }
    
    //Adjust Minute/Hour Values   
    adjustMinute(minutes);    
    adjustHour(hours); 

    //check to see if time matches alarm and if so sound alarm
    checkAlarm(alarmEnable);
    
    // read potentiometer for volume level
    changeVolume(volume);
    Serial.println(volumeValue);
    myDFPlayer.volume(volumeValue);
    snoozeCheck(snooze);
    alarmSwitchState = digitalRead(set_alarm);
    if(alarmSwitchState != lastAlarmSwitchState){
      Serial.println("switch changed b");
      EEPROM.write(alarmMinutesEeprom, alarmMinute);
      EEPROM.write(alarmHoursEeprom, alarmHour);
      }
    lastAlarmSwitchState = alarmSwitchState;
     //toggle led when the alarm is on  
    if (digitalRead(set_alarm) == LOW && digitalRead(alarmEnable) == LOW && now.minute() == alarmMinute && now.hour() == alarmHour  && alarmFlag == 1){
      togglePin(led);
      delay(wait);
      togglePin(led);
      delay(wait);
      togglePin(led);
      delay(wait);
      togglePin(led);
      delay(wait);
      togglePin(led);
      delay(wait);
      togglePin(led);
      delay(wait);
     }
  
  }

}





void togglePin(int pinName){
  boolean pinState = digitalRead(pinName);
  if(pinState == true){
    digitalWrite(pinName, false);
  }
  else{
    digitalWrite(pinName, true);
  }
}

//Adjust Clock Minute when switch is set to time
void adjustMinute(int pinName){
  DateTime now = rtc.now();
  int minuteVal = digitalRead(pinName);
      if (minuteVal == LOW) {
        previousMinute = (previousMinute + 1);
        // make sure that the minites cycle back to 0 when you get to 60
        if(previousMinute >= 60){
          previousMinute = 0;}
        rtc.adjust(DateTime(2014, 1, 21, now.hour(), previousMinute, 0));
    } 

    
     }

//Adjust Clock Hour when switch is set to time
void adjustHour(int pinName){
  
  DateTime now = rtc.now();
  int hourVal = digitalRead(pinName);
  if (hourVal == LOW) {
    previousHour = (previousHour + 1);
// make sure that the minites cycle back to 0 when you get to 25
    if(previousHour >= 25){
      previousHour = 0;
      }
   rtc.adjust(DateTime(2014, 1, 21, previousHour, now.minute(), 0)); 
    }
} 



//check to see if alarm is enabled and the time matches, if so sound alarm 
void checkAlarm(int pinName){
  DateTime now = rtc.now();
  int alarmSwitch = digitalRead(pinName);
  if (alarmSwitch == LOW && now.minute() == alarmMinute && now.hour() == alarmHour  && alarmFlag == 0){
   Serial.println("Alarm BEEP BEEP BEEP");
   myDFPlayer.play(1);
   alarmFlag = 1;
 
   
       }
       //if the alarm is 
  if (alarmSwitch == HIGH){
     myDFPlayer.pause();
     
  }
  
         }



//adjust alarm minutes when switch set to alarm
void adjustAlarmMinutes(int pinName){
  int minuteVal = digitalRead(pinName);
  if (minuteVal == LOW) {
    
     alarmMinute = alarmMinute + 1;
     if(alarmMinute >= 60){
        alarmMinute = 0;
      }
  } 
 }




//adjust alarm hours when switch set to alarm
void adjustAlarmHours(int pinName){
  int hourVal = digitalRead(pinName);
  if (hourVal == LOW) {
    alarmHour = alarmHour +1;
    if(alarmHour >= 24){
      alarmHour = 0;
        }
   } 

}


void snoozeCheck(int pinNameSnooze){ 
  
  int snoozeVal = digitalRead(pinNameSnooze);
  if (snoozeVal == LOW){
    
    snoozeTimer = alarmMinute;
    if (alarmFlag == 1){
      myDFPlayer.pause();
      alarmMinute = snoozeTimer + 5;
    
      alarmFlag = 0;
      myDFPlayer.pause();
      //increment hour and calculate minutes if snooze time puts minutes past 59
      if(alarmMinute > 59){
        alarmMinute = (alarmMinute - 59);
        alarmHour = alarmHour + 1;
      }
    }



    
  }
  

}


//Change the volume for the dfplayer
void changeVolume(int pinName){

  
 
  volumeValue = ((analogRead(pinName)) * 30.00) / 1024;
  
}





      
      
