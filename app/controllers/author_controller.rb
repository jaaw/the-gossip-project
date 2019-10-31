class AuthorController < ApplicationController
    def new
        Gossip.new
    end
    def create
        Gossip.create
    end    
end
