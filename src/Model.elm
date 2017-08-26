module Model exposing (Model, initModel, Flags)

import Routing exposing (Route(..))


type alias Model =
    { route : Route
    }


type alias Flags =
    { token : String }


initModel : Flags -> Model
initModel flags =
    { route = LoginRoute
    }
