require_relative "pages/tutorial.rb"
require_relative "pages/notes_page.rb"
require_relative "pages/search_bar_page.rb"
require_relative "pages/calendar_page.rb"
require_relative "pages/archive_page.rb"

module ColorNoteApp

  def tutorial
    Tutorial.new($driver)
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

  def archive_page
    ArchivePage.new($driver)
  end

  def settings_page
    SettingsPage.new($driver)
  end

  def search_bar_page
    SearchBarPage.new($driver)
  end

end
