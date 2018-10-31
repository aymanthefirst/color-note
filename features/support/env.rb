require "appium_lib"
require "cucumber"
require_relative "../../lib/color_note_app"

def opts
  {
    caps: {
    platformName: "Android",
    deviceName: "emulator-5554",
<<<<<<< HEAD
    app: "C:\\Users\\tech-w90\\Downloads\\colorNote.apk",
=======
    app: "C:\\Users\\TECH-W80.LAPTOP-HHQKO8FF\\Downloads\\colorNote.apk",
>>>>>>> d705ded545d75058fc3509bf738a87495b529e9c
    autoGrantPermissions: "true"
  }
}

end

Appium::Driver.new(opts, true)
Appium::promote_appium_methods(Appium)
World(ColorNoteApp)
