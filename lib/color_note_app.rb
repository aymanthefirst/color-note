require_relative "pages/tutorial.rb"
require_relative "pages/notes_page.rb"
require_relative "pages/search_bar_page.rb"

module ColorNoteApp

  def tutorial
    Tutorial.new($driver)
  end

  def notes_page
    NotesPage.new($driver)
  end

  def search_bar_page
    SearchBarPage.new($driver)
  end

end
