class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  BOOK_CATEGORIES = ['Travel', 'Fantastic', 'Historic', 'Thriller', 'Self-Development', 'Children']

end
