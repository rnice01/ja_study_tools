module Main exposing (..)

import Browser
import Html exposing (Html, a, br, button, div, footer, h1, h2, h3, hr, img, li, nav, p, section, span, text, ul)
import Html.Attributes exposing (class, src, style)
import Views.Nav exposing (navigation)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }


squareTileButton label_ class_ =
    button
        [ class <| "bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded " ++ class_
        ]
        [ text label_ ]


popupChoice =
    div [ class "relative border-4 border-blue-400 h-12 w-12" ]
        [ div [ class "absolute top-0 flex", style "top" "-55px", style "left" "-25px" ]
            [ squareTileButton "を" "mr-2"
            , squareTileButton "が" ""
            ]
        ]


quiz =
    div [ class "flex flex-wrap justify-center" ]
        [ img [ class "", src "https://www.saysinter.com/reform/column/wp-content/uploads/2016/02/No019_img02.png" ] []
        , div [ class "w-full flex justify-center mt-20" ]
            [ span [] [ text "ドア" ]
            , popupChoice
            , span [] [ text "" ]
            ]
        ]



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ navigation
        , div [ class "mt-5 mb-5 container mx-auto" ]
            [ quiz
            ]
        ]
