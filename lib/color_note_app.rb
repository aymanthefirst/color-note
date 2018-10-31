require_relative "pages/home_page.rb"
require_relative "pages/notes_page.rb"
require_relative "pages/themes_page.rb"
require_relative "pages/settings_page.rb"
require_relative "pages/calendar_page.rb"

module ColorNoteApp

  def homepage
    HomePage.new($driver)
  end

  def notes_page
    NotesPage.new($driver)
  end

  def themes_page
    ThemesPage.new($driver)
  end

  def calendar_page
    CalendarPage.new($driver)
  end

  def settings_page
    SettingsPage.new($driver)
  end


end
