package com.meetup.blt.foo

import org.scalatest._

class BestTest extends FunSpec with Matchers {
  describe("Best") {
    it ("greets you with a known name") {
      BestScala.greetScala(Some("best")) shouldBe("Hello best")
    }

    it ("greet you with an unknown name") {
      BestScala.greetScala(None) shouldBe("Hello World")
    }
  }
}
