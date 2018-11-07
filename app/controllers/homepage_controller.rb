class HomepageController < ApplicationController
  
  def index
  @articles = Article.all
  end

  def slayer_png
	send_file(
		"#{Rails.root}/app/assets/images/The_Slayer_King.png",
		filename: "Slayer_CTF.png",
		type: "application/png"
	)
  end
	
end
