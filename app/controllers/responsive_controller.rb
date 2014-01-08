class ResponsiveController < ApplicationController
  helper 'partner_polling/widget'

  def index
  end

  def widget
    @demo = true

    poll = PartnerPolling::Poll.new(
      :question => "Are you worried about how Universal Credit may affect you?",
      :answer_1 => "I'm a winner",
      :answer_2 => "It doesn't really affect me"
    )
    poll.answer_3 = "It doesn't really impact me" if params[:answers].to_i > 2
    poll.answer_4 = "I don't know how it affects me" if params[:answers].to_i > 3

    @widget = PartnerPolling::Widget.new(
      :poll => poll,
      :default_call_to_action_text => "Learn more about universal credit here"
    )
    @widget.set_default_colors

    if params[:votes]
      render :template => 'partner_polling/votes/index', :layout => 'partner_polling/widget'
    else
      render :template => 'partner_polling/widgets/show', :layout => 'partner_polling/widget'
    end
  end

end
