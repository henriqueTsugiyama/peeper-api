class TopicsController < ApplicationController
    def index
        @topics = Topic.all
    end

    def show
        @topic = Topic.find(params[:id])
    end

    def new
        @topic = Topic.new
    end

    def create
        topic_params = params.require(:topic).permit(:titulo)
        @topic = Topic.new(topic_params)
        if @topic.save
            redirect_to topic_url(@topic)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @topic = Topic.find(params[:id])
    end
end