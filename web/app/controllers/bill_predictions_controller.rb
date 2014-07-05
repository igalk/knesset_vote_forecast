class BillPredictionsController < ApplicationController
  respond_to :json

  def index
    # Gather all post data
    predictions = BillPrediction.joins(:bill).select('bills.title, bills.state, bill_predictions.prediction')

    render json: predictions.as_json(except: 'id')
  end
end
