class HobbiesController < ApplicationController
    # 一覧表示
    def index
      @hobbies = Hobby.all
    end