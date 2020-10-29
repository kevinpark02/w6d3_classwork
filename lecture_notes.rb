# I. MVC Overview
    # model - ruby code interfaced with database
    # controller - takes in a request, and it utilizes a model and view to put together some sort of response to send it back to the client
# HTTP Request - Response Cycle
    # Client -> Request -> Web Server
    # Client <- Response <- Web Server
    # We will be building a web server
# HTTP
    # Component
        # Method (get, post) -> describes what action to perform
        # Path (/users) -> a string that specifices the resource being requested
        # Query String (?loc=new+york - optional) -> may further specify the resource requested ---- key value pairs
        # Body (username=janedoe - optional) -> additional data from the client---- key value pairs

    # Anatomy a URL
        # The path and query string are part of the URL
        # https: Protocol
        # online-stopwatch: Domain
        # /dino-race: Path

    # HTTP Methods
        # GET (get something from the DB)
        # POST (insert something into the DB)
        # PATCH/PUT (change something in the DB)
        # DELETE (remove something from the DB)

    # HTTP Response
        # 200, 302, 404
        # indicates the type of response (successful or not)
        # common response codes

        # body
        # actual HTMl document, or data formated as JSON
        # thea ctual data/content the server responded with

        # HTTP is Stateless
            # nothing is persisted in an HTTP response
            # no data from one request-response cycle carries overe to the next cycle

# Router
    # Takes in HTTP Requests, decides where to send them
    # The router instantiates an instance of a controller and invokes an action on that controller

# REST: Representational State Transfer
    # Standardized way to interpret an http request and extrapolate the desired response from the server
    # A convention that maps HTTP verbs onto CRUD actions
        # POST -> Create (insert record into DB)
        # GET -> Read (retriever record from DB)
        # PATCH/PUT -> Update (update record in DB)
        # DELETE -> Destroy (remove record from DB)

    # A RESTful API defines a predictable way for us to access and manipulate resources in our application

    # HTTP VERB     PATH                ACTION              USED FOR

    # GET           /photos             index               display a list of all photos
    # GET           /photos/new         new                 return an HTML form for creating a new photo
    # POST          /photos             create              upload and create a new photo
    # GET           /photos/:id         show                display a specific photo
    # GET           /photos/:id/edit    edit                return an HTML dform for editing a photo
    # PATCH or PUT  /photos/:id         update              update a specific photo
    # DELETE        /photos/:id         destroy             delete a specific photo

    # Setting up Routes
        resources :users

        resources :users, only: [:create, :destroy]
        resources :users, excep: [:create, :destroy]

        get '/users', to: 'users#index'

    # Example Requests to RESTful API
        # GET /users query all users (index)
        # GET /users/1 query for user with ID 1 (show)
        # POST /users create a new user (create)
        # PATCh /users/1 update user with ID1
        # DELETE /users/1 delete user with ID1


