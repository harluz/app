# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Rails-apiでCookieを使用する
  include ActionController::Cookies
  # APIではCSRFチェックをしない
  # skip_before_action :verify_authenticity_token, if: :sessions_controller?
  # 例外を発生させることでCSRF攻撃を防ぐ
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      added_attrs = [ :name, :email, :password, :password_confirmation ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    end

    # 200 Success
    # リクエストに成功した場合
    def response_success(class_name, action_name)
      render status: 200, json: { status: 200, message: "Success #{class_name.capitalize} #{action_name.capitalize}" }
    end

    # 400 Bad Request
    # リクエストに必要なパラメータが欠けていた場合
    def response_bad_request
      render status: 400, json: { status: 400, message: "Bad Request" }
    end

    # 401 Unauthorized
    # トークンの認証が不正だった場合
    def response_unauthorized
      render status: 401, json: { status: 401, message: "Unauthorized" }
    end

    # 404 Not Found
    # 取得しようとしたデータが削除されていた場合
    def response_not_found(class_name = "page")
      render status: 404, json: { status: 404, message: "#{class_name.capitalize} Not Found" }
    end

    # 409 Conflict
    # DBに重複するデータを格納しようとした場合
    def response_conflict(class_name)
      render status: 409, json: { status: 409, message: "#{class_name.capitalize} Conflict" }
    end

    # 500 Internal Server Error
    # DBやNWで障害が発生した場合
    def response_internal_server_error
      render status: 500, json: { status: 500, message: "Internal Server Error" }
    end
end
