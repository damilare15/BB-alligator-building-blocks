//+------------------------------------------------------------------+
//|                                        Awesomecustomfunction.mqh |
//|                        Copyright 2021, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property strict
#include <Awesomecustomfunction.mqh>

//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+


void Awesome_CandleStick_Movements()
{
   Alert("");
   
   bool Signal_Bullish = false;
   bool Signal_Bearish = false;
         
   // buy signal         
   // if previous candlestick is bearish and current candlestick is bullish
   if((Open[1] - Close[1]) > 0 && (Close[0] - Open[0]) > 0 )
   {
      Signal_Bullish = true;
      Alert("signal is bearish");
   }  
   
   //sell signal
   // if previous candlestick is bullish and current candlestick is bearish
   if( (Close[1] - Open[1]) > 0 && (Open[0] - Close[0]) > 0)
   {
      Signal_Bearish = true;
      Alert("signal is bullish");
   }
      
   
}   


void Awesome_Entry_Signal()
{
   bool Signal_Long = false;
   bool Signal_Short = false;
   
   double Awesome_curr = iAO(NULL,0,0);//current
   double Awesome_prev = iAO(NULL,0,1);//previous
   double Baseline = iMA(NULL,0,13,8,MODE_SMA,PRICE_MEDIAN,0);
   
   
   if(Awesome_curr > Awesome_prev && Bid > Baseline)// buy signal
   {
     Signal_Long = true; 
     Alert("signal is bullish");
   }
   if(Awesome_curr < Awesome_prev && Bid  < Baseline)// sell signal
   {
      
      Signal_Short = true;
      Alert("signal is bearish");
   }
   
   
      
}

      
      