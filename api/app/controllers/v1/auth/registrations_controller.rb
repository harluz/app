# frozen_string_literal: true

class V1::Auth::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # 下記をコメントアウトするとエラーが発生する
  # skip_before_action :verify_authenticity_token

  # registrationは新規登録・編集・削除に関するもの

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    @user = User.new(sign_up_params)

    if @user.name.blank? || @user.email.blank? || @user.password.blank? || @user.password_confirmation.blank? || @user.password.length <= 6
      # 必須パラメータがかけているとき
      response_bad_request

    # passwordとpassword_confirmationの値が等しくないとき
    elsif @user.password != @user.password_confirmation
      response_bad_request

    else
      if User.exists?(email: @user.email)
        # 既に登録済みのメールアドレスで登録しようとした場合409
        response_conflict(:user)
      else
        if @user.save
          # ユーザー登録成功200
          response_success(:user, :create)
        else
          # 何らかの理由で失敗500
          response_internal_server_error
        end
      end
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  private
    def sign_up_params
      # params.require(:user).permit(:name, :image, :email, :password, :password_confirmation)
      params.permit(:name, :image, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:name, :image, :email)
    end
end
