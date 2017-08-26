module Update exposing (update)

import Messages exposing (Msg(..))
import Model exposing (Model)
import Navigation
import Routing


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )
