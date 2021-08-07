Feature: Get user blog posts
  As an admin
  I should be able to retrieve post created by users

  @Id=3.1 @SmokeTest
  Scenario: "Get user posts" response schema should match with specification
    Given "Delphine" has few post to her name in the blog
    When I call the endpoint to get posts by the user
    Then the schema should match with the specification defined in "user_posts.json"

  @Id=3.2
  Scenario: Should be able to retrieve user posts
    Given "Delphine" has few post to her name in the blog
    When I call the endpoint to get posts by the user
    Then all posts by the user should be returned

  @Id=3.3
  Scenario: Empty response should be returned while searching with invalid userid
    When I call the endpoint to get posts by the user with invalid user id
    Then empty response should be returned