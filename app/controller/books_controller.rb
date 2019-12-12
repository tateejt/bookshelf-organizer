class BooksController < ApplicationController

    get '/books' do 
        erb :'books/book.html'
    end

    post '/bookshelf' do 
        
    end

    get '/books/new' do 
        if !logged_in?
            redirect '/login'
        else
            redirect 'books'
        end
    end

    get '/books/:id/edit' do 
        if !logged_in?
            redirect '/login'
        else
            post = current_user.posts.find(params[:id])
            "An edit books form #{current_user.id} is editing #{post.id}"
        end
    end

end
