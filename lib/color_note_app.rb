require_relative "pages/home_page.rb"
require_relative "pages/notes_page.rb"
require_relative "pages/themes_page.rb"

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

  def calender_page
    Calender.new($driver)
  end

end
