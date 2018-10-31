require_relative "pages/tutorial.rb"
require_relative "pages/notes_page.rb"

module ColorNoteApp

  def tutorial
    Tutorial.new($driver)
  end

  def notes_page
    NotesPage.new($driver)
  end

end
