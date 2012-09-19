class AccountsController < ApplicationController
  def index
    @accounts = Account.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @account = Account.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @account = Account.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def create
    @account = Account.new(params[:account])

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @account = Account.find(params[:id])

    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end
end
