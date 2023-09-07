class ReactionsController < ApplicationController
        before_action :authenticate_user!

        def user_reaction
        @user = current_user
        @offer = Offer.find(params[:offer_id])
        reaction = Reaction.find_by(user_id: @user.id, offer_id: @offer.id)
        respond_to do |format|
        if reaction
        format.html { redirect_to offer_path(@offer), notice: 'Ya postulaste a este trabajo' }
        else
        @new_reaction = Reaction.new(user_id: @user.id, offer_id: @offer.id, kind: params[:kind])
        if @new_reaction.save!
        format.html { redirect_to offer_path(@offer), notice: "#{current_user.email} Postulación exitosa" }
        else
        format.html { redirect_to offer_path(@offer), status: :unprocessable_entity, notice: "Postulación erronea"}
        end
        end
        end
        end

        def offer_with_reactions
                @reactions = current_user.reactions
                offer_ids = @reactions.map(&:offer_id)
                @offer = Offer.where(id: offer_ids)
        end
end