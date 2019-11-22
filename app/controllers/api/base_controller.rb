class Api::BaseController < ApplicationController
    def res(success, data, status)
        if success
            return render json: {
                
                success: success,
                data: data
            }, status: status
        else
            return render json: {
                success: success,
                error: data
            }, status: status
        end
    end


end
