json.id restaurant.id
json.name restaurant.name
json.slug restaurant.slug
json.description restaurant.description
json.delivery_tax restaurant.delivery_tax
json.category_title restaurant.category.title
json.city restaurant.city
json.street restaurant.street
json.neighborhood restaurant.neighborhood
json.number restaurant.number
json.complement restaurant.complement
json.review restaurant.average_rate
json.image_url polymorphic_url(restaurant.image) if restaurant.image.attached?

json.product_categories restaurant.product_categories do |product_category|
  json.partial! 'product_categories/product_category', product_category: product_category
end