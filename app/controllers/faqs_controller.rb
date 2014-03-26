class FaqsController < ApplicationController

  def new
  end

  def create
  end

  def index
  end

  def destroy
  end

  private

  def faqs
    Faq.all
  end
  helper_method :faqs

end
