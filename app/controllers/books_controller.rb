class BooksController < ApplicationController
  def index
    @books = Books.all
  end

  def new
    @authors = Author.all
  end

  def create
    @book = Book.create(
                        name: params[:name],
                        description: params[:description],
                        image_url: params[:image_url],
                        author_id: params[:author_id]
                        )
    redirect to "/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(
                name: params[:name],
                description: params[:description],
                image_url: params[:image_url],
                author_id: params[:author_id]
                )
    redirect_to "/books/#{book.id}"
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy

    redirect_to "/books"
  end
end
