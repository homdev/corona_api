class SurveysController < ApplicationController


    def index
       @total_score = sum_score
       render :json => {totale_score: @total_score}

    end

    def sum_score
        params[:q1].to_i + params[:q2].to_i + params[:q3].to_i + params[:q4].to_i
    end


end
