defmodule ExkillWeb.LayoutView do
  use ExkillWeb, :view

  def description do
    "Exkill is a killboard for the Massively Multiplayer Online Role Playing Game (MMORPG) EVE-Online."
  end

  def session, do: false
  def tracker_character, do: false
end
