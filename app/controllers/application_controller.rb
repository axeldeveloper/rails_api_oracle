class ApplicationController < ActionController::API

    def record_not_found
        render json: {
            error: 'Usuário não encontrado' },
            status: :not_found
    end
end
