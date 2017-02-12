package com.meetup.blt.foo;

public class BestJava {
    public static String greetJava(String name) {
      return "Hello " + ( name != null ? name : "World" );
    }
}
