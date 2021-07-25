//+------------------------------------------------------------------+
//|                                         Find Alligator Trend.mq4 |
//|                        Copyright 2021, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

input int JawPeriod = 13;
input int JawShift = 8;
input int TeethPeriod = 8;
input int TeethShift = 5;
input int LipsPeriod = 5;
input int LipsShift = 3;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+



void OnStart()
  {
//---

        
  }
  

    
  

 
//+------------------------------------------------------------------+
double Find_Alligator_Trend(bool Trend_Up, bool Trend_Down)
{
	
   double Jaw_Curr = iAlligator(Symbol(),0,JawPeriod,JawShift,TeethPeriod,TeethShift,LipsPeriod,LipsShift,MODE_SMMA,PRICE_MEDIAN,MODE_GATORJAW,0);
   double Teeth_Curr = iAlligator(Symbol(),0,JawPeriod,JawShift,TeethPeriod,TeethShift,LipsPeriod,LipsShift,MODE_SMMA,PRICE_MEDIAN,MODE_GATORTEETH,0);
   double Lips_Curr = iAlligator(Symbol(),0,JawPeriod,JawShift,TeethPeriod,TeethShift,LipsPeriod,LipsShift,MODE_SMMA,PRICE_MEDIAN,MODE_GATORLIPS,0);
   double Jaw_Prev = iAlligator(Symbol(),0,JawPeriod,JawShift,TeethPeriod,TeethShift,LipsPeriod,LipsShift,MODE_SMMA,PRICE_MEDIAN,MODE_GATORJAW,1);
   double Teeth_Prev = iAlligator(Symbol(),0,JawPeriod,JawShift,TeethPeriod,TeethShift,LipsPeriod,LipsShift,MODE_SMMA,PRICE_MEDIAN,MODE_GATORTEETH,1);
   double Lips_Prev = iAlligator(Symbol(),0,JawPeriod,JawShift,TeethPeriod,TeethShift,LipsPeriod,LipsShift,MODE_SMMA,PRICE_MEDIAN,MODE_GATORLIPS,1);
   
   double Alligator_Trend;
   
   // buy signal 
   if(Trend_Up)
   {
      if(Jaw_Curr<Teeth_Curr && Teeth_Curr<Lips_Curr && Jaw_Curr>Jaw_Prev && Teeth_Curr>Teeth_Prev && Lips_Curr>Lips_Prev)
      Alert("Alligator looking for long trades ");
      return true; 
      
   }
   
   // sell signal
   else if(Trend_Down)
   {
       if(Jaw_Curr>Teeth_Curr && Teeth_Curr>Lips_Curr && Jaw_Curr<Jaw_Prev && Teeth_Curr<Teeth_Prev && Lips_Curr<Lips_Prev)
       Alert("Alligator looking for short trades");
       return true;
   }
   
   return Alligator_Trend;
   
}   
   
   
      
  