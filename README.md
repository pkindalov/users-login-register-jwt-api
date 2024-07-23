# Users Login Register JWT API

The "Users Login Register JWT API" project provides an API for user registration, login, and profile management using JWT for authentication.

## Endpoints

### User Registration and Login

- `POST /api/v1/register`
  - Registers a new user.
  - Request body: ` {"user": {
        "email": "test.email@sub.domain.com",
        "password": "123456"
    }}`

    ```sh
    curl "http://localhost:3000/api/v1/register" --header "Content-Type: application/json" --data-raw "{\"user\": {\"email\": \"test.email@sub.domain.com\", \"password\": \"123456\"}}"
    ```

- `POST /api/v1/login`
  - Logs in an existing user.
  - Request body: `{ "email": "user@example.com", "password": "password123" }`

 ```sh
curl "http://localhost:3000/api/v1/login" --header "Content-Type: application/json" --data-raw "{\"email\": \"test@abv.bg\", \"password\": \"123456\"}"
```

### Profile Management

- `PUT /api/v1/profile`
  - Updates the user profile.
  - Request body: `{ "email": "newemail@example.com", "password": "newpassword123" }`

- `DELETE /api/v1/profile`
  - Deletes the user profile.

- `DELETE /api/v1/profile/avatar`
  - Deletes the user's avatar.

### User List

- `GET /api/v1/users/list`
  - Returns a list of all users.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/<username>/users-login-register-jwt-api.git
   cd users-login-register-jwt-api
