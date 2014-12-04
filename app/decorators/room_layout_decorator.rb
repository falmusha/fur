class RoomLayoutDecorator < Draper::Decorator
  delegate_all

  def as_json(options = {})
    {
      id: model.id,
      project_id: model.project_id,
      name: model.name,
      description: model.description,
      width: model.width,
      height: model.height,
      image_url: image_url,
      thump_url: thumb_url
    }
  end

  def image_url
    object.blueprint.url
  end

  def thumb_url
    object.blueprint.url(:thumb)
  end

end
