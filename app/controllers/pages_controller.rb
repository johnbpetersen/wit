class PagesController < ApplicationController
  before_filter :authenticate_user!
  
  def home
  end

  def override
  end

  def contact
  end
  
  def ubuntu
  end

  def fedora
  end
end
