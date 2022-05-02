class Bird < ApplicationRecord

    def create
        bird = Bird.create!(bird_params)
        render json: bird, status: :created
      end

      def update
        bird = find_bird
        bird.update!(bird_params)
        render json: bird
      end

end
