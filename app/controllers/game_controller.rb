class GameController < ApplicationController ## controller -- ruby looks for file that mathces the name of controller. Game controller inherits from parent class.
  def rock ## the definition/method for the action in routes
    @random_move = ["rock", "paper", "scissors"].sample
    render ({ :template => "game_templates/play_rock" }) ## this is like the erb, the template must contain the name of a .erb file that we want to use. Specify folder and file name.
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample
    render ({ :template => "game_templates/play_paper" })
  end 

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample
    render ({ :template => "game_templates/play_scissors" })
  end 
end
