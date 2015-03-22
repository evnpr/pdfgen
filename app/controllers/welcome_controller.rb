class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      @image_url = "https://qiscus.s3.amazonaws.com/e@qiscus.com/1976/a3c3e6f062e9a52d9e44cf213410b29b/300-x-300-qiscus-icon.png"
      format.html
      format.pdf do
        render :pdf => "invoice",
               :template => 'show.pdf.erb'
      end
    end
  end
end
