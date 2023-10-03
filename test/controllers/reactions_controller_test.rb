require "test_helper"

class ReactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_reaction = Reaction.new(user_id: @user.id, offer_id: @offer.id, kind: params[:kind])
  end
end
