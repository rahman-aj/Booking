module Api
    module V1
        class MenteesController < ApplicationController

            def index
                mentees = Mentee.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Mentees loaded successfully', data:mentees}, status:  :ok
            end

            def show
                mentee = Mentee.find(params[:id])                
                render json: {status: 'SUCCESS', message: 'Mentee loaded successfully', data:mentee}, status:  :ok
            end

            def create
                mentee = Mentee.new(mentee_params)

                if mentee.save
                    render json: {status: 'SUCCESS', message: 'Mentee created successfully', data:mentee}, status:  :ok
                else
                    render json: {status: 'ERROR', message: "Mentee wasn't created", data:mentee.errors}, status:  :unprocessable_entity
                end
            end

            def update
                mentee = Mentee.find(params[:id])                

                if mentee.update_attributes(mentee_params)
                    render json: {status: 'SUCCESS', message: 'Mentee updated successfully', data:mentee}, status:  :ok
                else
                    render json: {status: 'ERROR', message: "Mentee wasn't updated", data:mentee.errors}, status:  :unprocessable_entity
                end
            end

            def destroy
                mentee = Mentee.find(params[:id])                
                mentee.destroy
                render json: {status: 'SUCCESS', message: 'Mentee deleted successfully', data:mentee}, status:  :ok
            end

            private 

            def mentee_params
                params.permit(:Name, :Email, :Password)
            end


        end
    end
end