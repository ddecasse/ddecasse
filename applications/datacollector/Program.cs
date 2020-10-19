using System;
using System.Collections;
using System.Collections.Generic;

namespace datacollector
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime dt = DateTime.Now;
            Console.WriteLine(dt.ToString());

            List<string> daynames =
                new List<string> {
                    "Sunday",
                    "Monday",
                    "Tuesday",
                    "Wednesday",
                    "Thursday",
                    "Friday",
                    "Saturday"
                };

            Console.WriteLine("The Days of the Week : ");
            foreach (string day in daynames)
            {
                Console.WriteLine (day);
            }

          DateWrite(dt);
        }   
    

    public static  void DateWrite(DateTime dtparam)
    {  
        
        Console.WriteLine($"Today : {dtparam.ToString()}");
             Console.WriteLine($"is a  {dtparam.DayOfWeek}");

    }
    }
}
