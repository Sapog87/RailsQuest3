class HomeController < ApplicationController

  def index
    @team1 = Character.where(team: 1)
    @team2 = Character.where(team: 2)
  end

  def knight
    p Character.create(team: 1, unit: 'knight').errors
    redirect_to :root
  end

  def mage
    p Character.create(team: 1, unit: 'mage').errors
    redirect_to :root
  end

  def medusa
    p Character.create(team: 2, unit: 'medusa').errors
    redirect_to :root
  end

  def jinn
    p Character.create(team: 2, unit: 'jinn').errors
    redirect_to :root
  end

  def ultimate_team_1
    if Character.where(team: 1, unit: :knight).count >= 2 && Character.where(team: 1, unit: :mage).count >= 2
      5.times do
        Character.create(team: 1, unit: :knight)
      end
      redirect_to :root
    end
  end

  def ultimate_team_2
    if Character.where(team: 2, unit: :jinn).count >= 2 && Character.where(team: 2, unit: :medusa).count >= 1
      Character.delete Character.where(team: 1).order(Arel.sql('RANDOM()')).take 3
    end
    redirect_to :root
  end

  def killteam2
    Character.delete Character.where(team: 2).order(Arel.sql('RANDOM()')).first
    redirect_to :root
  end

  def killteam1
    Character.delete Character.where(team: 1).order(Arel.sql('RANDOM()')).first
    redirect_to :root
  end
end