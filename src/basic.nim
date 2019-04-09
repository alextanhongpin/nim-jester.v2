# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import service/[service, controller]
import asyncdispatch, jester, os, strutils

settings:
  port = Port(8080)
  # appName = "/foo"
  bindAddr = "0.0.0.0"

router routes:
  extend controller, "/books"
  get "/":
    resp "hello world"

proc main() =
  var jester = initJester(routes, settings=settings)
  jester.serve()

when isMainModule:
  main()
