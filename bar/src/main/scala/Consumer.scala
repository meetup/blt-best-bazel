package com.meetup.blt.bar

import com.meetup.blt.foo.BestScala

class Consumer {
  def consume: String = BestScala.greetScala(Some("consumer"))
}
