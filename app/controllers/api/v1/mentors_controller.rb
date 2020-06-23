module Api
    module V1
        class MentorsController < ApplicationController

            def index
                mentors = Mentor.order('created_at DESC')
                render json: {status: 'SUCCESS', message: 'Mentors loaded successfully', data:mentors}, status:  :ok
            end

            def show
                mentor = Mentor.find(params[:id])                
                render json: {status: 'SUCCESS', message: 'Mentor loaded successfully', data:mentor}, status:  :ok
            end

            def create
                mentor = Mentor.new(mentor_params)

                if mentor.save
                    render json: {status: 'SUCCESS', message: 'Mentor created successfully', data:mentor}, status:  :ok
                else
                    render json: {status: 'ERROR', message: "Mentor wasn't created", data:mentor.errors}, status:  :unprocessable_entity
                end
            end

            def update
                mentor = Mentor.find(params[:id])                

                if mentor.update_attributes(mentor_params)
                    render json: {status: 'SUCCESS', message: 'Mentor updated successfully', data:mentor}, status:  :ok
                else
                    render json: {status: 'ERROR', message: "Mentor wasn't updated", data:mentor.errors}, status:  :unprocessable_entity
                end
            end

            def destroy
                mentor = Mentor.find(params[:id])                
                mentor.destroy
                render json: {status: 'SUCCESS', message: 'Mentor deleted successfully', data:mentor}, status:  :ok
            end

            private 

            def mentor_params
                params.permit(:Name, :Email, :Password, :About)
            end


        end
    end
end