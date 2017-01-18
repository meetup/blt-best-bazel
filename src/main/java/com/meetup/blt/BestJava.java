package com.meetup.blt;

public class BestJava {
    public static String greetJava(String name) {
      return "Hello " + ( name != null ? name : "World" );
    }
}
