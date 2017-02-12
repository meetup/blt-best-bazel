package com.meetup.blt.foo

object BestScala {
  def greetScala(name: Option[String]): String = BestJava.greetJava(name.orNull)
  // recompilation tests for packages depending on this one
  //private val privateField: Int = 1
  //private def privateMethod(): Unit = ()
}
