# frozen_string_literal: true

class Parent::SessionsController < Devise::SessionsController
  layout 'parent'
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end

  def after_sign_in_path_for(resource)
    parent_parents_path(resource)
  end

  def after_sign_out_path_for(resource)
    student_root_path
  end
end
