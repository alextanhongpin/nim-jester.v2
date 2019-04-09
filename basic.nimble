# Package

version       = "0.1.0"
author        = "alextanhongpin"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["basic"]


# Dependencies

requires "nim >= 0.19.4"

task start, "Start the app":
  exec "nim c -r src/basic.nim"
