class MoneybookController < ApplicationController
    def index
        @all_input = Moneyinput.all.reverse
    end
    
    def moneyinput
        moneyinputModel = Moneyinput.new
        moneyinputModel.date = params[:date]
        moneyinputModel.style = params[:style]
        moneyinputModel.category = params[:category]
        moneyinputModel.content = params[:content]
        moneyinputModel.price = params[:price]
        moneyinputModel.save
        redirect_to "/moneybook/index"
    end
    
    
end
