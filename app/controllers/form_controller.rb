class FormController < ApplicationController
  before_action :authenticate_user!
  def create
    @post = Form.new
    @post.building = params[:building]
    @post.class_num = params[:class_room]
    @post.email_id = params[:email]
    @post.phone = params[:phone]
    @post.num_of_people = params[:num_p]
    @post.date_of_start = params[:date_s]
    @post.date_of_end = params[:date_e]
    @post.save

    redirect_to controller: 'form', action: 'read', email_id: params[:email]
  end

  def read
    @one_post = Form.where(email_id: current_user.email).limit(1).order('created_at desc')
  end

  def edit
    @one_post = Form.find(params[:form_id])
  end

  def editview
    @one_post = Form.find(params[:form_id])
    @one_post.building = params[:building]
    @one_post.class_num = params[:class_room]
    @one_post.email_id = params[:email]
    @one_post.phone = params[:phone]
    @one_post.num_of_people = params[:num_p]
    @one_post.date_of_start = params[:date_s]
    @one_post.date_of_end = params[:date_e]
    @one_post.save

    redirect_to '/form/read'
  end

  def destroy
    @one_post = Form.find(params[:form_id])
    @one_post.destroy
  end
end
