_G.nativefs = require("lib.nativefs")
_G.timer = require("lib.timer")
_G.WORK_DIR = nativefs.getWorkingDirectory()

_G.INPUT_CHANNEL = love.thread.getChannel("skyscraper-command")
_G.OUTPUT_CHANNEL = love.thread.getChannel("skyscraper-output")

_G.version = "v1.2.0"

_G.SKYSCRAPER_ERRORS = {
  "doesn't exist or can't be accessed by current user. Please check path and permissions.",
  "ScreenScraper APIv2 returned invalid / empty Json.",
  "No such file or directory",
  "cannot execute binary file: Exec format error",
  "Couldn't read artwork xml file",
  "requested either on command line or with",
  "Couldn't create cache folders, please check folder permissions and try again...",
  "Please set a valid platform with"
}
