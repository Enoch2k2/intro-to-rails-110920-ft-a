# Intro To Rails

### Different Generators

- migration - generates migration files
- model - generates model and migration for that model
- controller - creates only a controller
- resource - generates model, migration, and controllers. Also adds routes.
- scaffold (DONT USE) - generates everything

### Rails Flow

- request -> routes -> controller # action -> folder # template

### Helpers

- route helpers

  - movies_path # movies index route `/movies`
  - movie_path(id) # movies show route `/movies/:id`
  - new_movie_path # new movie route `/movies/new`
  - edit_movie_path # edit movie route `/movies/:id/edit`

- form helpers

  - form_for - creates a form based off a model
    - f.label - creates a label based off an attributes of the model using the form_builder `|f|`
    - f.text_field - creates a text field for the form based off an attributes of hte model using the form_builder `|f|`
    - f.password_field - creates a password field
    - f.email_field - creates an email field
    - f.date_field - creates a date field

- before_action

  - Used in controllers in order to call methods before going into a controller action. Used to dry up our code.

- sanatizing data with strong params
  - Used while creating the object to require and permit only certain params to be permitted with the creation of data.

```
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :genre, :release_date)
    end
```
