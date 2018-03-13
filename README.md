# FCC

This project is developed for and in collaboration with Unloop and uses [freeCodeCamp](https://github.com/freeCodeCamp/freeCodeCamp)'s open source codebase and curriculum.

The project is split in two repositories. This repository is the front-end repository. You can find the back-end repository [here](https://github.com/Retropiaf/FCCFront-end).


# Project Setup

To run this project from your terminal:
1. Clone both repositories
2. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
3. Inside this repository (FCC-Frontend) on your computer, run `$npm install`
4. Start the back-end server from the back-end repository (FCC) in you terminal by running `$rails s`
5. Start the front-end server from the back-end repository (FCCFront-end) in you terminal by running `$npm start`

Back-end server adress: http://localhost:3000/
Front-end server adress: http://localhost:4200/

# Back-end
The back-end is written in Ruby.

## Endpoints:
- `GET /challenges`  
List all challenges
- `GET /challenges` with param `chapter_id`
List all challenges in a chapter
- `GET /challenges/:id`  
Returns a specific challenge
- `GET /chapters`  
List all chapters
- `GET /chapters/:id`  
Returns a specific chapters

# Features & ToDos:
- Prossibly rethink the data transformation 
- Develop or scratch the update functionality
