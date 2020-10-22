using System;
using System.Collections;
using System.Collections.Generic;

namespace datacollector
{
    class Program
    {
        public delegate  void MyDelegate(string msg);

        static void Main(string[] args)
        {
        MyDelegate del = MethodManager.MySimpleMethod;
        //InvokeDelegate(del);
         del.Invoke("So simple");

        del = MethodManager.MyNotSoSimpleMethod;
        del.Invoke("Not so simple");
        //InvokeDelegate(del);

        del = (string msg) => Console.WriteLine("Called lambda expression: " + msg);
        InvokeDelegate(del);
           
           
           
           
          // MyDelegate del = new MyDelegate(MySimpleMethod());
            // or 
            //MyDelegate del = MethodA; 
            // or set lambda expression 
           // MyDelegate del = (string msg) =>  Console.WriteLine(msg);

           //del.Invoke("test");

//DateWrite(DateTime.Now);
        }   

    static void InvokeDelegate(MyDelegate del) // MyDelegate type parameter
    {
       // del("Hello World");
       InvokeDelegate(del,"Hello Nurse");
    }
    
   static void InvokeDelegate(MyDelegate del,string message) // MyDelegate type parameter
    {
        del(message);
    }
    public static  void DateWrite(DateTime dtparam)
    {           
            Console.WriteLine(dtparam.ToString());

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
        
        Console.WriteLine($"Today : {dtparam.ToString()}");
             Console.WriteLine($"is a  {dtparam.DayOfWeek}");

    }



//  

    } // end of Program class
} // end of namespace 
