# frozen_string_literal: true

class V1::Auth::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # sessionはログイン・ログアウトに関係するもの

  # GET /resource/sign_in
  def new
    personal = { "name" => "Yamada", "old" => 28 }

    render json: personal
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
