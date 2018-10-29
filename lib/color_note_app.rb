require_relative "pages/home_page.rb"
require_relative "pages/notes_page.rb"

module ColorNoteApp


  def homepage
    HomePage.new($driver)
  end

  def notes_page
    NotesPage.new($driver)
  end


end
