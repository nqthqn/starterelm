port module Ports exposing (..)

import Json.Encode


type alias Key =
    String


type alias Value =
    Json.Encode.Value


port set : ( Key, Value ) -> Cmd msg


port remove : Key -> Cmd msg


port clear : () -> Cmd msg
