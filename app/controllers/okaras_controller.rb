class OkarasController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    def index
        @okaras = Okara.all
        @rank_okaras = Okara.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
    end

    def new
        @okara = Okara.new
      end
    
      def create
        okara = Okara.new(okara_params)
        okara.user_id = current_user.id
        if okara.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def kensaku
        if params[:search] == nil
          @okaras= Okara.all
        elsif params[:search] == ''
          @okaras= Okara.all
        else
          #部分検索
          @okaras = Okara.where("title LIKE ? ",'%' + params[:search] + '%')
        end
      end
      
      def show
        @okara = Okara.find(params[:id])
      end
      
      def edit
        @okara = Okara.find(params[:id])
      end      

      def update
        okara = Okara.find(params[:id])
        if okara.update(okara_params)
          redirect_to :action => "show", :id => okara.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        okara = Okara.find(params[:id])
        okara.destroy
        redirect_to action: :index
      end
      def top
      end
      def setumei
      end
      private
      def okara_params
        params.require(:okara).permit(:title, :gozen1, :access1, :gozen2, :access2, :gogo1, :access3, :gogo2, :access4, :yoru, :image, :Text)
      end    

end
