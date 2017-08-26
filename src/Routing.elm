module Routing exposing (Route(..), toRoute, onLinkClick)

import Html exposing (Attribute)
import Html.Events exposing (onWithOptions)
import Json.Decode as Decode
import Navigation exposing (Location)
import UrlParser
    exposing
        ( parsePath
        , Parser
        , string
        , s
        , (</>)
        , map
        , top
        , oneOf
        )


type Route
    = LoginRoute
    | HomeRoute


onLinkClick : msg -> Attribute msg
onLinkClick message =
    let
        options =
            { stopPropagation = False
            , preventDefault = True
            }
    in
        onWithOptions "click" options (Decode.succeed message)


toRoute : Location -> Route
toRoute location =
    case parsePath matchers location of
        Just route ->
            route

        Nothing ->
            LoginRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeRoute top
        , map LoginRoute (s "login")
        ]
