class ForumsController < InheritedResources::Base

  private

    def forum_params
      params.require(:forum).permit(:question, :answer)
    end
end

