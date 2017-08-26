module Main exposing (main)

import Messages exposing (Msg(..))
import Model exposing (Model, Flags, initModel)
import Navigation exposing (Location)
import Ports
import Time exposing (every, second)
import Update exposing (update)
import View exposing (view)


main : Program Flags Model Msg
main =
    Navigation.programWithFlags OnUpdateLocation
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Flags -> Location -> ( Model, Cmd Msg )
init flags location =
    ( initModel flags
    , Cmd.batch
        [ Navigation.newUrl location.pathname
        ]
    )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
