class Parent::Base < ApplicationController
    layout 'parent'
    before_action :authenticate_parent!
end
