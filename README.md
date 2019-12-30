# Phone Number Allocator

This application displays the list of all allocated phone numbers and allocates a requested phone number by checking wheather or not it is present in the database; if present, it'll allocated a randomly generated phone number which is not present in the database; if no special number is requested then it'll allocated a randomly generated phone number which will not be present in the database .

API endpoints:

* GET /phones (lists all allocated phone numbers)

* POST /phones (allocates a randomly generated phone number which won't be present in the database)

* POST /phones/no (allocates the requested number "no"; if the number is already allocated then allocates a randomly generated phone number)
