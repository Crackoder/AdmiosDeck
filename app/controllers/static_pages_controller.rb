class StaticPagesController < ApplicationController
  before_filter :require_login, :only => [:dashboard, :twitter_list]

  def home
  end

  def dashboard
  end

  def twitter_list
  	@twitter_accounts = TwitterAccount.where(user_id = current_user.id)
  end
  
end
