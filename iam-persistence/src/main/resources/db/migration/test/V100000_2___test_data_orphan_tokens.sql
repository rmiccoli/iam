INSERT INTO AUTHENTICATION_HOLDER (ID, USER_AUTH_ID, APPROVED, REDIRECT_URI, CLIENT_ID) VALUES
(1, 1, TRUE, NULL, 'token-exchange-subject');

INSERT INTO SAVED_USER_AUTH_AUTHORITY (OWNER_ID, AUTHORITY) VALUES
(1, 'ROLE_USER');

INSERT INTO AUTHENTICATION_HOLDER_SCOPE (OWNER_ID, SCOPE) VALUES
(1, 'openid'),
(1, 'offline_access'),
(1, 'profile');

INSERT INTO AUTHENTICATION_HOLDER_EXTENSION (OWNER_ID, EXTENSION, VAL) VALUES
(1, 'AUTH_TIMESTAMP', TIMESTAMPADD('DAY', 1, CURRENT_TIMESTAMP()));

INSERT INTO AUTHENTICATION_HOLDER_REQUEST_PARAMETER (OWNER_ID, PARAM, VAL) VALUES
(1, 'scope', 'openid profile offline_access'),
(1, 'grant_type', 'password'),
(1, 'username', 'vianello');

INSERT INTO SAVED_USER_AUTH (ID, NAME, AUTHENTICATED, SOURCE_CLASS) VALUES
(1, 'vianello', TRUE, 'org.springframework.security.authentication.UsernamePasswordAuthenticationToken');

INSERT INTO ACCESS_TOKEN (ID, TOKEN_VALUE, EXPIRATION, TOKEN_TYPE, REFRESH_TOKEN_ID, CLIENT_ID, AUTH_HOLDER_ID, ID_TOKEN_ID, APPROVED_SITE_ID) VALUES
(1, 'eyJraWQiOiJyc2ExIiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiI4MGU1ZmI4ZC1iN2M4LTQ1MWEtODliYS0zNDZhZTI3OGE2NmYiLCJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODA4MFwvIiwiZXhwIjoxNTQyODEwNzYwLCJpYXQiOjE1NDI4MDcxNjAsImp0aSI6ImEyNTJjMmE5LWFhZTEtNDNmZi04ZjNlLTAwY2JkODU0MTUwYSJ9.hm5GhHd1FOeeUkndGFKL8r8rNcpcmS_XFDyB6a4LFUO9uLqhC08-d1qDkpesg6MKTeTBuygA4ihX6khc8PGdfZRAtfQiYQJNqGJ72nOKZ-MNKBNqn0ztVEXvu9QTeGMKSyhFSOc2sScclZtCwUCIQfFXJsa_XjzpRdE_DuYOP0w', TIMESTAMPADD('DAY', 1, CURRENT_TIMESTAMP()), 'Bearer', 1, 9, 1, NULL, NULL);

INSERT INTO REFRESH_TOKEN (ID, TOKEN_VALUE, EXPIRATION, AUTH_HOLDER_ID, CLIENT_ID) VALUES
(1, 'eyJhbGciOiJub25lIn0.eyJqdGkiOiIwNDE4YWNkMi1hNWY3LTQ3YWItYTljZS1mZDVlZWYzNjI0MjcifQ.', NULL, 1, 9);