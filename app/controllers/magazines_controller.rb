class MagazinesController < InheritedResources::Base

  private

    def magazine_params
      params.require(:magazine).permit(:name, :month, :year)
    end

end
