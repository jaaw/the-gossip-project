class WelcomeController < ApplicationController
  def first_name
    @user = User.first
    @user = User.title
  end
end
