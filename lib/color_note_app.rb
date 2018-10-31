require_relative "pages/tutorial.rb"
require_relative "pages/notes_page.rb"
require_relative "pages/themes_page.rb"
require_relative "pages/settings_page.rb"

module ColorNoteApp

  def tutorial
    Tutorial.new($driver)
  end

  def notes_page
    NotesPage.new($driver)
  end

<<<<<<< HEAD
  def themes_page
    ThemesPage.new($driver)
  end

  def settings_page
    SettingsPage.new($driver)
  end


=======
>>>>>>> notesTestsDan
end
