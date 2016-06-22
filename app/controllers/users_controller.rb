class UsersController < ApplicationController
  before_action :authenticate_employee!
end
