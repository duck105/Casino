module ParticipantsHelper
  def render_participant_options
    Participant.all.collect{ |u| ["No. #{u.id} #{u.name}", u.id] }
  end
end
