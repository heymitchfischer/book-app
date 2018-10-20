class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    
  end

  def create
    @author = Author.create(
                        name: params[:name],
                        biography: params[:biography],
                        image_url: params[:image_url]
                        )
    redirect_to "/authors"
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update(
                name: params[:name],
                biography: params[:biography],
                image_url: params[:image_url]
                )
    redirect_to "/authors/#{author.id}"
  end

  def destroy
    author = Author.find(params[:id])
    
    author.books.each do |book|
      book.destroy
    end

    author.destroy

    redirect_to "/authors"
  end
end
