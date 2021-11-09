class HellosController < ApplicationController
    def hello
      @hellos = Hello.all
    end

    def create
      # byebug
      new_hello = Hello.new(hello_params)
      new_hello.save!
      redirect_to request.referer
    end

    private
      def hello_params
        params.require(:hello).permit(:title, :introduction)
      end
end
