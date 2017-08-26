module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Routing exposing (Route(..))
import Ui.HomePage
import Ui.LoginPage


view : Model -> Html Msg
view model =
    case model.route of
        LoginRoute ->
            box "login"

        HomeRoute ->
            box "home"


box : String -> Html Msg
box txt =
    div [ class "container" ] [ div [ class "box" ] [ h1 [ class "title is-1" ] [ text txt ] ] ]
