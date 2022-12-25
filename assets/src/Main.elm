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
    let
        classes =
            [ "bg-blue-500 hover:bg-blue-600"
            , "text-white font-bold text-4xl"
            , "border-b-4 border-blue-700 hover:border-blue-500 rounded "
            , "py-2 px-4"
            , "transition ease-in-out delay-150 bg-blue-500 hover:-translate-y-1 hover:scale-110"
            , class_
            ]
                |> String.join " "
    in
    button
        [ class classes ]
        [ text label_ ]



{-
   Quiz Type
   Fill in the blank with image

   User needs to select or link an image

   Have user construct sentence using 2 different tiles:
     -Text tile, they select this and enter static text
     - Multi Choice tile, they select this and add choices

   Sentence and blanks are constructed in the order the users clicks and fills in the tiles

   ex: Text Tile -> enters text, Multi Choice Tile -> Adds two optons, Multi Choice Tile -> enters text and two options

           Text Tile   Multi Choice    Multi Choice with text
   output: 彼女はドア　    「を、が」           開 [ける, かる]


   type SentenceTile =
       TextTile String
       MultiChoiceTile String List(String)

   type alias FillInTheBlank = {
     image : String
     , sentence : List(SentenceTile)
   }
-}


popupChoice =
    div [ class "relative border-4 border-blue-400 h-12 w-12" ]
        [ div [ class "absolute top-0 flex", style "top" "-67px", style "left" "-51px" ]
            [ squareTileButton "を" "mr-2"
            , squareTileButton "が" ""
            ]
        ]


quiz =
    div [ class "flex flex-wrap justify-center" ]
        [ img [ class "", src "https://www.saysinter.com/reform/column/wp-content/uploads/2016/02/No019_img02.png" ] []
        , div [ class "w-full flex justify-center mt-20 text-2xl items-center" ]
            [ text "ドア"
            , popupChoice
            , text ""
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
