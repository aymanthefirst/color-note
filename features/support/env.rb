require "appium_lib"
require "cucumber"
require_relative "../../lib/color_note_app"

def opts
  {
    caps: {
    platformName: "Android",
    deviceName: "emulator-5554",
    app: "C:\\Users\\TECH-W85\\Downloads\\colorNote.apk"
  }
}

end

Appium::Driver.new(opts, true)
Appium::promote_appium_methods(Appium)
World(BudgetApp)
