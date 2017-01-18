package com.meetup.blt

object BestScala {
  def greetScala(name: Option[String]): String = BestJava.greetJava(name.orNull)
}
