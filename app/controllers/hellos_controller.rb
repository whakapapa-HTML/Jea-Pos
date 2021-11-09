class HellosController < ApplicationController
    def hello
      @hellos = Hello.all
    end
end
