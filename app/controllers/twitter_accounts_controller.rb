class TwitterAccountsController < ApplicationController
  before_action :set_twitter_account, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  def new
    @twitter_account = TwitterAccount.new
  end

  def edit
  end

  def create
    @twitter_account = TwitterAccount.new(params[:twitter_account])
    @twitter_account.user_id =current_user.id
    if @twitter_account.save
      redirect_to twitter_list_path, notice: 'Twitter account was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @twitter_account.update(params[:twitter_account])
      redirect_to twitter_list_path, notice: 'Twitter account was successfully updated.'
    end
  end

  def destroy
    @twitter_account.destroy
    redirect_to twitter_list_path
  end

  private

    def set_twitter_account
      @twitter_account = TwitterAccount.find(params[:id])
    end

end
