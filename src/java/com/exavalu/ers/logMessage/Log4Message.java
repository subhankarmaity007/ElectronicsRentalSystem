package com.exavalu.ers.logMessage;

import com.exavalu.ers.pojos.orders;
import org.apache.log4j.Logger;

import java.io.*;
import java.sql.SQLException;

public class Log4Message{

   /* Get actual class name to be printed on */
  
   
   public static void main(String[] args)throws IOException,SQLException{
        final Logger log = Logger.getLogger(orders.class.getName());
      log.debug("Hello this is new debug message");
      log.info("A new file has been added by Ankita");
   }
}