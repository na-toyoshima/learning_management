class Parent::SearchController < ApplicationController
  def search
    @content = params["search"]["content"]
    @records = search_for(@content)
  end

  private
    def search_for(content)
      Student.where('name LIKE ?', '%'+content+'%')
    end
end
