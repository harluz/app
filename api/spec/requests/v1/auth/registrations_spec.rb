require "rails_helper"

RSpec.describe "V1::Auth::Registrations", type: :request do
  describe "ユーザー登録" do
    # before { post v1_user_registration_path, params: { user: attributes_for(:user) } }
  #   let(:user) { create(:user) }
  #   let(:user_params) { attributes_for(:user) }
  #   let(:non_name_user_params) { attributes_for(:user, name: "") }
  #   let(:non_email_user_params) { attributes_for(:user, email: "") }
  #   let(:duplicate_email_user_params) { attributes_for(:duplicate_email_user) }
  #   let(:non_password_user_params) { attributes_for(:user, password: "") }
  #   let(:less_string_password_user_params) { attributes_for(:user, password: "a" * 6) }
  #   let(:non_password_confirmation_user_params) { attributes_for(:user, password_confirmation: "") }

  #   context "パラメータが妥当な場合" do
  #     it "リクエストが成功すること" do
  #       post v1_user_registration_path, params: { user: user_params }
  #       expect(response.status).to eq 200
  #     end

  #     it "createが成功すること" do
  #       expect do
  #         post v1_user_registration_path, params: { user: user_params }
  #       end.to change(User, :count).by 1
  #     end
  #   end

  #   context "パラメータが不正な場合" do
  #     context "名前が空のとき" do
  #       it "リクエストが失敗すること" do
  #         post v1_user_registration_path, params: { user: non_name_user_params }
  #         expect(response.status).to eq 400
  #       end

  #       it "createが失敗すること" do
  #         expect do
  #           post v1_user_registration_path, params: { user: non_name_user_params }
  #         end.to_not change(User, :count)
  #       end
  #     end

  #     context "emailが空のとき" do
  #       it "リクエストが失敗すること" do
  #         post v1_user_registration_path, params: { user: non_email_user_params }
  #         expect(response.status).to eq 400
  #       end

  #       it "createが失敗すること" do
  #         expect do
  #           post v1_user_registration_path, params: { user: non_email_user_params }
  #         end.to_not change(User, :count)
  #       end
  #     end

  #     context "emailが重複しているとき" do
  #       before do
  #         post v1_user_registration_path, params: { user: duplicate_email_user_params }
  #       end

  #       it "リクエストが失敗すること" do
  #         post v1_user_registration_path, params: { user: duplicate_email_user_params }
  #         expect(response.status).to eq 409
  #       end

  #       it "createが失敗すること" do
  #         expect do
  #           post v1_user_registration_path, params: { user: duplicate_email_user_params }
  #         end.to_not change(User, :count)
  #       end
  #     end

  #     context "passwordが空のとき" do
  #       it "リクエストが失敗すること" do
  #         post v1_user_registration_path, params: { user: non_password_user_params }
  #         expect(response.status).to eq 400
  #       end

  #       it "createが失敗すること" do
  #         expect do
  #           post v1_user_registration_path, params: { user: non_password_user_params }
  #         end.to_not change(User, :count)
  #       end
  #     end

  #     context "passwordが６文字のとき" do
  #       it "リクエストが失敗すること" do
  #         post v1_user_registration_path, params: { user: less_string_password_user_params }
  #         expect(response.status).to eq 400
  #       end

  #       it "createが失敗すること" do
  #         expect do
  #           post v1_user_registration_path, params: { user: less_string_password_user_params }
  #         end.to_not change(User, :count)
  #       end
  #     end

  #     context "password_confirmationが空のとき" do
  #       it "リクエストが失敗すること" do
  #         post v1_user_registration_path, params: { user: non_password_confirmation_user_params }
  #         expect(response.status).to eq 400
  #       end

  #       it "createが失敗すること" do
  #         expect do
  #           post v1_user_registration_path, params: { user: non_password_confirmation_user_params }
  #         end.to_not change(User, :count)
  #       end
  #     end
  #   end
  end
end
