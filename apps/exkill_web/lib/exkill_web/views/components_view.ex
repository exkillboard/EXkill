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

  @spec kb_date_format(DateTime.t) :: String.t
  def kb_date_format(datetime) do
    iso_month_name(datetime.month) <>
    " " <>
    Integer.to_string(datetime.day) <>
    ", " <>
    Integer.to_string(datetime.year)
  end

  @spec kb_time_format(DateTime.t) :: String.t
  def kb_time_format(datetime) do
    zero_pad_int_string(datetime.hour) <> ":" <> zero_pad_int_string(datetime.minute)
  end

  defp zero_pad_int_string(num) do
    num |> Integer.to_string() |> String.pad_leading(2, "0")
  end

  defp iso_month_name(1), do: "Jan"
  defp iso_month_name(2), do: "Feb"
  defp iso_month_name(3), do: "Mar"
  defp iso_month_name(4), do: "Apr"
  defp iso_month_name(5), do: "May"
  defp iso_month_name(6), do: "Jun"
  defp iso_month_name(7), do: "Jul"
  defp iso_month_name(8), do: "Aug"
  defp iso_month_name(9), do: "Sep"
  defp iso_month_name(10), do: "Oct"
  defp iso_month_name(11), do: "Nov"
  defp iso_month_name(12), do: "Dec"
end
