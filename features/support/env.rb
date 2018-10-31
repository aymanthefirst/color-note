require "appium_lib"
require "cucumber"
require_relative "../../lib/color_note_app"
require "etc"

def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "C:\\Users\\#{ENV['USERNAME']}\\Downloads\\colorNote.apk",
      autoGrantPermissions: "true"
    }
  }
end

Appium::Driver.new(opts, true)
Appium::promote_appium_methods(Appium)
World(ColorNoteApp)
