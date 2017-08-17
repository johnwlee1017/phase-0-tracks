What are some common HTTP status codes?
- Status codes fall into classes: informational (1xx), success (2xx), redirection (3xx), client errors (4xx), server errors (5xx).
- Common error codes: 403 (Forbidden), 404 (Not Found), 500 (Internal Server Error), 503 (Service Unavailable), and 504 (Gateway Timeout)

What is the difference between a GET request and a POST request? When might each be used?
- GET is used to retrieve remote data, and POST is used to insert/update remote data.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
- A cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing
- When receiving an HTTP request, a server can send a Set-Cookie header with the response. The cookie is usually stored by the browser, and then the cookie is sent with requests made to the same server inside a Cookie HTTP header.

