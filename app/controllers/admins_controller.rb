class AdminsController < ApplicationController
  before_filter :authenticate_admin!, only: "index"
  before_filter :authenticate_admin!, only: "new"
  before_filter :authenticate_admin!, only: "edit"
end
