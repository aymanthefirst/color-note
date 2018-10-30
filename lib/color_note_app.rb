require_relative "pages/home_page.rb"
require_relative "pages/notes_page.rb"
require_relative "pages/themes_page.rb"
require_relative "pages/settings_page.rb"

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

<<<<<<< HEAD
  def calender_page
    Calender.new($driver)
  end
=======
  def settings_page
    SettingsPage.new($driver)
  end

>>>>>>> f56f350a80bc4a75356708273e0a454a1520329c

end
