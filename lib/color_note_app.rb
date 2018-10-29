require_relative "pages/home_page.rb"

module ColorNoteApp

  def homepage
    HomePage.new($driver)
  end

end
