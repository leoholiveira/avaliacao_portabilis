
# Ruby on Rails Test Portabilis

This project is a Ruby on Rails that leverages the Devise framework for authentication for secure user authentication.

## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`DB_USER`
`DB_PASS`
`DB_HOST`
`DB_PORT`
`DB_NAME`

## Environment Setup

Initialize docker:

```bash
  docker-compose build
  docker-compose up
```

Ensure you have Ruby and Rails installed on your system. Install project dependencies using the following command:

```bash
  bundle install
```

Additionally, configure the database by running the following commands:

```bash
  rails db:create
  rails db:migrate
```

### Start the project:

```bash
  rails s
```

### Endpoints

- POST /api/v1/signup
```bash
  Content-Type: application/json
  {
    "user": {
      "name": "name",
      "email": "email@email.com",
      "password": "password",
      "password_confirmation": "password"
    }
  }
```

- POST /api/v1/signin
```bash
  Content-Type: application/json
  {
    "user": {
      "email": "email@email.com",
      "password": "password"
    }
  }
```

### Run test:

```bash
  rspec
```

## Contributions

Contributions are always welcome!

## Support

For support, email contatos_leo@hotmail.com.

## Tech Stack

**Server:** Ruby, Rspec, Docker.

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).

## Authors

- [@leoholiveira](https://github.com/leoholiveira)