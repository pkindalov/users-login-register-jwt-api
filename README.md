# Users Login Register JWT API

The "Users Login Register JWT API" project provides an API for user registration, login, and profile management using JWT for authentication.

## Endpoints

### User Registration and Login

- `POST /register`
  - Registers a new user.
  - Request body: `{ "email": "user@example.com", "password": "password123" }`

- `POST /login`
  - Logs in an existing user.
  - Request body: `{ "email": "user@example.com", "password": "password123" }`

### Profile Management

- `PUT /profile`
  - Updates the user profile.
  - Request body: `{ "email": "newemail@example.com", "password": "newpassword123" }`

- `DELETE /profile`
  - Deletes the user profile.

- `DELETE /profile/avatar`
  - Deletes the user's avatar.

### User List

- `GET /users/list`
  - Returns a list of all users.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/<username>/users-login-register-jwt-api.git
   cd users-login-register-jwt-api
