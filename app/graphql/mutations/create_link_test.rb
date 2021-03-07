require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(args)
  end

  test 'create a new link' do
    link = perform(
      url: 'http://example.com',
      description: 'description',
    )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
  end
end

# Query exemple to create link once user is signed_in: 

# mutation {
#   createLink(
#     url: "http://my-awesome-website.com",
#     description: "Link to test",
#   ) {
#     id
#     url
#     description
#     postedBy {
#       id
#       name
#     }
#   }
# }