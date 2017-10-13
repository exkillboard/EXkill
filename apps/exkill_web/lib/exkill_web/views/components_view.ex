defmodule ExkillWeb.ComponentsView do
  use ExkillWeb, :view

  @image_server_url "https://imageserver.eveonline.com/"

  @image_server_type_path %{
    image_character: "Character/",
    image_corporation: "Corporation/",
    image_alliance: "Alliance/",
    image_item: "Type/",
    image_ship: "Render/"
  }
  def image_url(type, id, size) do
    source = @image_server_url <> @image_server_type_path[type]
    "#{source}#{id}_#{size}.png"
  end
end
