class StaticPagesController < ApplicationController
  before_filter :require_login, :only => :dashboard
  def home
  end
  def dashboard
  end
end
