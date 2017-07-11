class FormController < ApplicationController
  before_action :authenticate_user!
  def create
    @post = Form.new
    @post.building = params[:building]
    @post.class_num = params[:class_room]
    @post.email_id = params[:email]
    @post.phone = params[:phone]
    @post.num_of_people = params[:num_p]
    @post.date_of_rent = params[:date]
    @post.time_of_rent = params[:time]
    @post.save

    redirect_to controller: 'form', action: 'read', email_id: params[:email]
  end

  def read
    @one_post = Form.where(email_id: current_user.email).limit(1).order('created_at desc')
  end

  def edit
  end

  def destroy
    @one_post = Form.where(email_id: current_user.email).limit(1).order('created_at desc')
    @one_post.destroy
  end
end
