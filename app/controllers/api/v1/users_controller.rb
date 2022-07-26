# frozen_string_literal: true

module Api
  module V1
    # Class model CRUD
    class UsersController < ApplicationController

      def index
        @users = User.all
        json_response(response: @users)
      end

      def show
        json_response(response: user)
      end

      def create
        @user = User.create!(users_params)
        json_response(response: @user)
      end

      def update
        @user = user.update(users_params)
        json_response(response: @user)
      end

      def destroy
        json_response(response: user.destroy)
      end

      private

      def users_params
        params.require('user').permit(:name, :lastname, :phone, :genre)
      end

      def user
        @user ||= User.find(params.dig(:id))
      end
    end
  end
end
