class HelloPageController < ApplicationController
  def hello
  end

  def create
    Log.create(body: params[:body])
    redirect_to '/'
  end
end
