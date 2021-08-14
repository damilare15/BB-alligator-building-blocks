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




      
      
double Awesome_First_Entry(bool isLong)
{
    double Awesome_curr = iAO(NULL,0,0);
    double Awesome_prev = iAO(NULL,0,1);


    double Awesome_Entry_One;
    if(isLong) // buy signal 
    {
      // if awesome oscillator crosses to the upside
      if(Awesome_prev < 0 && Awesome_curr > 0)
      
      return true;
    }
    
    else // sell signal
    {
      // if awesome oscillator crosses to the downside
      if(Awesome_prev > 0 && Awesome_curr < 0)
      
      return true;
    }
    
    return Awesome_Entry_One;
}



double Awesome_CandleStick_Movements(bool is_Signal_Bullish)
{

   double open_curr = iOpen(_Symbol,0,0);
   double close_curr = iClose(_Symbol,0,0);
   double open_prev = iOpen(_Symbol,0,1);
   double close_prev = iClose(_Symbol,0,1);
   
   double CandleStick_Entries;
   
   if(is_Signal_Bullish) // buy signal
   {
      // if previous candlestick is bearish and current candlestick is bullish
      if((open_prev - close_prev) > 0 && (close_curr - open_curr) < 0)
      
      return true;

   }
   else //sell signal
   {
      // if previous candlestick is bullish and current candlestick is bearish
      if((close_prev - open_prev) < 0 && (open_curr - close_curr) > 0)
      
      return true;
   }
   return CandleStick_Entries;
}   
      
      
      
double Awesome_Second_Entry(bool isLong)
{
    double Awesome_curr = iAO(NULL,0,0);
    double Awesome_prev = iAO(NULL,0,1);
    
    double Awesome_Entry_One;
    if(isLong)// buy signal
    {
      // if awesome prev and awesome curr are above zero and awesome candlemovements is long
      if((Awesome_prev && Awesome_curr) > 0 && Awesome_CandleStick_Movements(true))
      
      return true;
    }
    
    else // if awesome prev and awesome curr are below zero and awesome candlemovements is short
    {
      if((Awesome_prev && Awesome_curr) < 0 && Awesome_CandleStick_Movements(false))
      
      return true;
    }
    
    return Awesome_Entry_One;

}