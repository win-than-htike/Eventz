module EventsHelper
  def price(event)
    if event.free?
      "Free"
    else
      number_to_currency(event.price, precision: 0)
    end
  end

  def day_and_time(event)
    event.starts_at.strftime("%B %d at %I:%M %P")
  end

  def main_image(event, size: 60)
    if event.main_image.attached?
        image_tag event.main_image, size: size
    else
        image_tag "placeholder.png", size: size
    end
  end
end
