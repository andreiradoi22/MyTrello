module Api
  module V1
    class CardsController < ApplicationController
      def index
        cards = Card.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded cards', data: cards}, status: :ok
      end

      def show
        card = Card.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded card', data: card}, status: :ok
      end

      def create
        card = Card.new(card_params)

        if card.save
          render json: {status: 'SUCCESS', message: 'Saved card', data: card}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Card not saved', data: card.errors}, status: unprocessable_entity
        end
      end

      def destroy
        card = Card.find(params[:id])
        card.destroy
        render json: {status: 'SUCCESS', message: 'Deleted card', data: card}, status: :ok
      end

      def update
        card = Card.find(params[:id])
        if card.update_attributes(card_params)
          render json: {status: 'SUCCESS', message: 'Updated card', data: card}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Card not updated', data: card.errors}, status: unprocessable_entity
        end
      end

      private

      def card_params
        params.permit(:title, :body)
      end
    end
  end
end