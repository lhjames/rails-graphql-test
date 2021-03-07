Query exemple to sign_in user: 

```
mutation {
  signinUser(
    credentials: {
      email: "example@gmail.com",
      password: "1234"
    }
  ) {
    token
    user {
      id
    }
  }
}
```

Query exemple to create link once user is signed_in: 

```
mutation {
  createLink(
    url: "http://my-awesome-website.com",
    description: "Link to test",
  ) {
    id
    url
    description
    postedBy {
      id
      name
    }
  }
}
```
