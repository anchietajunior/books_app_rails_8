json.extract! book, :id, :title, :publication_year, :author_id, :category_id, :cover, :created_at, :updated_at
json.url book_url(book, format: :json)
