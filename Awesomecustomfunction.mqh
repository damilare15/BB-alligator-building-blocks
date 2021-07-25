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

// buy signal if prev_Candle_Bearish and Curr_Candle_Bullish
// sell signal if Prev_Candle_Bullish and Curr_Candle_Bullish

double get_Prev_Candle(bool Prev_Candle_Bearish, bool Prev_Candle_Bullish)
{
   double Prev_Candle;
   if(Prev_Candle_Bearish) 
   {
      if((Open[1] - Close[1]) > 0) 
      
      return true;
   }
   
   else if(Prev_Candle_Bullish)
   {
      if((Close[1] - Open[1]) < 0)
      
      return true;
   }
   
   return Prev_Candle;
}
      
double get_Curr_Candle(bool Curr_Candle_Bearish, bool Curr_Candle_Bullish)
{
   double Curr_Candle;
   if(Curr_Candle_Bearish)
   {
      if((Open[0] - Close[0]) > 0)
      
      return true;
   }
   else if(Curr_Candle_Bullish)
   {
      if((Close[0] - Open[0]) < 0)
      
      return true;
   }
   
   return Curr_Candle;
}      
      
    
      
      